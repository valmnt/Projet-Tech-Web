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
    $del = $bdd->prepare("DELETE FROM contact WHERE ID = $delete_item");
    $del->execute();
    
   
}

$reponse = $bdd->query('SELECT * FROM contact');
$rows = $reponse->fetchAll();


?>


<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>Liste de Messages</title>
    
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <main role="main">
    <div class="starter-template">
      <h1>Messages</h1>
      <p class="lead">Lisons les Messages !</p>
  </div>
        
        <div class="container">
            <?php
            if (empty($rows)) {
                echo
                "<div class='alert alert-success' role='alert'>",
                "La liste des messages est vide. 👌",
                "</div>";
            }
            else{
                echo 
                "<table class='table'>";
              
                foreach ($rows as $contact)
                 {
                    ?>
                    <tr>
                        <th width='250px'><?php echo $contact['NOM'] ?></th>
                        <th width='250px'><?php echo $contact['MAIL'] ?></th>
                        <th width='250px'><?php echo $contact['MESSAGE'] ?></th>
                        <td style='text-align: right'><a href='http://portfolio.local/admin/form/form.php/index.php?delete_item_index= <?php echo $contact['ID']; ?>'>Supprimer</a><td>
                    </tr>
                <?php   }
            }?>
                
            </table>
            <hr />
        </div>
    </main>
</body>
</html>
