<?php
try
{
    $bdd = new PDO('mysql:host=localhost;dbname=techweb_bdd_mont;charset=utf8', 'root');
    $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}

$reponse = $bdd->query('SELECT * FROM formation');
$rows = $reponse->fetchAll();

?>


<section id="block4">
        <div class="sousblock4">
            <div class="blocdroit">
                <div class="titreblockd">
                    <p class="titreblocdroit">Formation</p>
                </div>
                <div class="textblocd">
                    <div class="titleblocd">
                        <p class="texttitleblocd">Lycée</p>
                    </div>
                    <div class="textdroit">
                        <p class="texttextdroit">J’ai fait une seconde général puis je me suis orienté en Economie Social à partir de la première.</p>
                    </div>
                    <div class="textblocd">
                        <div class="titleblocd">
                            <p class="texttitleblocd">Ecole d'Informatique</p>
                        </div>
                        <div class="textdroit">
                            <p class="texttextdroit">Actuellement, je suis en première année d'Informatique.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="blocgauche">
           
                <div class="titreblockd">
                   <p class="titreblocdroit">Diplômes</p>
                </div>
                <div class="textblockg">
            <?php
            foreach($rows as $rows){
            echo
               
                    '<div class="line">',
                        '<div class="titleline">',
                            '<p class="titletext">'.$rows['DIPLOME'].'</p>',
                        '</div>',
                        '<div class="textline">',
                            '<p class="texteline">'.$rows['DATEDEBUT'].' - '. $rows['DATEFIN'].'</p>',
                        '</div>',
                   '</div>';
            }
            ?>
                </div>
            </div>
        </div>
    </section>