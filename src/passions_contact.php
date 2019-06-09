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
if (isset($_POST['field1']) and isset($_POST['field2']) and isset($_POST['field3'])){
    $field1 = $_POST['field1'];
    $field2 = $_POST['field2'];
    $field3 = $_POST['field3'];
    
    $STH = $bdd->prepare('INSERT INTO contact(nom, mail, message) VALUES (:field1, :field2, :field3)');
    $STH->bindParam(':field1', $field1);
    $STH->bindParam(':field2', $field2);
    $STH->bindParam(':field3', $field3);
    $STH->execute();

}

$reponse = $bdd->query('SELECT * FROM passions');
$rows = $reponse->fetchAll();

?>

<section id="block6">
        <div class="block6gauche">
            <div class="titleblockgauche6">
                <p class="titlegauche">Mes Passions</p>
            </div>
            <div class="textblockgauche6">
                <div class="passionparent">
                    <p class="passiontext">
                    <?php 
                        foreach ($rows as $rows){
                            print ('<br/>'.$rows['NOM'].'<br/>');
                        }
                        ?>
                    </p>
                </div>
               
            </div>
        </div>
        <div class="block6droit">
            <div class="styleform">
                <h1>Contact Me</h1>
                <div class='alertbox'>
                <?php
                        if (isset($_POST['field1']) or isset($_POST['field2']) or isset($_POST['field3'])){
                        if(empty($_POST['field1']) or empty($_POST['field2']) or empty($_POST['field3']) ){
                            echo "<div class='alert' style='display:flex; align-items:center; justify-content:center;  width:40%; background-color:#727272; color:white; text-align:center; height:100%;'>Veuillez remplir tout les champs !</div>";
                        }
                    }
                        ?>
                        </div>
                <div class="info">
                    <div class="adressetelephone">
                        <div class="img"><i class="fas fa-map-marker-alt"></i></div>
                        <div class="textimg">
                            <p class="parentxttimg">43 route montferrat recours, Chuzelles</p>
                        </div>
                    </div>
                    <div class="adressetelephone">
                        <div class="img"><i class="fas fa-mobile"></i></div>
                        <div class="textimg">
                            <p class="parentxttimg">06.51.84.58.96</p>
                        </div>
                    </div>
                </div>
                <form action="index.php" method="POST">
                    <input type="text" name="field1" placeholder="Your Name" />
                    <input type="email" name="field2" placeholder="Email Address" />
                    <textarea name="field3" placeholder="Type your Message"></textarea>
                    <input type="submit" value="Send" />
                </form>
            </div>
        </div>
    </section>