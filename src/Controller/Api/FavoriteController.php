<?php

namespace App\Controller\Api;


use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Favorite;
class FavoriteController extends AbstractController
{
    
    /**
     * @Route("/api/favorite/add", name="api_product_favorite")
     */
    public function ProductFavorite(): Response
    {

        $response = new Response();
 

        $userId=$request->query->get('userId');
        $productId=$request->query->get('productId');


        $entityManager = $this->getDoctrine()->getManager();

        $favorite = new Favorite();
        $favorite->setUserid($userId);
        $favorite->setProductid($productId);

        $entityManager->persist($favorite);

        $entityManager->flush();

        $response->setStatusCode(200);
        return $this->json([
            'message' => 'Product successfully added to favorite',
            'userId' => $favorite->getUserId(),
            'productId' => $favorite->getProductId(),
        ]);
        
    }

}
