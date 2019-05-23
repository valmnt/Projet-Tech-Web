<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/css/style.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <title>Valentin Mont</title>
</head>
<!-- Pour accéder au site web : php -S localhost:4242 -t public dans le cmd et ensuite sur le web on tape localhost:4242 -->
<body>
    <script type="text/javascript" src="/js/main.js"></script>
    <?php
        require_once(__DIR__ ."./src/home_page.php");
        require_once(__DIR__ ."./src/presentation.php");
        require_once(__DIR__ ."./src/skills.php");
        require_once(__DIR__ ."./src/experiments.php");
        require_once(__DIR__ ."./src/qualifications_formations.php");
        require_once(__DIR__ ."./src/projects.php");
        require_once(__DIR__ ."./src/passions_contact.php");
    ?>

    <footer>
        <div class="blockfooter">
            <div class="contenufooter">
                <div class="madeby">
                    <p>Made by Mont Valentin</p>
                </div>
            </div>
            <div class="contenufooter">
                <div class="madeby2">
                    <div class="iconefooter"><a href="https://fr.linkedin.com/"><i class="fab fa-linkedin-in"></i></a></div>
                </div>
            </div>
        </div>
    </footer>

</body>

</html>