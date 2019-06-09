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

$answer = $bdd->query('SELECT DOMAINE, NOM FROM formation, structures WHERE structures.id = formation.IDSTRUCTURES and formation.id IN (1,2)');
$row = $answer->fetchAll();


?>


<section id="block4">
        <div class="sousblock4">
            <div class="blocdroit">
                <div class="titreblockd">
                    <p class="titreblocdroit">Formation</p>
                </div>
                  <div class='textblocd'>
                <?php
                foreach($row as $row){
                echo
             
                    "<div class='titleblocd'>",
                       " <p class='texttitleblocd'>$row[DOMAINE]</p>",
                    "</div>",
                    "<div class='textdroit'>",
                    "<p class='texttextdroit'>$row[NOM]</p>",
                "</div>";
                }
                
                ?>
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