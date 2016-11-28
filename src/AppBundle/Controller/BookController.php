<?php
namespace AppBundle\Controller;

use FOS\RestBundle\View\View;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Sylius\Bundle\ResourceBundle\Controller\ResourceController as BaseProductController;
use Sylius\Component\Resource\ResourceActions;
use Sylius\Bundle\ProductBundle\Doctrine\ORM\ProductRepository;


class BookController extends BaseProductController
{

    public function booksAction()
    {
        return $this->render('SyliusShopBundle:Homepage:books.html.twig');
    }
}
