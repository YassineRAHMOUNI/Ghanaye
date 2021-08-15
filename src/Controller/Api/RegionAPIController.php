<?php

namespace App\Controller\Api;
use App\Entity\Region;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\RegionRepository;

/**
 * @Route("/api/region")
 */
class RegionAPIController extends AbstractController
{
     /**
     * @Route("/new", name="api_region_new")
     */
    public function add(Request $request): Response
    {
        $region = new Region();
        $name=$request->query->get('name');
        $em = $this->getDoctrine()->getManager();
        $region->setName($name);
        $em->persist($region);
        $em->flush();
        $this->addFlash('add','');

        return $this->json([ 
            'region'=>$region
        ]);
    }

    /**
     * @Route("/edit/{id}", name="api_region_edit")
     */
    public function edit($id,RegionRepository $regionRepository,Request $request): Response
    {
        $name=$request->query->get('name');
        $em = $this->getDoctrine()->getManager();
        $region = $em->getRepository(Region::class)->findOneById($id);
        $region->setName($name);
        $em->flush();
        $this->addFlash('add','');

        return $this->json([ 
            'region'=>$region
        ]);
    }

    /**
     * @Route("/delete/{id}", name="api_region_delete", methods="DELETE")
     */
    public function delete(Request $request, RegionRepository $regionRepository, $id): Response
    {

        $em = $this->getDoctrine()->getManager();
        $region = $em->getRepository(Region::class)->findOneById($id);
        $em->remove($region);
        $em->flush();
        $this->addFlash('add','');

        return $this->json([ 
            'region'=>$region
        ]);
    }
}
