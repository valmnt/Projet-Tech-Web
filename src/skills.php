<?php
try
{
    $bdd = new PDO('mysql:host=localhost;dbname=techweb_bdd_mont;charset=utf8', 'root');
    $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}


$reponse = $bdd->query('SELECT * FROM competence');
$rows = $reponse->fetchAll();


?>

<section id="block2">
        <div class="titlecompetence">
            <p class="titlecompet">Mes Compétences</p>
        </div>
        <div class="skillsbar">
            <div class="sousboitedroit">

                <?php
                foreach($rows as $rows)
                {
                    echo 
                    "<div class='parentss'>",

                    "<div class='parentxt'>",
                        "<div class='sousparentxt'",
                            "<p class='viewbar'>$rows[NOM]</p>",
                        "</div>",
                    "</div>",
                    "<div class='parentbar'>",
                        "<div class='sousparentbar'>",
                            "<div class='parentcolor'>",
                                "<div class='enfantcolor' style='width:$rows[NIVEAU]%;'>$rows[NIVEAU]</div>",
                            "</div>",
                        "</div>",

                    "</div>",
                    "</div>";
                }
                ?>
            </div>
        </div>

    </section>
