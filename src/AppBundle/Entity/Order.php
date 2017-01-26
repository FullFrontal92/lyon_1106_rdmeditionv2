<?php

namespace AppBundle\Entity;

use Sylius\Component\Core\Model\Order as BaseOrder;

class Order extends BaseOrder
{


    /**
     * @var boolean
     */
    private $emailsend;

    /**
     * @var string
     */
    private $condition;


    /**
     * Set emailsend
     *
     * @param boolean $emailsend
     * @return Order
     */
    public function setEmailsend($emailsend)
    {
        $this->emailsend = $emailsend;

        return $this;
    }

    /**
     * Get emailsend
     *
     * @return boolean 
     */
    public function getEmailsend()
    {
        return $this->emailsend;
    }

    /**
     * Set condition
     *
     * @param string $condition
     * @return Order
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
