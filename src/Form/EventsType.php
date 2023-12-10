<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', null, [
                'attr' => ['class' => 'form-control', 'placeholder'=>'Enter event name'], //bootstrap form-control class
            ])
            ->add('date', null,[
                'attr' => ['class' => 'form-control'],
                "widget" => "single_text"          
            ])
            ->add('description', null, [
                'attr' => ['class' => 'form-control', 'placeholder'=>'Enter event description'], 
            ])
            ->add('picture', null, [
                'label' => 'Event image',
                'attr' => ['class' => 'form-control', 'placeholder'=>'Enter image url']
                ])
            ->add('capacity', null, [
                'attr' => ['class' => 'form-control', 'placeholder'=>'Enter capacity'], 
            ])
            ->add('mail', null, [
                'attr' => ['class' => 'form-control', 'placeholder'=>'Enter Email'], 
            ])
            ->add('phone_number', null, [
                'attr' => ['class' => 'form-control', 'placeholder'=>'Enter phone number'], 
            ])
            ->add('address', null, [
                'attr' => ['class' => 'form-control', 'placeholder'=>'Enter event address'], 
            ])
            ->add('url', null, [
                'attr' => ['class' => 'form-control', 'placeholder'=>'Enter event url'], 
            ])
            ->add('type', ChoiceType::class, [ //because we have predefined choices we use choiceType from documentation
                'attr' => ['class' => 'form-control'],
                'label' => 'Event type',
                'choices' => [
                    'Music' => 'Music',
                    'Theater' => 'Theater',
                    'Sports' => 'Sports',
                    'Movies' => 'Movies',
                    'Other' => 'Other',

                ],
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
