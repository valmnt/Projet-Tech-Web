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


$reponse = $bdd->query('SELECT * FROM experience_pro');
$rows = $reponse->fetchAll();




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
                    
                        foreach($rows as $rows){
                           echo 
                          "<div class='exp' style='width: 100%; height: 25%; display:flex;'>
                          <div class='elementexp' style='width:100%; height: 100%;'>$rows[company]</div>
                          <div class='elementexp' style='width:100%; height: 100%;'>$rows[date_start]</div>
                          <div class='elementexp' style='width:100%; height: 100%;'>$rows[date_end]</div>
                          <div class='elementexp' style='width:100%; height: 100%;'>$rows[posts]</div></div>";
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