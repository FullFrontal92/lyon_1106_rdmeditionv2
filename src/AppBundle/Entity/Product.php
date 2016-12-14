<?php

namespace AppBundle\Entity;

use Sylius\Component\Core\Model\Product as BaseProduct;

class Product extends BaseProduct
{
    private $author;

    private $promo;

    private $preorder;

    private $new;

    private $releaseDate;
}