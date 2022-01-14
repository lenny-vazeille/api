<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\WineRed;
use App\Entity\WineWhite;
use App\Entity\WineRose;

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
        $winered = $this->getDoctrine()->getRepository(WineRed::class)->findBy([], ['id' => 'desc']);
        return $this->render('wine_red/index.html.twig', [
            'controller_name' => 'HomePageController',
            'wine_red' => $winered,
        ]);
    }
    
    /**
     * @Route("/wine_rose", name="wine_rose")
     */
    public function wine_rose(): Response
    {
        $winerose = $this->getDoctrine()->getRepository(WineRose::class)->findBy([], ['id' => 'desc']);
        return $this->render('wine_rose/index.html.twig', [
            'controller_name' => 'HomePageController',
            'wine_rose' => $winerose,
        
        ]);
    }
     
     /**
     * @Route("/wine_white", name="wine_white")
     */
    public function wine_white(): Response
    {
        $winewhite = $this->getDoctrine()->getRepository(WineWhite::class)->findBy([], ['id' => 'desc']);
        return $this->render('wine_white/index.html.twig', [
            'controller_name' => 'HomePageController',
            'wine_white' => $winewhite,
        ]);
    }
    
     /**
     * @Route("/collection_wine", name="collection_wine")
     */
    public function collection_wine(): Response
    {
        return $this->render('home_page/collection_wine.html.twig', [
            'controller_name' => 'HomePageController',
        ]);
    }

}