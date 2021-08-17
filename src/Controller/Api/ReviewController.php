<?php

namespace App\Controller\Api;
use App\Entity\Review;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/api/review")
 */
class ReviewController extends AbstractController
{
     /**
     * @Route("/new", name="api_review_new")
     */
    public function add(Request $request): Response
    {
        $review = new Review();

        $userId=$request->query->get('user_id');
        $productId=$request->query->get('product_id');
        $r=$request->query->get('review');

        $em = $this->getDoctrine()->getManager();

        $review->setUserId($userId);
        $review->setProductId($productId);
        $review->setReview($r);

        $em->persist($review);
        $em->flush();
        
        $this->addFlash('add','');

        return $this->json([ 
            'review'=>$review
        ]);
    }
}
