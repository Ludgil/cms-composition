<?php ; 
    /* Template name: Home*/ 
?>

<?php 
$bandeau = get_field('bandeau');
$intro = get_field('intro');
$milieu = get_field('milieu');
$tissus = get_field('tissus');

?>

<?php get_header(); ?>

    <section id="bandeau">
        <div class="left-side">
            <img src="<?php echo $bandeau["img-1"];?>" alt="">
            <div class="box-left">
                <h2><?php echo $bandeau["titre-1"];?></h2>
                <h2 class="hover-content"><?php echo $bandeau["hover-1"]["titre"];?></h2>
                <p class="hover-content"><?php echo $bandeau["hover-1"]["texte"];?></p>
                <a href="#">>></a>
            </div>
        </div>
        <div class="right-side">
            <img src="<?php echo $bandeau["img-2"]; ?>" alt="">
            <div class="box-right">
                <h2><?php echo $bandeau["titre-2"];?></h2>
                <h2 class="hover-content"><?php echo $bandeau["hover-2"]["titre"];?></h2>
                <p class="hover-content"><?php echo $bandeau["hover-2"]["texte"];?></p>
                <a href="#">>></a>
            </div>
        </div>
    </section>
    <section id="intro">
        <div id="intro-content">
            <div class="left-side">
            <div id="box-design"></div>
                <div class="title-intro">
                    <p><?php echo $intro["wysiwyg"];?></p>
                </div>
                <div class="content-intro">
                    <h2><?php echo $intro["titre"];?></h2>
                    <p><?php echo $intro["texte"];?></p>
                    <a href="<?php echo $intro["lien_interne"]["url"];?>"><?php echo $intro["lien_interne"]["title"];?></a>
                </div>
            </div>
            <div class="right-side">
                <img src="<?php echo $intro["img"];?>">
            </div>
        </div>
    </section>
    <section id="milieu">
        <div id="box-milieu"></div>
        <div class="milieu-content">
            <img src="<?php echo get_template_directory_uri().'/assets/svg/logo-small.svg';?>" alt="logo-small">
            <p><?php echo $milieu["texte"];?></p>
            <a href="<?php echo $milieu["lien_interne"]["url"];?>"><?php echo $milieu["lien_interne"]["title"];?></a>
        </div>
    </section>
    <section id="tissu">
        <div class="left-side">
            <img src="<?php echo $tissus["img"];?>" alt="">
        </div>
        <div class="right-side">
            <h2><?php echo $tissus["titre"];?></h2>
            <p><?php echo $tissus["wysiwyg"];?></p>
            <a href="<?php echo $tissus["lien_interne"]["url"];?>"><?php echo $tissus["lien_interne"]["title"];?></a>
        </div>
    </section>



    <!-- TISSUS -->


    
    
    





<?php get_footer(); ?>