<?php ; 
    /* Template name: Home*/ 
?>

<?php 
$bandeau = get_field('bandeau');
$intro = get_field('intro');
$milieu = get_field('milieu');
$tissus = get_field('tissus')

?>

<? get_header() ?>
    <section id="bandeau">
        <div class="left-side">
            <img src="<? echo $bandeau["img-1"]?>">
            <div class="box-left">
                <h2><? echo $bandeau["titre-1"]?></h2>
                <h2><? echo $bandeau["hover-1"]["titre"]?></h2>
                <p><? echo $bandeau["hover-1"]["texte"]?></p>
            </div>
        </div>
        <div class="right-side">
            <img src="<? echo $bandeau["img-2"] ?>" alt="">
            <div class="box-right">
                <h2><? echo $bandeau["titre-2"]?></h2>
                <h2><? echo $bandeau["hover-2"]["titre"]?></h2>
                <p><? echo $bandeau["hover-2"]["texte"]?></p>
            </div>
        </div>
    </section>


    <!-- INTRO -->


    <p><? echo $intro["texte"]?></p>
    <h2><? echo $intro["titre"]?></h2>
    <p><? echo $intro["wysiwyg"]?></p>
    <a href="<? echo $intro["lien_interne"]["url"]?>"><? echo $intro["lien_interne"]["title"]?></a>
    <img src="<? echo $intro["img"]?>">

    <!-- MILIEU -->


    <p><? echo $milieu["texte"]?></p>
    <a href="<? echo $milieu["lien_interne"]["url"]?>"><? echo $milieu["lien_interne"]["title"]?></a>


    <!-- TISSUS -->


    <img src="<? echo $tissus["img"]?>" alt="">
    <h2><? echo $tissus["titre"]?></h2>
    <p><? echo $tissus["wysiwyg"]?></p>
    <a href="<? echo $tissus["lien_interne"]["url"]?>"><? echo $tissus["lien_interne"]["title"]?></a>
    





<?php get_footer(); ?>