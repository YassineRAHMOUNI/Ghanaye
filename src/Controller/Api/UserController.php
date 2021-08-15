<?php

namespace App\Controller\Api;

use App\Entity\Users;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request; 
use Symfony\Component\HttpFoundation\Response; 
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Authentication\Token\UsernamePasswordToken;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Component\Routing\RouterInterface;
use Symfony\Component\Security\Core\Authentication\Token\TokenInterface;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\Security\Core\Exception\CustomUserMessageAuthenticationException;
use Symfony\Component\Security\Core\Exception\InvalidCsrfTokenException;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\Security\Core\User\UserInterface;
use Symfony\Component\Security\Core\User\UserProviderInterface;
use Symfony\Component\Security\Csrf\CsrfToken;
use Symfony\Component\Security\Csrf\CsrfTokenManagerInterface;
use Symfony\Component\Security\Guard\Authenticator\AbstractFormLoginAuthenticator;
use Symfony\Component\Security\Http\Util\TargetPathTrait;
class UserController extends AbstractController
{
    /**
     * @Route("/api/prospect/login", name="api_user_app_login")
     */
    public function login(EntityManagerInterface $entityManager,Request $request, UserPasswordEncoderInterface $encoder)
    {
        $token=$this->get('security.token_storage')->getToken();  
        if($token->getUser() !='anon.') $token_email=$token->getUser()->getEmail();
        else $token_email='';
        $user='';
        $error='';
        $email=$request->query->get('email');
        $password=$request->query->get('password'); 
        if($token->getCredentials()=='' or $token=='' or $token_email !=$email)
        {  
             
            if(!isset($email)) $error="email empty";
            else if(!isset($password)) $error="password empty";
            else
            {
                $user=$entityManager->getRepository(Users::class)->findOneBy(['email' => $email]);
                if(!isset($user))$error='user not found';
                else{
                    $error=$encoder->isPasswordValid($user, $password);
                    if($error==false) $error='password incorrect';
                    else{
                        $error='';
                        $token = new UsernamePasswordToken($user, $user->getEmail(), "main", $user->getRoles());
                        $this->get('security.token_storage')->setToken($token);
                    }
                }
                 
            }
        }else
        {
            $user = $token->getUser(); 
            if($user->getEmail()!=$email)
            {
                $error= 'email not existing';
                $token='';
            }elseif($encoder->isPasswordValid($user, $password) == false){
                $error='password incorrect';
                $token='';
            }
        }
            
            return $this->json( ['error' => $error,
            'email'=>$email,
            'password'=>$password,
            'token'=>$token
        ]); 
    }
    /**
     * @Route("api/user/details", name="api_detail_client")
     */
    function clientDetail(Request $request)
    { 
        $session=$request->getSession();
        $user = $this->getDoctrine()->getRepository(Users::class)->findBy(['email'=> $session->get('_security.last_username')]);        
        $error="";
        return $this->json( ['error' => $error,'user'=>$user,'session'=>$session->get('_security.last_username')]);
    }

    /**
     * @Route("api/prospect/register", name="api_register_prospect")
     */
    function registerProspect(Request $request, UserPasswordEncoderInterface $encoder)
    {
        $em = $this->getDoctrine()->getManager();
        $error="";
        $user="";
        $token="";
        $name=$request->query->get('name');
        $tel=$request->query->get('tel');
        $address=$request->query->get('address');
        $city=$request->query->get('city'); 
        $email=$request->query->get('email');
        $password=$request->query->get('password'); 
        $type='Member';
        $status=true;
        
        $createAt=date("Y-m-d H:i:s");
        $updateAt=date("Y-m-d H:i:s"); 
        $roles=array("ROLE_USER");
        if(!isset($name)) $error = 'name is empty';
        else if(!isset($tel)) $error = 'phone is empty';
        else if(!isset($address)) $error = 'address is empty';
        else if(!isset($city)) $error = 'city is empty'; 
        else if(!isset($email)) $error = 'email is empty';
        else if(!isset($password)) $error = 'password is empty';
        else{

            $user=$em->getRepository(Users::class)->findOneBy(['email' => $email]);
            if(!$user==null)
            { 
                $error="user already exist";
            }else{
                $user=new Users();
                $user->setName($name);
                $user->setTel($tel);
                $user->setAddres($address);
                $user->setCity($city); 
                $user->setType($type);
                $user->setStatus(true);
                $user->setEmail($email);
                $password = $encoder->encodePassword($user, $password);
                $user->setPassword($password); 
                $em->persist($user);
                $em->flush();
                $token = new UsernamePasswordToken($user, $user->getEmail(), "main", $user->getRoles());
                $this->get('security.token_storage')->setToken($token);
            }
            
        }
        return $this->json( ['error' => $error,'user'=>$user,'token'=>$token]);
    }
    public function isEmpty($element){
        if(isset($element))return true;
        else return false;
    }

    /**
     * @Route("api/vendor/register", name="api_register_seller")
     */
    function registerSeller(Request $request, UserPasswordEncoderInterface $encoder)
    {
        $em = $this->getDoctrine()->getManager();
        $error="";
        $user="";
        $token="";
        $name=$request->query->get('name');
        $tel=$request->query->get('tel');
        $address=$request->query->get('address');
        $city=$request->query->get('city'); 
        $email=$request->query->get('email');
        $password=$request->query->get('password'); 
        $type='Vendor';
        $status=true;
        
        $createAt=date("Y-m-d H:i:s");
        $updateAt=date("Y-m-d H:i:s"); 
        $roles=array("ROLE_USER");
        if(!isset($name)) $error = 'name is empty';
        else if(!isset($tel)) $error = 'phone is empty';
        else if(!isset($address)) $error = 'address is empty';
        else if(!isset($city)) $error = 'city is empty'; 
        else if(!isset($email)) $error = 'email is empty';
        else if(!isset($password)) $error = 'password is empty';
        else{

            $user=$em->getRepository(Users::class)->findOneBy(['email' => $email]);
            if(!$user==null)
            { 
                $error="user already exist";
            }else{
                $user=new Users();
                $user->setName($name);
                $user->setTel($tel);
                $user->setAddres($address);
                $user->setCity($city); 
                $user->setEmail($email);
                $user->setType($type);
                $user->setStatus(true);
                $password = $encoder->encodePassword($user, $password);
                $user->setPassword($password); 
                $em->persist($user);
                $em->flush();
                $token = new UsernamePasswordToken($user, $user->getEmail(), "main", $user->getRoles());
                $this->get('security.token_storage')->setToken($token);
            }
            
        }
        return $this->json( ['error' => $error,'user'=>$user,'token'=>$token]);
    }

    
}