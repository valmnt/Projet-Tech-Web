<?php
$presentTab = [ 'Nom : MONT', 
                'Prénom: Valentin', 
                'Date de naissance: 15/01/2000', 
                'Mail: valentin.mont@ynov.com'];

$sizetab = sizeof($presentTab);

?>


<section id="block1">
        <div class="parentprofil">
            <p class="profil2">Présentation</p>
        </div>
        <div class="blockone">
            <div class="blocka">

                <div class="ligne">
                    <div class="presentbar">
                    <?php
                        for ($i = 0; $i < $sizetab; $i++){
                            print_r ('<br>'.$presentTab[$i].'<br>');
                        }
                   ?>
                    </div>
                </div>
               
                </div>
            </div>
        </div>
    </section>