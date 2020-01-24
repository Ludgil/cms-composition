<?php

/* Template name: Archi*/

?>

<?php

$diaporama = get_field("diaporama_posts_projets");
$etudeDarchi = get_field('etude_darchi');
$nghi_stephan = get_field('nghi_&_stephan');
$tissus = get_field("tissus_et_artisanat")

?>


<!-- DIAPORAMA -->


<h1><?php echo $diaporama["titre"]?></h1>
<img src="<?php echo $diaporama["img"]?>" alt="">


<!-- ETUDE D'ARCHI -->


<h2> <?php echo $etudeDarchi["titre"]?> </h2>
<h4> <?php echo $etudeDarchi["ss-titre"]?> </h4>
<p><?php echo $etudeDarchi["wysiwyg"]?></p>
<p><?php echo $etudeDarchi["repeater"][0]["texte"] ?> </p>
<ul>
  <li><?php echo $etudeDarchi["repeater"][1]["texte"] ?></li>
  <li><?php echo $etudeDarchi["repeater"][2]["texte"] ?></li>
  <li><?php echo $etudeDarchi["repeater"][3]["texte"] ?></li>
  <li><?php echo $etudeDarchi["repeater"][4]["texte"] ?></li>
  <li><?php echo $etudeDarchi["repeater"][5]["texte"] ?></li>
</ul>


<!-- NGHI & STEPHAN -->


<img src="<?php echo $nghi_stephan["img"] ?>" alt="">
<h2><?php echo $nghi_stephan["titre"]?></h2>
<h4><?php echo $nghi_stephan["ss-titre"]?></h4>
<p><?php echo $nghi_stephan["wysiwyg"]?></p>


<!-- TISSUS ET ARTISANATS -->


<img src="<?php echo $tissus["repeater-1"][0]["img"]?>" alt="">
<h2><?php echo $tissus["titre"]?></h2>
<h4><?php echo $tissus["ss-titre"]?></h4>
<p><?php echo $tissus["wysiwyg"]?></p>
<p><?php echo $tissus["repeater-2"][0]["texte"]?></p>
<ul>
  <li><?php echo $tissus["repeater-2"][1]["texte"]?></li>
  <li><?php echo $tissus["repeater-2"][2]["texte"]?></li>
  <li><?php echo $tissus["repeater-2"][3]["texte"]?></li>
  <li><?php echo $tissus["repeater-2"][4]["texte"]?></li>
</ul>


