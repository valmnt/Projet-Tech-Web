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

$reponse = $bdd->query('SELECT * FROM infoperso');
$rows = $reponse->fetchAll();

?>


<section id="block1">
        <div class="parentprofil">
            <p class="presentationtitle">Présentation</p>
        </div>
        <div class="blockone">
            <div class="blocka">

               
                    <div class="presentbar">
                    <?php
                        foreach ($rows as $rows){
                            print_r ('<br>Nom :'.$rows['LASTNAME'].'<br>');
                            print_r ('<br>Prenom :'.$rows['FIRSTNAME'].'<br>');
                            print_r ('<br>Date de naissance :'.$rows['BIRTHDAY'].'<br>');
                            print_r ('<br>Mail :'.$rows['MAIL'].'<br>');
                        }
                   ?>
                    </div>
                
               
                </div>
            </div>
        </div>
    </section>