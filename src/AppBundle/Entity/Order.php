<?php

namespace AppBundle\Entity;

use Sylius\Component\Core\Model\Order as BaseOrder;

class Order extends BaseOrder
{
    public function sendEmailConfirmationOrder()
    {
        $generatedPdfFilename = $this->get('kernel')->getRootDir() . '/Resources/SyliusShopBundle/views/Facture5.pdf';
        if(isset($generatedPdfFilename)){
            unlink($generatedPdfFilename);
        }
        $this->get('knp_snappy.pdf')->generateFromHtml(
            $this->renderView(
                'SyliusCoreBundle:Email:pdf.html.twig',
                array(
                    'product'  => $this->getItems(),
                    'client'  => $this->getUser(),
                    'total' => $this->getPayments()
                )
            ),
            $generatedPdfFilename
                     );
    }
}