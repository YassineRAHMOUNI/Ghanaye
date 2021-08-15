<?php

namespace App\Form\Admin;

use App\Entity\Admin\Product;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ProductType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title')
            ->add('keywords')
            ->add('description')
            ->add('type')
            ->add('publisher_id')
            ->add('year')
            ->add('amount')
            ->add('pprice')
            ->add('sprice')
            ->add('minamout')
            ->add('detail')
            ->add('image')
            ->add('category_id')
            ->add('user_id')
            ->add('status')
            ->add('brand')
            ->add('region_id')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Product::class,
            'csrf_protection' => false,
        ]);
    }
}
