<?php
/**
 * Controller
 * User: reinardvandalen
 * Date: 05-11-18
 * Time: 15:25
 */

/* Require composer autoloader */
require __DIR__ . '/vendor/autoload.php';

/* Include model.php */
include 'model.php';

// Set credentials for authentication
$cred = set_cred('ddwt18', 'ddwt18');

/* Create Router instance */
$router = new \Bramus\Router\Router();

/* this router checks before it sends a GET, POST, PUT or DELETE request, if the user is authenticated to use this API. */
$router->before('GET|POST|PUT|DELETE', '/api/.*', function() use($cred){
    if (!check_cred($cred)){
        echo json_encode('Authentication required.');
        http_response_code(401);
        die();
    }
    echo "Succesfully authenticated";
});

// Add routes here
$router->mount('/api', function() use ($router){
    /* Connect to DB */
    $db = connect_db('localhost', 'ddwt18_week3', 'ddwt18_week3', 'ddwt18');

    /*change content_type to json*/
    http_content_type('json');

    $router->get('/series', function() use ($db){
        $series = json_encode(get_series($db));
        echo $series;
    });

    $router->get('/series/(\d+)', function($id) use ($db){
        /* get the info of the specific serie */
        $series_info = json_encode(get_serieinfo($db, $id));
        echo $series_info;
    });

    $router->get('/series/(\d+)/delete', function($id) use ($db){
        /* remove the serie from the series overview with the remove function */
        $series_info = json_encode(remove_serie($db, $id));
        echo $series_info;
    });

    $router->post('/series', function() use ($db){
        /* add the serie from the series overview with the add function */
        $series_info = json_encode(add_serie($db, $_POST));
        echo $series_info;
    });

    $router->put('/series/(\d+)', function($id) use ($db){
        /* with put you can update a serie in the database */
        $_PUT = array();
        parse_str(file_get_contents('php://input'), $_PUT);
        $serie_info = $_PUT + ["serie_id" => $id];
        $update_serie = json_encode(update_serie($db, $serie_info));
        echo $update_serie;
    });

/* Create a custom 404 error */
$router->set404(function() {
    header(json_encode('HTTP/1.1 404 Not Found'));
    echo 'This page does not exist';
});

/* Run the router */
$router->run();});
