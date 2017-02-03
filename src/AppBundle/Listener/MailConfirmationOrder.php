<?php

namespace AppBundle\Listener;

use AppBundle\Entity\Order;
use Doctrine\Common\Persistence\Event\LifecycleEventArgs;
use Symfony\Component\DependencyInjection\ContainerInterface;

class MailConfirmationOrder
{

    private $mailer;
    protected $container;
    private $knp;
    private $templating;

    public function __construct(ContainerInterface $container)
    {
        $this->container = $container;
        $this->mailer = $container->get('mailer');
        $this->templating = $container->get('templating');
        $this->knp = $container->get('knp_snappy.pdf');
    }

    public function preUpdate(LifecycleEventArgs $args)
    {

        $entity = $args->getObject();
        if (!$entity instanceof Order) {
            return;
        }
        if ($entity->getEmailsend() == 1 or $entity->getShippingState() != "ready") {
            return;
        }
        $generatedPdfFilename = $this->container->get('kernel')->getRootDir(). "/Resources/SyliusShopBundle/views/Facture.pdf";
        // delete the pdf is one already exist
        if(file_exists($generatedPdfFilename)){
            unlink($generatedPdfFilename);
        }
        $path = $this->container->get('kernel')->getRootDir();
        $path = explode("/", $path);
        array_pop($path);
        $path = implode("/", $path);
        $this->knp->generateFromHtml(
            $this->templating->render(
                'SyliusShopBundle:Checkout:pdf.html.twig',[
                    'order' => $entity,
                    'absolutePath' => $path
                ]
            ),
            $generatedPdfFilename
        );

        $mailFrom = $this->container->getParameter("mailer_user");
        $mailTo = $entity->getCustomer()->getEmailCanonical();
        $message = \Swift_Message::newInstance();
        $message
            ->setSubject('RDM e-ditions : Confirmation commande')
            ->setFrom($mailFrom)
            ->setTo($mailTo)
            ->setBody(
            $this->templating->render(
                'SyliusCoreBundle:Email:orderConfirmation.html.twig',[
                    'order' => $entity,
                ]
            ),
                'text/html'
            )
            ->attach(\Swift_Attachment::fromPath($generatedPdfFilename));
        $this->mailer->send($message);

        $entity->setEmailsend(true);
    }
}