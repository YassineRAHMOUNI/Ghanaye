<?php

namespace App\Controller\Api;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Orders;
class OrderController extends AbstractController
{
    /**
     * @Route("/api/order/add",name="api_add_order")
     */
    public function addOrder(Request $request)
    {
        $amount       =   $request->query->get('amount');
        $userid       =   $request->query->get('userid');
        $address      =   $request->query->get('adress');
        $city      =   $request->query->get('city');
        $phone      =   $request->query->get('phone');
        
        $order = new Orders();
        $order->setAmount($amount)
              ->setUserId($userid)  
              ->setAdress($adress)  
              ->setCity($city)  
              ->setStatus('New');  
        return $this->json(['orders']);
    }
}