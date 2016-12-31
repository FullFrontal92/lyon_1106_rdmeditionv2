<?php

namespace AppBundle\Entity;

use AppBundle\AppBundle;
use Doctrine\ORM\Event\LifecycleEventArgs;
use Symfony\Component\HttpFoundation\Response;
use Guzzle\Http\Message\Request;
use  Sylius\Component\Core\Model\Product as BaseProduct;


class Product extends BaseProduct
{

    /*
     * PrePersist and PreUpdate
     */
    protected $data = [];

    public function setCreatedAtValue(LifecycleEventArgs $args)
    {

        $this->createdAt = new \DateTime();

        if ($this->getPreorder() == true) {
            $em = $args->getObjectManager()->getRepository(Product::class)->findAll();

            foreach ($em as $book) {
                if ($book->getPreorder() == true) {
                    $book->setPreorder(false);
                    $this->data[] = $book;
                }
            }

        }

    }


    public function setUpdatedAtValue(LifecycleEventArgs $args)
    {
        $id = $this->getId();
        $this->updatedAt = new \DateTime();
        if ($this->getPreorder() == true) {
            $em = $args->getObjectManager()->getRepository(Product::class)->findAll();

            foreach ($em as $book) {
                if ($book->getPreorder() == true && $book->getId() != $id) {
                    $book->setPreorder(false);
                    $this->data[] = $book;
                }
            }

        }
    }
    public function postFlush(LifecycleEventArgs $args)
    {
        if(!empty($this->data)) {

            $em = $args->getEntityManager();
            var_dump($this->data);
            foreach ($this->data as $book) {
                $em->persist($book);
            }

            $this->data = [];
            $em->flush();
        }

    }



    /*
        Fields added on Product model
     */
    private $author;

    private $preorder;

    private $new;

    private $promo;

    private $releaseDate;
    /**
     * @return mixed
     */
    public function getAuthor()
    {
        return $this->author;
    }

    /**
     * @param mixed $author
     */
    public function setAuthor($author)
    {
        $this->author = $author;
    }


    /**
     * @return mixed
     */
    public function getPromo()
    {
        return $this->promo;
    }

    /**
     * @param mixed $promo
     */
    public function setPromo($promo)
    {
        $this->promo = $promo;
    }

    /**
     * @return mixed
     */
    public function getPreorder()
    {
        return $this->preorder;
    }

    /**
     * @param mixed $preorder
     */
    public function setPreorder($preorder)
    {
        $this->preorder = $preorder;
    }

    /**
     * @return mixed
     */
    public function getNew()
    {
        return $this->new;
    }

    /**
     * @param mixed $new
     */
    public function setNew($new)
    {
        $this->new = $new;
    }

    /**
     * @return mixed
     */
    public function getReleaseDate()
    {
        return $this->releaseDate;
    }

    /**
     * @param mixed $releaseDate
     */
    public function setReleaseDate($releaseDate)
    {
        $this->releaseDate = $releaseDate;
    }


    /**
     * @var string
     */
    private $condition;


    /**
     * Set condition
     *
     * @param string $condition
     * @return Product
     */
    public function setCondition($condition)
    {
        $this->condition = $condition;

        return $this;
    }

    /**
     * Get condition
     *
     * @return string 
     */
    public function getCondition()
    {
        return $this->condition;
    }
}
