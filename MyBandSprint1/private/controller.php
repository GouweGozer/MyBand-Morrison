<?php

function homepage_action($smarty) {
    //MODEL
    global $smarty;
    global $pageno;
    $articles = get_some_articles();
    $number_of_pages = get_number_of_pages();
    $smarty->assign('current_page',$pageno);
    $smarty->assign('number_of_pages',$number_of_pages);
    $smarty->assign('articles', $articles);
    //VIEWS
    $smarty->display('header.tpl');
    $smarty->display('home.tpl');
    $smarty->display('footer.tpl');
}



function page_not_found_action() {
    global $smarty;
    $smarty->display('notfound.tpl');
}

function contact_action() {
    global $smarty;
    //MODEL

    //VIEWS
    $smarty->display('header.tpl');
    $smarty->display('contact.tpl');
    $smarty->display('footer.tpl');
}

function agenda_action() {
    global $smarty;
    //MODEL

    //VIEWS
    $smarty->display('header.tpl');
    $smarty->display('agenda.tpl');
    $smarty->display('footer.tpl');
}

function webwinkel_action() {
    global $smarty;
    //MODEL

    //VIEWS
    $smarty->display('header.tpl');
    $smarty->display('webwinkel.tpl');
    $smarty->display('footer.tpl');
}

function info_action() {
    global $smarty;
    //MODEL

    //VIEWS
    $smarty->display('header.tpl');
    $smarty->display('info.tpl');
    $smarty->display('footer.tpl');
}

function home_action() {
    global $smarty;
    //MODEL

    //VIEWS
    $smarty->display('header.tpl');
    $smarty->display('home.tpl');
    $smarty->display('footer.tpl');
}

function winkelwagen_action() {
    global $smarty;
    //MODEL

    //VIEWS
    $smarty->display('header.tpl');
    $smarty->display('winkelwagen.tpl');
    $smarty->display('footer.tpl');
}

function cms_action() {
    global $smarty;
    //MODEL

    //VIEWS
    $smarty->display('header.tpl');
    $smarty->display('cms.tpl');
    $smarty->display('footer.tpl');
}


