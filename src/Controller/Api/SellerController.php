<?php

namespace App\Controller\Api;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Admin\Product;
class SellerController extends AbstractController
{
    /**
     * @Route("/vendor/addProduct/", name="seller")
     */
    public function index(Request $request): Response
    {
        $title=$request->query->get('title');
        $keywords=$request->query->get('keywords');
        $description=$request->query->get('description');
        $type=$request->query->get('type');
        $publisher_id=0;
        $year=$request->query->get('year');
        $amount=$request->query->get('amount');
        $pprice=$request->query->get('pprice');
        $sprice=$request->query->get('sprice');
        $minamout=$request->query->get('minamout');
        $detail=$request->query->get('detail');
        $user_id=$request->query->get('user_id');
        $status=$request->query->get('status');
        $category=$request->query->get('category');
        $brand=$request->query->get('brand');
        $region_id=$request->query->get('region_id');

        $product=new Product();

        $image = $request->files->get('image');
        if($request->files->get('image')) {
            $imageName = uniqid().'.'.$image->guessExtension();
            $image = $request->files->get('image');
            $image->move('uploads/images', $imageName);
            $product->setImage($imageName);
        }
        $product->setTitle($title)
                ->setKeywords($keywords)
                ->setDescription($description)
                ->setType($type)
                ->setPublisherId($publisher_id)
                ->setYear($year)
                ->setAmount($amount)
                ->setpPrice($pprice)
                ->setsPrice($sprice)
                ->setMinamout($minamout)
                ->setDetail($detail)
                ->setUserId($user_id)
                ->setStatus($status)
                ->setCreateAt(new \DateTime())
                ->setUpdateAt(new \DateTime())
                ->setCategoryId($category)
                ->setBrand($brand);
         $em = $this->getDoctrine()->getManager();       
         $em->persist($product);
         $em->flush(); 
        return $this->json([ 
            'product'=>$product
        ]);
    }
}
