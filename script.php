<?php
// Exécuter git init
$command = 'git init';
$output = shell_exec($command);

// Exécuter git pull
$command = 'git pull';
$output = shell_exec($command);

// Attendre que le git pull soit terminé
while (strpos($output, 'Already up to date.') === false) {
    sleep(1); // Attendre une seconde avant de vérifier à nouveau
    $output = shell_exec($command);
}

// Continuer le script
echo 'Le git pull est terminé !';
?>
