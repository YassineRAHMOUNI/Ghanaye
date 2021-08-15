<?php

namespace App\Controller\Admin;
use App\Entity\Region;
use App\Form\Admin\RegionType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\RegionRepository;

/**
 * @Route("/admin/region")
 */
class RegionController extends AbstractController
{
    /**
     * @Route("/", name="admin_region_index")
     */
    public function index(RegionRepository $regionRepository): Response
    {
        return $this->render('admin/region/index.html.twig', [
            'regions' => $regionRepository->findBy([],['id'=>'desc']),
        ]);
    }

     /**
     * @Route("/new", name="admin_region_new")
     */
    public function add(Request $request): Response
    {

        $region = new Region();
        $form = $this->createForm(RegionType::class, $region);
        $form->handleRequest($request);

        if ($form->get('name')->getData() != null) {
            $region = $form->getData();
            $em = $this->getDoctrine()->getManager();
            $em->persist($region);
            $em->flush();
            $this->addFlash('add','');
            return $this->redirectToRoute('admin_region_index');
        }



        return $this->render('admin/region/new.html.twig', [
            'form' => $form->createView(),
            'region' => $region
        ]);
    }

    /**
     * @Route("/edit/{id}", name="admin_region_edit")
     */
    public function edit($id,RegionRepository $regionRepository,Request $request): Response
    {
        $region=$regionRepository->find($id);
        $form = $this->createForm(RegionType::class, $region);
        $form->handleRequest($request);

        if ($form->isSubmitted()) {
            $this->getDoctrine()->getManager()->flush();
            $this->addFlash('update','');
            return $this->redirectToRoute('admin_product_index');
        }
        return $this->render('region/edit.html.twig', [
            'form' => $form->createView(),
            'region'=>$region
        ]);
    }


    /**
     * @Route("/delete/{id}", name="admin_region_delete")
     */
    public function delete($id,Request $request, RegionRepository $regionRepository): Response
    {
        $em = $this->getDoctrine()->getManager();
        $region = $em->getRepository(Region::class)->findOneById($id);
        $em->remove($region);
        $em->flush();
        $this->addFlash('add','');

        return $this->redirectToRoute('admin_region_index');
    }
}
