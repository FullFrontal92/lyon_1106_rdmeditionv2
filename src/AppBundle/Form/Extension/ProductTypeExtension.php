<?php

namespace AppBundle\Form\Extension;


use Sylius\Bundle\CoreBundle\Form\Type\Product\ProductType;
use Symfony\Component\Form\AbstractTypeExtension;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\FormBuilderInterface;

final class ProductTypeExtension extends AbstractTypeExtension
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('author', TextType::class, [
            'required' => true,
            'label' => 'Autheur',
        ]);
        $builder->add('releaseDate', DateType::class, [
            'widget' => 'single_text',
            'html5' => false,
            'label' => 'Date de parution',
            'format' => 'dd/MM/yyyy'
        ]);

        $builder->add('preOrder', CheckboxType::class, [
            'required' => false,
            'label' => 'Pré-commande',
        ]);

        $builder->add('new', CheckboxType::class, [
            'required' => false,
            'label' => 'Nouveauté',
        ]);

        $builder->add('promo', CheckboxType::class, [
            'required' => false,
            'label' => 'Promotion',
        ]);

        $builder->add('facebook', TextType::class, [
            'required' => false,
            'label' => 'Lien Facebook',
        ]);

        $builder->add('event', TextType::class, [
            'required' => false,
            'label' => 'Evenement',
        ]);

    }

    /**
     * {@inheritdoc}
     */
    public function getExtendedType()
    {
        return ProductType::class;
    }
}