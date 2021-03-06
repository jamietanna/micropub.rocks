<?php
chdir('..');
include('vendor/autoload.php');

use Psr\Http\Message\ResponseInterface;
use Psr\Http\Message\ServerRequestInterface;

$container = new League\Container\Container;
$container->share('response', Zend\Diactoros\Response::class);
$container->share('request', function () {
  return Zend\Diactoros\ServerRequestFactory::fromGlobals(
    $_SERVER, $_GET, $_POST, $_COOKIE, $_FILES
  );
});
$container->share('emitter', Zend\Diactoros\Response\SapiEmitter::class);

$route = new League\Route\RouteCollection($container);


$route->map('GET', '/', 'App\\Controller::index');

$route->map('POST', '/auth/start', 'App\\Auth::start');
$route->map('GET', '/auth/code', 'App\\Auth::code');
$route->map('GET', '/auth/signout', 'App\\Auth::signout');

$route->map('GET', '/dashboard', 'App\\Controller::dashboard');
$route->map('GET', '/image', 'ImageProxy::image');


//////////////////////////////////////////////////////////////////////////
// Server Management
$route->map('POST', '/endpoints/new', 'App\\Controller::new_endpoint');
$route->map('GET', '/endpoints/callback', 'App\\Controller::endpoint_callback');
$route->map('GET', '/endpoints/{id}', 'App\\Controller::edit_endpoint');
$route->map('POST', '/endpoints/save', 'App\\Controller::save_endpoint');

// Server Tests
$route->map('GET', '/server-tests', 'App\\ServerTests::index');
$route->map('POST', '/server-tests/micropub', 'App\\ServerTests::micropub_request');
$route->map('POST', '/server-tests/media-check', 'App\\ServerTests::media_check');
$route->map('POST', '/server-tests/store-result', 'App\\ServerTests::store_result');
$route->map('GET', '/server-tests/{num}', 'App\\ServerTests::get_test');
//////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////
// Client Management
$route->map('POST', '/clients/new', 'App\\Controller::new_client');
$route->map('GET', '/clients/{id}', 'App\\Controller::edit_client');
$route->map('POST', '/clients/save', 'App\\Controller::save_client');
$route->map('POST', '/clients/{id}/new_access_token', 'App\\Controller::create_client_access_token');

// Client Tests
$route->map('GET', '/client/{token}', 'App\\ClientTests::index');
$route->map('GET', '/client/{token}/auth', 'App\\ClientTests::auth');
$route->map('GET', '/client/{token}/micropub', 'App\\ClientTests::micropub_get');
$route->map('GET', '/client/{token}/{num}', 'App\\ClientTests::get_test');
$route->map('GET', '/client/{token}/{num}/{key}', 'App\\ClientTests::get_test');
$route->map('GET', '/client/{token}/{num}/{key}/photo.jpg', 'App\\ClientTests::get_image');
$route->map('GET', '/client/{token}/{num}/{key}/video.mp4', 'App\\ClientTests::get_video');
$route->map('GET', '/client/{token}/{num}/{key}/audio.mp3', 'App\\ClientTests::get_audio');
$route->map('GET', '/client/{token}/{num}/{key}/file', 'App\\ClientTests::get_image');
$route->map('POST', '/client/{token}/auth', 'App\\ClientTests::auth_confirm');
$route->map('POST', '/client/{token}/token', 'App\\ClientTests::token');
$route->map('POST', '/client/{token}/micropub', 'App\\ClientTests::micropub');
$route->map('POST', '/client/{token}/media', 'App\\ClientTests::media_endpoint');
$route->map('OPTIONS', '/client/{token}/micropub', 'App\\ClientTests::options');
$route->map('OPTIONS', '/client/{token}/media', 'App\\ClientTests::options');
//////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////
// Reports
$route->map('GET', '/implementation-reports/servers/', 'App\\ImplementationReport::show_reports');
$route->map('GET', '/implementation-reports/servers/summary/', 'App\\ImplementationReport::server_report_summary');
$route->map('GET', '/implementation-reports/servers/{id}', 'App\\ImplementationReport::get_server_report');
$route->map('GET', '/implementation-reports/servers/{id}/{token}', 
  'App\\ImplementationReport::view_server_report');

$route->map('GET', '/implementation-reports/clients/', 'App\\ClientReports::show_reports');

$route->map('GET', '/implementation-reports/', function(ServerRequestInterface $request, ResponseInterface $response){
  return $response->withHeader('Location', '/')->withStatus(302);
});

$route->map('GET', '/implementation-report/client/{id}', 'App\\ImplementationReport::get_client_report');
$route->map('POST', '/implementation-report/store-result', 'App\\ImplementationReport::store_result');
$route->map('POST', '/implementation-report/save', 'App\\ImplementationReport::save_report');
$route->map('POST', '/implementation-report/publish', 'App\\ImplementationReport::publish_report');

// Old redirects
$route->map('GET', '/implementation-report/server/{id}', 'App\\ImplementationReport::redirect_server');
$route->map('GET', '/implementation-report/server/{id}/{token}', 'App\\ImplementationReport::redirect_server');
$route->map('GET', '/reports', function(ServerRequestInterface $request, ResponseInterface $response){
  return $response->withHeader('Location', '/implementation-reports/servers/')->withStatus(301);
});
//////////////////////////////////////////////////////////////////////////


$templates = new League\Plates\Engine(dirname(__FILE__).'/../views');

try {
  $response = $route->dispatch($container->get('request'), $container->get('response'));
  $container->get('emitter')->emit($response);
} catch(League\Route\Http\Exception\NotFoundException $e) {
  $response = $container->get('response');
  $response->getBody()->write("Not Found\n");
  $container->get('emitter')->emit($response->withStatus(404));
} catch(League\Route\Http\Exception\MethodNotAllowedException $e) {
  $response = $container->get('response');
  $response->getBody()->write("Method not allowed\n");
  $container->get('emitter')->emit($response->withStatus(405));
}
