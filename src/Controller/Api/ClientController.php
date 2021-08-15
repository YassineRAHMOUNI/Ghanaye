<?php

namespace App\Controller\Api;

use App\Entity\Admin\ImageSetting;
use App\Repository\Admin\ProductRepository;
use App\Repository\Admin\SettingRepository;
use App\Repository\Admin\ImageRepository;
use App\Repository\Admin\ImageSettingRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\Admin\CategoriesRepository;
use App\Entity\Admin\Product;
use App\Entity\Admin\Messages;
class ClientController extends AbstractController
{
    
    /**
     * @Route("/api/product/detail/{id}", name="api_product_detail")
     */
    public function ProductDetail(ProductRepository $productRepository, ImageRepository $imageRepository,$id)
    {
        $data = $productRepository->findBy(['id' => $id]);
        $images = $imageRepository->findBy(['product_id' => $id]); 

        return $this->json([
            'data' => $data, 
            'images' => $images,
        ]);
    }
    /**
     * @Route("/api/product/all", name="api_products")
     */
    public function Products(ProductRepository $productRepository, ImageRepository $imageRepository)
    {
        $data = $productRepository->findAll();
        $images = $imageRepository->findAll(); 

        return $this->json([
            'data' => $data, 
            'images' => $images,
        ]);
    }
    /**
     * @Route("/api/category/all",name="api_category")
     */
    public function Category(CategoriesRepository $categoriesRepository)
    {
        $data=$categoriesRepository->findAll();
        return $this->json(['data'=>$data]);
    }
    /**
     * @Route("/api/product/category/{id}",name="api_products_category")
     */
    public function productsCategory(Request $request, ProductRepository $productRepository, ImageRepository $imageRepository,CategoriesRepository $categoryRepository,$id)
    {
        $category=$categoryRepository->findBy(['id'=>$id]);
        $products=$productRepository->findBy(['category_id'=>$id]);
        $images=array();
        foreach($products as $product)
        {
            array_push($images,$imageRepository->findBy(['product_id'=>$product->getId()]));
        }
        return $this->json([
            'category'=>$images,
            'products'=>$products,
            'category'=>$category
        ]);
    }
    /**
     * @Route("/api/product/search/{key}/{category}",name="api_search_products")
     */
    public function searchProducts(Request $request,$key, $category)
    {
        $em = $this->getDoctrine()->getManager();
        if($category==-1)
        $products= $em->getRepository(Product::class)->createQueryBuilder('p') 
            ->where('p.title LIKE :product')  
            ->setParameter('product', '%'.$key.'%') 
            ->getQuery()
            ->getResult(); 
         else
         $products= $em->getRepository(Product::class)->createQueryBuilder('p') 
            ->where('p.title LIKE :product') 
            ->andWhere('p.category_id = :category')
            ->setParameter('product', '%'.$key.'%')
            ->setParameter('category', $category)
            ->getQuery()
            ->getResult(); 

         return $this->json([
            'products'=>$products
         ]);
    }

    /**
     * @Route("/api/message/add",name="api_get_messages")
     */
    public function addMessage(Request $request)
    {
        $msg = new Messages();
        
        $em = $this->getDoctrine()->getManager();
        $name       =$request->query->get('name');
        $email      =$request->query->get('email');
        $message    =$request->query->get('message');
        $msg->setName($name)
                 ->setEmail($email)
                 ->setMessage($message)
                 ->setStatus('new')
                 ->setComment(null);
         $em->persist($msg);
         $em->flush();
        return $this->json([
            'message'=>$msg
         ]);
    }

    /**
     * @Route("/api/message/get/{email}",name="api_new_messages")
     */
    public function getMessage(Request $request, $email)
    { 
        $em = $this->getDoctrine()->getManager();
        $messages = $em->getRepository(Messages::class)->findBy(['email'=>$email]);
        return $this->json([
            'messages'=>$messages
         ]);
    }

}
