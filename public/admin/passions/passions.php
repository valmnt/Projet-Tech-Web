<?php
require_once(__DIR__.'/../../../src/template/footer.php');
require_once(__DIR__.'/../../../src/template/header.php');
require_once(__DIR__.'/../../../src/security/CheckLogin.php');
require_once(__DIR__.'/../../../src/init/admin.php');

try
{
  $bdd = new PDO('mysql:host=localhost;dbname=techweb_bdd_mont;charset=utf8', 'root');
  $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}

if(isset($_GET['delete_item_index'])){
    $delete_item = $_GET['delete_item_index'];
    $del = $bdd->prepare("DELETE FROM passions WHERE ID = $delete_item");
    $del->execute();
    
   
}

if (isset($_POST['passion'])){
$passion = $_POST['passion'];

$STH = $bdd->prepare('INSERT INTO passions(NOM, IDINFOPERSO) VALUES (:passion, 1)');
$STH->bindParam(':passion', $passion);
$STH->execute();


}


$reponse = $bdd->query('SELECT * FROM passions');
$rows = $reponse->fetchAll();


?>


<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>Liste de passions</title>
    
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <main role="main">
    <div class="starter-template">
      <h1>Passions</h1>
      <p class="lead">Personnalisons nos passions !</p>
  </div>
        
        <div class="container">
          <?php
          if (empty($rows)){
            echo
            "<div class='alert alert-success' role='alert'>",
                "La liste de passion est vide. 👌",
            "</div>";
          }
          else{
           echo 
            "<table class='table'>";
              
            foreach ($rows as $passion)
                 {
                ?>
                    <tr>
                        <th width='250px'><?= $passion['NOM'] ?></th>
                        <td style='text-align: right'><a href='http://portfolio.local/admin/passions/passions.php/index.php?delete_item_index= <?php echo $passion['ID']; ?>'>Supprimer</a><td>
                    </tr>
              <?php   }
                }?>
                
            </table>
            <hr />
            
            <h2>Ajouter une passion</h2>
            <form action="passions.php" method="POST">
                <div class="form-group">
                    <label for="passion">passions</label>
                    <input name="passion" type="passion" class="form-control" id="passion" placeholder="Nom de la passion">
                </div>
            
                <button type="submit" class="btn btn-primary">Ajouter une passion</button>
            </form>
        </div>
    </main>
</body>
</html>
