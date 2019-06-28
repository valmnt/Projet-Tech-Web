<?php
require_once __DIR__.'/../../../src/template/footer.php';
require_once __DIR__.'/../../../src/template/header.php';
require_once __DIR__.'/../../../src/security/CheckLogin.php';
require_once __DIR__.'/../../../src/init/admin.php';

try
{
    $bdd = new PDO('mysql:host=localhost;dbname=techweb_bdd_mont;charset=utf8', 'root');
    $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}

if(isset($_GET['delete_item_index'])) {
    $delete_item = $_GET['delete_item_index'];
    $del = $bdd->prepare("DELETE FROM competence WHERE ID = $delete_item");
    $del->execute();
    
   
}

if (isset($_POST['compt'])) {
    $compt = $_POST['compt'];
    $niveau = $_POST['niveau'];

    $STH = $bdd->prepare('INSERT INTO competence(NOM, NIVEAU, IDINFO) VALUES (:compt, :niveau, 1)');
    $STH->bindParam(':compt', $compt);
    $STH->bindParam(':niveau', $niveau);
    $STH->execute();


}


$reponse = $bdd->query('SELECT * FROM competence');
$rows = $reponse->fetchAll();


?>


<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>Liste de compétences</title>
    
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <main role="main">
    <div class="starter-template">
      <h1>Skills</h1>
      <p class="lead">Personnalisons nos compétences !</p>
  </div>
        
        <div class="container">
            <?php
            if (empty($rows)) {
                echo
                "<div class='alert alert-success' role='alert'>",
                "La liste de compétence est vide. 👌",
                "</div>";
            }
            else{
                echo 
                "<table class='table'>";
              
                foreach ($rows as $compt)
                 {
                    ?>
                    <tr>
                        <th width='250px'><?php echo $compt['NOM'] ?></th>
                        <td> <?php echo $compt['NIVEAU'] ?></td>
                        <td style='text-align: right'><a href='http://portfolio.local/admin/skills/skills.php/index.php?delete_item_index= <?php echo $compt['ID']; ?>'>Supprimer</a><td>
                    </tr>
                <?php   }
            }?>
                
            </table>
            <hr />
            
            <h2>Ajouter une compétence</h2>
            <form action="skills.php" method="POST">
                <div class="form-group">
                    <label for="compt">compétences</label>
                    <input name="compt" type="compt" class="form-control" id="compt" placeholder="Nom de la compétence">
                </div>
                <div class="form-group">
                    <label for="niveau">Niveau</label>
                    <select class="form-control" name="niveau">
                        <option value="10">10</option>
                        <option value="20">20</option>
                        <option value="30">30</option>
                        <option value="40">40</option>
                        <option value="50">50</option>
                        <option value="60">60</option>
                        <option value="70">70</option>
                        <option value="80">80</option>
                        <option value="90">90</option>
                        <option value="100">100</option>
                    </select>
                </div>
                
                <button type="submit" class="btn btn-primary">Ajouter une compétence</button>
            </form>
        </div>
    </main>
</body>
</html>
