<?php

function run() {
  $nbTestsReussis = 0;
  $nbTestsTotal = 0;

  // Appeler toutes les fonctions de test
  $fonctionsDeTest = get_class_methods("TestEnvironnement");
  foreach ($fonctionsDeTest as $fonction) {
    if (strpos($fonction, "test") === 0) {
      // C'est une fonction de test, on l'exécute
      $nbTestsTotal++;
      $testEnvi = new TestEnvironnement(); 
      $testEnvi->$fonction();
      $nbAssertionsReussies = $testEnvi->getNbAssertionsReussies();
      $nbAssertionsTotal = $testEnvi->getNbAssertionsTotal();
      $nbTestsReussis += ($nbAssertionsReussies == $nbAssertionsTotal) ? 1 : 0;
      echo "<p>Test de $fonction effectué</p>";
    }
  }

  // Afficher le résultat
  echo "Nombre de tests réussis : $nbTestsReussis / $nbTestsTotal\n";
}

class TestEnvironnement {
  private $nbAssertionsReussies = 0;
  private $nbAssertionsTotal = 0;

  //Rentrer les fonctions de tests ici

  function testVerificationDoublons() {
    require_once('../model/insertAliments.php');
    // Test avec un tableau sans doublons
    $tabSansDoublons = array("pommes", "bananes", "poires");
    $resultat = verificationDoublons($tabSansDoublons);
    $this->assertTrue($resultat);

    // Test avec un tableau avec des doublons
    $tabAvecDoublons = array("pommes", "bananes", "pommes");
    $resultat = verificationDoublons($tabAvecDoublons);
    $this->assertFalse($resultat);

    // Test avec un tableau vide
    $tabVide = array();
    $resultat = verificationDoublons($tabVide);
    $this->assertTrue($resultat);
  }

  function testGetAliments(){
    require_once("../model/recupNomAliments.php");
    $types = json_decode(getTypesAliment(), true);
    $this->assertIsGreater(0, count($types));

    foreach ($types as $element) {
      //Verification de la forme du résultat
      $this->assertTrue(isset($element["alim_ssgrp_nom_fr"]));
      if(!isset($element["alim_ssgrp_nom_fr"])) continue;
      
      $aliments = json_decode(getAliments($element["alim_ssgrp_nom_fr"]), true);
      $this->assertIsGreater(0, count($aliments));

      foreach ($aliments as $alim) {
        //Verification de la forme du résultat
        $this->assertTrue(isset($alim["alim_nom_fr"]));

      }

    }
  }















  public function assertTrue($condition) {
    $this->nbAssertionsTotal++;
    if ($condition) {
      $this->nbAssertionsReussies++;
    } else {
      echo "Assertion échouée : $condition n'est pas vrai\n";
    }
  }

  public function assertFalse($condition) {
    $this->nbAssertionsTotal++;
    if (!$condition) {
      $this->nbAssertionsReussies++;
    } else {
      echo "Assertion échouée : $condition n'est pas faux\n";
    }
  }

  public function assertEquals($attendu, $obtenu) {
    $this->nbAssertionsTotal++;
    if ($attendu === $obtenu) {
      $this->nbAssertionsReussies++;
    } else {
      echo "Assertion échouée : $attendu n'est pas égal à $obtenu\n";
    }
  }

  public function assertBetween($attenduDebut, $attenduFin, $obtenu) {
    $this->nbAssertionsTotal++;
    if ($attenduDebut <= $obtenu && $attenduDebut >= $obtenu) {
      $this->nbAssertionsReussies++;
    } else {
      echo "Assertion échouée : $obtenu n'est pas entre $attenduDebut et $attenduFin\n";
    }
  }

  public function assertIsGreater($attendu, $obtenu) {
    $this->nbAssertionsTotal++;
    if ($attendu < $obtenu) {
      $this->nbAssertionsReussies++;
    } else {
      echo "Assertion échouée : $obtenu n'est pas plus grand que $attendu\n";
    }
  }

  public function getNbAssertionsReussies() {
    return $this->nbAssertionsReussies;
  }

  public function getNbAssertionsTotal() {
    return $this->nbAssertionsTotal;
  }
}

require("tests.tpl");

?>