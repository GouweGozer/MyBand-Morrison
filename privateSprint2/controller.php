<?php

function homepage_action($smarty) {
    //MODEL

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



function info_action() {
    //MODEL
    global $smarty;
    global $pageno;
    global $searchterm;
    $articles = get_some_articles();
    $number_of_pages = get_number_of_pages();
    $smarty->assign('current_page',$pageno);
    $smarty->assign('number_of_pages',$number_of_pages);
    $smarty->assign('articles', $articles);
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



function login_action() {
    check_login();
}

function cms_action() {
    global $smarty;
    $smarty->display('inlogformulier.tpl');
}

function beheer_action() {
    global $smarty;
    $articles = get_some_articles();
    $smarty->assign('articles',$articles);
    $smarty->display('cms.tpl');
}

function delete_action() {
    delete();
}

function edit_action() {
    global $smarty;
    $smarty->display('edit.tpl');
}

function post_action() {
    global $smarty;
    $smarty->display('post.tpl');
}

function cms_post() {
    post();
}


function logout_action() {
    logout();
}
