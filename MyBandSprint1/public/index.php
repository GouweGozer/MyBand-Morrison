<?php
require ('../private/smarty/smarty.class.php');
require ('../private/model.php');
require ('../private/controller.php');

$smarty = new smarty();
$smarty->setCompileDir('../private/tmp');
$smarty->setTemplateDir('../private/views');

define('ARTICLES_PER_PAGE',25);

//TERNARY OPERATOR
$page = isset($_GET['page']) ? $_GET['page'] : 'home';
$pageno = isset($_GET['pageno']) ? $_GET['pageno'] : '1';

switch ($page) {
//    case 'home': homepage_action($smarty); break;
    case 'home': homepage_action($smarty); break;
    case 'contact': contact_action(); break;
    case 'agenda': agenda_action(); break;
    case 'webwinkel': webwinkel_action(); break;
    case 'info': info_action(); break;
    case 'winkelwagen': winkelwagen_action(); break;
    case 'cms': cms_action(); break;
    default: page_not_found_action(); break;
}
