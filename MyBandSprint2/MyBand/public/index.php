<?php

session_start();

require ('../private/smarty/smarty.class.php');
require ('../private/model.php');
require ('../private/controller.php');

$smarty = new smarty();
$smarty->setCompileDir('../private/tmp');
$smarty->setTemplateDir('../private/views');

define('ARTICLES_PER_PAGE',7);

//TERNARY OPERATOR
$page = isset($_GET['page']) ? $_GET['page'] : 'home';
$pageno = isset($_GET['pageno']) ? $_GET['pageno'] : '1';
$searchterm = isset($_GET['searchterm']) ? '%' . $_GET['searchterm'] . '%' : '%';

// CMS OFZO
if (isset($_POST['submit_login'])) {
    login_action();
}

if (isset($_POST['submit_post'])) {
   cms_post();
}


if (isset($_SESSION['loggedin'])) {

    $page = isset($_GET['page']) ? $_GET['page'] : '';


    switch ($page) {
        case 'home':
            homepage_action($smarty);
            break;
        case 'contact':
            contact_action();
            break;
        case 'agenda':
            agenda_action();
            break;
        case 'info':
            info_action();
            break;


                // coole admin
                case 'delete': delete_action(); break;
                case 'edit': edit_action(); break;
                case 'post' : post_action(); break;
                case 'loguit' : logout_action(); break;
                default: beheer_action(); break;
            }
    }
    else {
    switch ($page) {
        case 'home':
            homepage_action($smarty);
            break;
        case 'contact':
            contact_action();
            break;
        case 'agenda':
            agenda_action();
            break;
        case 'info':
            info_action();
            break;
        case 'cms':
            cms_action();
            break;
        default:
            page_not_found_action();
            break;
    }
}



