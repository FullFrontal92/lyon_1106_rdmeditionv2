<?php

/*
 * This file is part of the Sylius package.
 *
 * (c) Paweł Jędrzejewski
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

use Sylius\Bundle\CoreBundle\Application\Kernel;
/**
 * @author Paweł Jędrzejewski <pawel@sylius.org>
 * @author Gonzalo Vilaseca <gvilaseca@reiss.co.uk>
 */
class AppKernel extends Kernel
{
    /**
     * {@inheritdoc}
     */
    public function registerBundles()
    {
        $bundles = [
            new \AppBundle\AppBundle(),
            new \Sylius\Bundle\AdminBundle\SyliusAdminBundle(),
            new \Sylius\Bundle\ApiBundle\SyliusApiBundle(),
            new \Sylius\Bundle\ShopBundle\SyliusShopBundle(),
            new Sensio\Bundle\GeneratorBundle\SensioGeneratorBundle(),
            new \FOS\OAuthServerBundle\FOSOAuthServerBundle(),
            new EWZ\Bundle\RecaptchaBundle\EWZRecaptchaBundle(),
            new Knp\Bundle\SnappyBundle\KnpSnappyBundle(),
        ];

        return array_merge(parent::registerBundles(), $bundles);
    }
}
