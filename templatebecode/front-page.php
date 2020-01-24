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
    <section id="intro">
        <div id="intro-content">
            <div class="left-side">
            <div id="box-design"></div>
                <div class="title-intro">
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Expedita tenetur a facilis ab adipisci est!
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex saepe excepturi laboriosam voluptate sapiente possimus dignissimos officia itaque,
                    </p>
                </div>
                <div class="content-intro">
                    <h2>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus, nostrum eligendi beatae quasi enim provident.</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                    Quos itaque quia, molestiae accusamus excepturi inventore ducimus cum ea vero odit? 
                    Cumque aut numquam incidunt atque exercitationem quos vero facilis ducimus, laborum esse 
                    fugiat ratione iusto. Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia ullam 
                    quia dolor, modi quod beatae officiis corrupti
                     corporis eius sequi fugit est sunt at ad maiores sint expedita ea? Unde! Lorem, 
                     ipsum dolor sit amet consectetur adipisicing elit. Provident, ad ipsum quidem pariatur facilis, sed minima mollitia assumenda quae repellendus dicta delectus unde rem voluptatibus, eligendi consectetur labore quo ullam recusandae ea. Repellendus quas quae autem, animi sint esse hic tempora quidem 
                     quo corporis vitae odit culpa, neque facere officia.
                    </p>

                </div>
            </div>
            <div class="right-side">
                <img src="<?php echo get_template_directory_uri().'/assets/images/1000x1600_01.jpg';?>" alt="photo">
            </div>
        </div>
    </section>
    <section id="milieu">
        <div id="box-milieu"></div>
        <div class="milieu-content">
            <img src="<?php echo get_template_directory_uri().'/assets/svg/logo-small.svg';?>" alt="logo-small">
            <h2>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maiores iste totam asperiores, incidunt modi, possimus facere architecto suscipit obcaecati nostrum natus voluptates blanditiis numquam quia necessitatibus et similique delectus 
                molestias dolorum, ullam sed laudantium enim labore repudiandae! Eaque, quas ratione?</h2>
            <a href="#">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, est?</a>
        </div>
    </section>
    <section id="tissu">
        <div class="left-side">
            <img src="<?php echo get_template_directory_uri().'/assets/images/1850x1200_01.jpg';?>" alt="">
        </div>
        <div class="right-side">
            <h3>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Veniam laboriosam fuga sunt in similique officia.</h3>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Qui sunt hic ducimus tempora obcaecati similique, eum cupiditate ad impedit aspernatur facere, rem deleniti ipsum iure debitis quae consectetur iste commodi reprehenderit! Delectus alias facilis quaerat fuga reprehenderit! Ullam perferendis possimus quidem inventore, magnam iure harum tempora nostrum in sequi laborum, minus non quod quo accusamus dicta,
                 impedit suscipit! Reiciendis enim optio temporibus sint placeat illo!</p>
            <a href="#">Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae, dignissimos.</a>
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