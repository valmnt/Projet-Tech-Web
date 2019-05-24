<?php

$passions_tab = ['Football American', 
                'Kikboxing', 
                'Jeux videos', 
                'Informatique'];


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
                        for ($i = 0; $i < 4; $i++){
                            print ('<br/>'.$passions_tab[$i].'<br/>');
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
                <form>
                    <input type="text" name="field1" placeholder="Your Name" />
                    <input type="email" name="field2" placeholder="Email Address" />
                    <textarea name="field3" placeholder="Type your Message"></textarea>
                    <input type="submit" value="Send" />
                </form>
            </div>
        </div>
    </section>