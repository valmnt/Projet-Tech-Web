<?php
$present_tab = [ 'Nom : MONT', 
                'Prénom: Valentin', 
                'Date de naissance: 15/01/2000', 
                'Mail: valentin.mont@ynov.com'];

$sizetab = sizeof($present_tab);

?>


<section id="block1">
        <div class="parentprofil">
            <p class="presentationtitle">Présentation</p>
        </div>
        <div class="blockone">
            <div class="blocka">

               
                    <div class="presentbar">
                    <?php
                        for ($i = 0; $i < $sizetab; $i++){
                            print_r ('<br>'.$present_tab[$i].'<br>');
                        }
                   ?>
                    </div>
                
               
                </div>
            </div>
        </div>
    </section>