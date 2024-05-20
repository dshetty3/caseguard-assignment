<?php

function caseguard_theme_support(){
    add_theme_support('title-tag'); //Adding title dynamically
    add_theme_support( 'custom-logo' );
}

add_action('after_theme_setup','caseguard_theme_support');



function caseguard_register_styles(){

    $version = wp_get_theme()->get( 'Version' );
    wp_enqueue_style('caseguard-style', get_template_directory_uri() . "/style.css", array(), $version, 'all');
    wp_enqueue_style('caseguard-fontawesome', "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css", array(), '4.7.0', 'all');
}

add_action('wp_enqueue_scripts', 'caseguard_register_styles');


function caseguard_register_scripts(){

    wp_enqueue_script('caseguard-javascript', get_template_directory_uri()."/assets/js/main.js", array(),"1.0",true);
}

add_action('wp_enqueue_scripts', 'caseguard_register_scripts');

add_theme_support('post-thumbnails');


function modify_cache_control_headers() {
    if (!is_admin()) {
        header("Cache-Control: public, max-age=3600, must-revalidate");
    }
}
add_action('send_headers', 'modify_cache_control_headers');

?>