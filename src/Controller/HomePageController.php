<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomePageController extends AbstractController
{
    /**
     * @Route("/", name="home_page")
     */
    public function home(): Response
    {
        return $this->render('base.html.twig', [
            'controller_name' => 'HomePageController',
        ]);
    }

     /**
     * @Route("/wine_red", name="wine_red")
     */
    public function wine_red(): Response
    {
        return $this->render('wine_red/index.html.twig', [
            'controller_name' => 'HomePageController',
        ]);
    }

     /**
     * @Route("/wine_rose", name="wine_rose")
     */
    public function wine_rose(): Response
    {
        return $this->render('wine_rose/index.html.twig', [
            'controller_name' => 'HomePageController',
        ]);
    }

     /**
     * @Route("/wine_white", name="wine_white")
     */
    public function wine_white(): Response
    {
        return $this->render('wine_white/index.html.twig', [
            'controller_name' => 'HomePageController',
        ]);
    }

     /**
     * @Route("/collection_wine", name="collection_wine")
     */
    public function collection_wine(): Response
    {
        return $this->render('collection_wine/index.html.twig', [
            'controller_name' => 'HomePageController',
        ]);
    }

}