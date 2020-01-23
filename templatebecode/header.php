<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
    
    <?php wp_body_open(); ?>
    <header>
        <div id="container-nav">
            <div id="navlogo">
                <img src="<?php echo get_template_directory_uri().'/assets/svg/logo-full.svg';?>" alt="logo">
            </div>
            <?php wp_nav_menu(
            array(
                'theme_location' => 'Custom-nav',
                'menu_class' => 'navigation'
            )
        ); ?>
        </div>
    </header>
    