<?php

namespace AppBundle\Listener;

use AppBundle\Entity\Order;
use Doctrine\Common\Persistence\Event\LifecycleEventArgs;
use Symfony\Component\DependencyInjection\ContainerInterface;

class MailConfirmationOrder
{

    private $mailer;
    private $container;
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
        if($entity->getShippingState() != "ready"){
            return;
        }
       $generatedPdfFilename = $this->container->get('kernel')->getRootDir() . '/Resources/SyliusShopBundle/views/Facture.pdf';
        // delete the pdf is one already exist
       if(file_exists($generatedPdfFilename)){
            unlink($generatedPdfFilename);
       }
        $this->knp->generateFromHtml(
            $this->templating->render(
                'SyliusShopBundle:Checkout:pdf.html.twig',
                array('order' => $entity,
                    'product'  => $entity->getItems(),
                    'client'  => $entity->getUser(),
                    'total' => $entity->getPayments()
                )
            ),
            $generatedPdfFilename
        );

      $test =  $this->templating->render('SyliusShopBundle:Checkout:pdf.html.twig',
            array(
                'order' => $entity,
                'product'  => $entity->getItems(),
                'client'  => $entity->getUser(),
                'total' => $entity->getPayments()
            )
        );
        die($test);
    }
}