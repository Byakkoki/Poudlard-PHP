<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./givePoints.css">
    <title>Poudlard</title>
</head>
<body>

    <?php
        require_once('./pdo.php');
        // print_r($_POST);
        if($_POST["profID"] != "" && $_POST["points"] != "" && $_POST["maisonID"] != ""){
            $sql = 'INSERT INTO Points (idPoints, point, personne, maison, date) VALUES ("'.v4().'", '.$_POST["points"].', "'.$_POST["profID"].'", "'.$_POST["maisonID"].'", NOW());';
            // print_r($sql);
            $maisonsAdd = $connectionPDO->prepare($sql);
            $maisonsAdd->execute();
        }
        unset($_POST);
        // header("Location: ".$_SERVER['PHP_SELF']);
    ?>
    <div id="header">
        <h1> DLARDPOU</h1>
    </div>
    <div id="embleme">
        <img src="https://logo-marque.com/wp-content/uploads/2020/12/Hogwarts-Embleme.png">
    </div>
    <div id="maisons">
        <?php 
            $maisonsPREP = $connectionPDO->prepare('SELECT Maison.idMaison, Maison.nom, Maison.directeur, SUM(Points.point) AS "score" FROM Maison JOIN Points ON Points.maison = Maison.idMaison GROUP BY Maison.idMaison');
            $maisonsPREP->execute();
            $maisons = $maisonsPREP->fetchAll();


            $profsPREP = $connectionPDO->prepare('SELECT idPersonne, Personne.Nom FROM Personne JOIN Personne_has_Role ON Personne_has_Role.personne = Personne.idPersonne JOIN Role ON Personne_has_Role.role = Role.idRole WHERE Role.nom LIKE "Prof%" GROUP BY Personne.idPersonne');
            $profsPREP->execute();
            $profs = $profsPREP->fetchAll();

            $maisonsImages = [
                "GRYFFONDOR" => "https://i.pinimg.com/originals/d8/46/39/d84639a36b8efa3a5cfbdb7c69fc5eb7.png",
                "SERDAIGLE" => "https://ecole-poudlard.igr-iae.com/wp-content/uploads/2020/10/serdaigle-204x300.jpg",
                "SERPENTARD" => "https://ecole-poudlard.igr-iae.com/wp-content/uploads/2020/10/serpentard-217x300.jpg",
                "POUFSOUFFLE" => "https://lh3.googleusercontent.com/proxy/6wW_DWTRHHLRSvVEA42l9GObGehpV4o-CdttS7tv1Yjwhi5mXbSGdLquFNFX90vL0xPKS-tTgAqlT30zVGlNPjg3DJktHZvdSlnlq69TirQ4CGmnTCaV",
                "SEGPA" => "https://risibank.fr/cache/stickers/d755/75508-full.jpg",
                "FULLSTACK-2022" => "https://www.pngkey.com/png/full/973-9733590_facebook-and-developer-toolbars-rss-aggregators-before-emblem.png"
            ];

            foreach($maisons as $maison){


                

                // print_r($directeur);
                $directeurPrep = $connectionPDO->prepare('SELECT * FROM Personne WHERE idPersonne = "'.$maison["directeur"].'"');
                $directeurPrep->execute();
                $directeur = $directeurPrep->fetchAll();

                $studentsPrep = $connectionPDO->prepare('SELECT * FROM Personne WHERE maison = "'.$maison["idMaison"].'"');
                $studentsPrep->execute();
                $students = $studentsPrep->fetchAll();
                // print_r($students);

                $bannerHTML = "<div class='maisonBanner ".$maison["nom"]."'>";
                $bannerHTML .= "<h1 class='maisonDirecteur'>";
                $bannerHTML .= strtoupper($maison["nom"]);
                $bannerHTML .= "</h1>";
                $bannerHTML .= "<h2 class='maisonDirecteur'>";
                $bannerHTML .= $directeur[0]["Nom"];
                $bannerHTML .= "</h2>";
                $bannerHTML .= "<h2 class='maisonDirecteur'>";
                $bannerHTML .= $directeur[0]["Prenom"];
                $bannerHTML .= "</h2>";
                $bannerHTML .= "<image class='maisonEmbleme' src=".$maisonsImages[strtoupper($maison["nom"])].">";
                $bannerHTML .= "<h2 class='maisonDirecteur maisonScore'>";
                $bannerHTML .= $maison["score"];
                $bannerHTML .= "</h2>";
                foreach($students as $student){
                    $bannerHTML .= "<h3 class='maisonDirecteur maisonScore'>";
                    $bannerHTML .= $student["Nom"]." ".$student["Prenom"];
                    $bannerHTML .= "</h3>";
                }
                $bannerHTML .= "</div>";

                

                echo($bannerHTML);
            }
        ?>
    </div>
    <div>
        <form action="#" method="POST">
            <h1 style="text-align:center;">Ajouters des points à une maisons</h1>
            <div class="rowForm">
                <label for="profID" style="width:200px">
                    Professeur
                </label>
                <div style="width:10%" ></div>
                <select name="profID" style="width:200px">
                    <?php
                        foreach($profs as $prof){
                            echo("<option value=".$prof["idPersonne"].">".$prof["Nom"]."</option>");
                        }
                    ?>
                </select>
            </div>
            <div class="rowForm">
                <label for="points" style="width:200px">
                    Points
                </label>
                <div style="width:10%" ></div>
                <input name="points" style="width:200px" type="number">
            </div>
            <div class="rowForm">
                <label for="profID" style="width:200px">
                    Maison
                </label>
                <div style="width:10%" ></div>
                <select name="maisonID" style="width:200px">
                    <?php
                        foreach($maisons as $maison){
                            echo("<option value=".$maison["idMaison"].">".$maison["nom"]."</option>");
                        }
                    ?>
                </select>
            </div>
            <input type="submit" style="width:400px; margin: 10px auto 0px;">
        </form>
    </div>
</body>
</html>