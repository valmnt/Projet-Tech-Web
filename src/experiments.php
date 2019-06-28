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


$answer = $bdd->query('SELECT structures.NOM, POSTE, DATEDEFIN FROM structures, experience WHERE structures.id = experience.IDSTRUCTURES');
$row = $answer->fetchAll();


?>

<section id="block3">
        <section id="block3">
            <div class="experiencepro">
                <div class="titlexperience">
                    <p class="titlexpro">Expériences Professionnelles</p>
                </div>


                <div class="textexperience">
                    <div class="textpro">
                    
                    
                    <?php
                    foreach($row as $row){
                        echo 
                        "<div class='textpro1' style='width:25%; height:100%; margin-right:4%;'>",
                        "<div class='exp' style='width: 100%; height: 25%; display:flex;'>",
                        "<div class='elementexp' style='width:100%; height: 100%;'>$row[NOM]</div></div>",

                       
                        "<div class='exp' style='width: 100%; height: 25%; display:flex;'>",
                        "<div class='elementexp' style='width:100%; height: 100%;'>$row[POSTE]</div></div>",

                        
                        "<div class='exp' style='width: 100%; height: 25%; display:flex;'>",
                        "<div class='elementexp' style='width:100%; height: 100%;'>$row[DATEDEFIN]</div></div></div>";

                    }
                    ?>
                    
                    </div>

                </div>

                <div class="trait"></div>

                <div class="titlexperience">
                    <p class="titlexpro">Séjour linguistique </p>
                </div>
                <div class="textexperience">
                    <p class="textpro">Depuis l’âge de 11 ans j’ai eu la chance de pouvoir faire de multiples séjours linguistiques. American Village en 2011 et 2012, L’Angleterre en 2013,2014 et 2015, L’irlande en 2016 et les Etats-Unis en 2017.
                    </p>
                </div>
            </div>
        </section>
    </section>
