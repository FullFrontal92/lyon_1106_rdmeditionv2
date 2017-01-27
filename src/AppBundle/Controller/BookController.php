<?php
namespace AppBundle\Controller;


use Sylius\Bundle\ResourceBundle\Controller\ResourceController as BaseProductController;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use AppBundle\Entity\Formulaire;
use EWZ\Bundle\RecaptchaBundle\Form\Type\EWZRecaptchaType;
use EWZ\Bundle\RecaptchaBundle\Validator\Constraints\IsTrue as RecaptchaTrue;
use Knp\Snappy\Pdf;

class BookController extends BaseProductController
{

    public function books()
    {
        return $this->render('SyliusShopBundle:Homepage:books.html.twig');
    }

    public function generalConditions()
    {
        $this->get('knp_snappy.pdf')->generateFromHtml(
            $this->renderView(
                'SyliusShopBundle:Cart:summary.html.twig'),
            'web/img/test.pdf'

            );

        return $this->render('SyliusShopBundle:Homepage:generalConditions.html.twig');
    }

    public function aboutUs(Request $request)
    {
        $formulaire = new Formulaire();
        $form = $this->createFormBuilder($formulaire)
            ->add('fMail', EmailType::class)
            ->add('fFirstname', TextType::class)
            ->add('fLastname', TextType::class)
            ->add('fMessage', TextareaType::class)
            ->add('recaptcha', EWZRecaptchaType::class, array(
                    'language' => 'fr',
                    'mapped' => false,
                    'constraints' => array(
                        new RecaptchaTrue()
                    )
                )
            )
            ->add('submit', SubmitType::class, array('label' => 'Envoyer'))
            ->getForm();

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $mailer = $this->container->get('mailer');
            $message = \Swift_Message::newInstance()
                ->setSubject('Notification de Formulaire de Contact')
                ->setFrom('rdmproject.test@gmail.com')
                ->setTo('rdmproject.test@gmail.com')
                ->setBody(
                    '<html>' .
                    '<head></head>' .
                    '<body>' .
                    '<h2>RDM Edition Contact :</h2>' .
                    '<p><strong>' . $formulaire->getFFirstname() . ' ' . $formulaire->getFLastname() .
                    '</strong> vous a envoyé ce message :<br /><br />' . $formulaire->getFMessage() .
                    '<br /><br /><br />' .
                    'Adresse Email du contact : ' . $formulaire->getFMail() .
                    '</p>' .
                    '</body>' .
                    '</html>',
                    'text/html');

            $mailer->send($message);
            return $this->redirectToRoute('sylius_shop_aboutUs');
        }

        return $this->render('SyliusShopBundle:Homepage:aboutUs.html.twig', array(
            'form' => $form->createView(),
        ));

    }


}
