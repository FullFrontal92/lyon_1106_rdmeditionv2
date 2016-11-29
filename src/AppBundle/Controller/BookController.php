<?php
namespace AppBundle\Controller;


use Sylius\Bundle\ResourceBundle\Controller\ResourceController as BaseProductController;

class BookController extends BaseProductController
{

    public function booksAction()
    {
        return $this->render('SyliusShopBundle:Homepage:books.html.twig');
    }
}
