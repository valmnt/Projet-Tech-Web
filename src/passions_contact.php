<?php
require_once __DIR__.'/../vendor/autoload.php';
try
{
    $bdd = new PDO('mysql:host=localhost;dbname=techweb_bdd_mont;charset=utf8', 'root');
    $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}

if(!empty($_POST['field1']) and !empty($_POST['field2']) and !empty($_POST['field3'])) {
    $field1 = $_POST['field1'];
    $field2 = $_POST['field2'];
    $field3 = $_POST['field3'];
    
    $STH = $bdd->prepare('INSERT INTO contact(nom, mail, message) VALUES (:field1, :field2, :field3)');
    $STH->bindParam(':field1', $field1);
    $STH->bindParam(':field2', $field2);
    $STH->bindParam(':field3', $field3);
    $STH->execute();

    $transport = (new Swift_SmtpTransport('smtp.googlemail.com', 587,'tls'))
    ->setUsername ('valentincurriculum@gmail.com')
    ->setPassword('V@lentin13');
    $mailer = new Swift_Mailer($transport);
    $message = (new Swift_Message('Nouveau message sur le CV'))
    ->setFrom(['valentincurriculum@gmail.com' => 'Mail CV'])
    ->setTo(['vmvdesigne@gmail.com' => 'Valentin'])
    ->setBody("T'as reçu un nouveau message, vas vite le checker 😃 !");
    $result = $mailer->send($message);
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
