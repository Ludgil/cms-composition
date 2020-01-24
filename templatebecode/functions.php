<?php 

  // for posts
  add_filter('use_block_editor_for_post', '__return_false', 10);
  // for post types
  add_filter('use_block_editor_for_post_type', '__return_false', 10);

// Ajouter la prise en charge des images mises en avant
add_theme_support( 'post-thumbnails' );

// Ajouter automatiquement le titre du site dans l'en-tête du site
add_theme_support( 'title-tag' );

//ajouter les scripts css  
function loadStyleSheets(){
    wp_register_style('stylesheet',get_template_directory_uri() . '/assets/css/style.css', array(), false, 'all');
    wp_enqueue_style('stylesheet');
}

add_action('wp_enqueue_scripts', 'loadStyleSheets');

// ajouter menu dans wordpress
add_theme_support('menus');


function register_my_menu() {
    register_nav_menu('new custom nav',__( 'custom navigation' ));
  }

  add_action( 'init', 'register_my_menu' );




