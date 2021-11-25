<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Poudlard</title>
</head>
<style>
    .red{
        border-radius: 5px;
        border: 2.5px solid red;
    }
</style>
<?php
    require_once('pdo.php');

    // $maisons = $connectionPDO->query('SELECT * FROM Maison');
    $maisonsPREP = $connectionPDO->prepare('SELECT * FROM Maison');
    $maisonsPREP->execute();
    $maisons = $maisonsPREP->fetchAll();

    $professeursPREP = $connectionPDO->prepare('SELECT idPersonne, Prenom, Personne.Nom FROM Personne JOIN Personne_has_Role ON Personne_has_Role.personne = Personne.idPersonne JOIN Role ON Role.idRole = Personne_has_Role.role WHERE Role.nom LIKE "prof%"');
    $professeursPREP->execute();
    $professeurs = $professeursPREP->fetchAll();

    $professeursFinaux = [];

    for($p = 0; $p < count($professeurs); $p ++){
        $currentProf = $professeurs[$p];
        $flag = false;
        for($m = 0; $m < count($maisons); $m ++){
            $currentMaison = $maisons[$m];
            if($currentMaison["directeur"] === $currentProf["idPersonne"]){
                $flag = true;
            }
        }
        if($flag == false){
            array_push($professeursFinaux, $currentProf);
        }
    }
    // print_r($professeursFinaux);


    if(
        $_POST["maison"] != "" &&
        $_POST["directeur"] != ""
    ){
        echo "<h1>Votre Maison à bien était crée !</h1>";
        $maisonsAdd = $connectionPDO->prepare('INSERT INTO Maison (idMaison, nom, directeur) VALUES ("'.v4().'", "'.$_POST["maison"].'", "'.$_POST["directeur"].'");');
        $maisonsAdd->execute();
    }
    print_r($_POST);
?>

<h2>
<?php
    echo "Veuillez créer une maison pour PoudLard"
?>
</h2>

<form action="#" method="POST">
    <label for="maison">
        Nom de la Maison :
        <input name="maison" class="<?php echo $_POST["maison"] === "" ? "red" : "" ?>" value="<?php echo $_POST["maison"] ?>">
    </br>
    <label for="directeur">
        Directeur de maison :
        <select name="directeur">
            <?php
                foreach($professeursFinaux as $prof){
                    echo("<option value=".$prof["idPersonne"].">".$prof["Nom"]."</option>");
                }
            ?>
        </select>
    </label>
    <input name="Validation" type="submit">
</form>