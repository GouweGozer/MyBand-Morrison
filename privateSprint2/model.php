<?php

function make_connection() {
    $mysqli = new mysqli('localhost', 'root', '','myband_db');
    if ($mysqli->connect_errno) {
        die('Connection error:' . $mysqli->connect_errno . '<br>');
    }
    return $mysqli;
}

function get_articles() {
    $mysqli = make_connection();
    $query = "SELECT content FROM articles";
    $stmt = $mysqli->prepare($query) or die ('error preparing 1');
    $stmt->bind_result( $title) or die ('error binding results 1');
    $stmt->execute() or die ('error executing 1');
    $results = array();
    while ($stmt->fetch()) {
        $results[] = $title;
    }
    return $results;
}

function get_some_articles() {
    global $pageno;
    global $searchterm;
    $mysqli = make_connection();
    $number_of_pages = calculate_pages() or die ('Error calculating.');
    $firstrow = ($pageno -1) * ARTICLES_PER_PAGE;
    $per_page = ARTICLES_PER_PAGE;

    $query =    "SELECT article_id, title, content, imagelink ";
    $query .=   "FROM articles ";
    $query .=   "WHERE title LIKE ? OR ";
    $query .=   "content LIKE ? ";
    $query .=   "ORDER BY article_id ";
    $query .=   "DESC LIMIT $firstrow,$per_page";

    $stmt = $mysqli->prepare($query) or die ('error preparing 1');
    $stmt->bind_param('ss', $searchterm, $searchterm) or die ('Error binding searchterm.');
    $stmt->bind_result($id, $title, $content, $imagelink) or die ('error binding results 1');
    $stmt->execute() or die ('error executing 1');
    $results = array();
    while ($stmt->fetch()) {
        $article = array();
        $article[] = $id;
        $article[] = $title;
        $article[] = $content;
        $article[] = $imagelink;
        $results[] = $article;
    }
    return $results;
}

function get_number_of_pages() {
    $number_of_pages = calculate_pages() or die ('Error calculating.');
    return $number_of_pages;
}

function calculate_pages() {
    $mysqli = make_connection();
    $query = "SELECT * FROM articles";
    $result = $mysqli->query($query) or die ('Error querying 2.');
    $rows = $result->num_rows;
    $number_of_pages = ceil($rows / ARTICLES_PER_PAGE);
    return $number_of_pages;
}


// CMS OFZO
function check_login() {
    $username = $_POST['username'];
    $password = $_POST['password'];

    if ($username == 'admin' && $password == 'admin') {
        $_SESSION['loggedin'] = 'loggedin';
    }
}

function delete() {
    $id = $_GET['id'];

    $mysqli = make_connection();
    $query = "DELETE FROM articles WHERE article_id = ? ";
    $stmt = $mysqli->prepare($query) or die ('error preparing 20');
    $stmt->bind_param('s',$id) or die ('error binding 20');
    $stmt->execute() or die ('error executing 20');
    header('Location: index.php');
//    exit;
}

function edit() {
    $mysqli = make_connection();

    $title = $_POST['title'];
    $content = $_POST['content'];
    $imagelink = $_POST['imagelink'];

//    $mysqli = make_connection();
    $query = "INSERT INTO articles VALUES (0,?,?,?)";
    $stmt = $mysqli->prepare($query) or die ('error preparing 110');
    $stmt->bind_param('sss',$title,$content,$imagelink) or die ('Error binding params');
    $stmt->execute() or die ('Error executing 110');
    $stmt->close();

    header('Location: index.php?page=cms');
}

function post() {
    $mysqli = make_connection();

    $title = $_POST['title'];
    $content = $_POST['content'];
    $imagelink = $_POST['imagelink'];

//    $mysqli = make_connection();
    $query = "INSERT INTO articles VALUES (0,?,?,?)";
    $stmt = $mysqli->prepare($query) or die ('error preparing 110');
    $stmt->bind_param('sss',$title,$content,$imagelink) or die ('Error binding params');
    $stmt->execute() or die ('Error executing 110');
    $stmt->close();

    header('Location: index.php?page=cms');
}


function logout() {
    $_SESSION['loggedin'] = 'loggedin';
    session_destroy();
    header("Location: index.php?page=home");
}
