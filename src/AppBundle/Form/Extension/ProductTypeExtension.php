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

            // do not render as type="date", to avoid HTML5 date pickers
            'html5' => false,

            // add a class that can be selected in JavaScript
            'attr' => ['class' => 'js-datepicker'],
            'label' => 'Date de parution',
        ]);

        $builder->add('preOrder', CheckboxType::class, [
            'required' => false,
            'label' => 'Pré-vente',
        ]);

        $builder->add('new', CheckboxType::class, [
            'required' => false,
            'label' => 'Nouveau',
        ]);

        $builder->add('promo', CheckboxType::class, [
            'required' => false,
            'label' => 'Promo',
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