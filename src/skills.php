<?php
try
{
    $bdd = new PDO('mysql:host=localhost;dbname=bdd_techweb_mont;charset=utf8', 'root');
    $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}


$reponse = $bdd->query('SELECT * FROM skills');
$rows = $reponse->fetchAll();
$nb = 0


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
                $nb = $nb+1;
                echo 
                "<div class='parentss'>",

                    "<div class='parentxt'>",
                        "<div class='sousparentxt'",
                            "<p class='viewbar'>$rows[skills]</p>",
                        "</div>",
                    "</div>",
                    "<div class='parentbar'>",
                        "<div class='sousparentbar'>",
                            "<div class='parentcolor'>",
                                "<div class='enfantcolor$nb'>$rows[level]</div>",
                            "</div>",
                        "</div>",

                    "</div>",
                "</div>";
                }
                ?>
            </div>
        </div>

    </section>