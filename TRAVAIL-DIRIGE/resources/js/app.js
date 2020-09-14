/* *************************************************** */
/* PARTIE 1 ==> DECLARATION DES VARIABLES DU PROGRAMME */
/* *************************************************** */
let scoresGlobals = [0, 0];
let scoresEncours = 0;
let joueurActif = 1;
/* ***************************************** */
/* PARTIE 2 ==> INITIALISATION DU GUI DU JEU */
/* ***************************************** */
document.getElementById(`score-1`).textContent = '0';
document.getElementById(`score-2`).textContent = '0';
document.getElementById(`encours-1`).textContent = '0';
document.getElementById(`encours-2`).textContent = '0';
document.querySelector(`.de`).style.display = 'none';

/* ********************************************************** */
/* PARTIE 3 ==> GESTION DU CLICK SUR LE BOUTON 'LANCEZ LE DE' */
/* ********************************************************** */
//On cible le bouton à l'aide de sa classe
let btnLancezLeDe = document.querySelector(`.btn-lancer`);
//On attache l'evenement de click à notre bouton avec une fonction anonyme lambda.
btnLancezLeDe.addEventListener('click', () => {
    //Je simule le lance le Dé et encapsule le resultat dans la variable de
    let de = Math.floor(Math.random() * 6) + 1;
    //Je met à jour j'image du dé dans le GUI
    let domDe = document.querySelector('.de');
    domDe.style.display = 'block';
    domDe.src = `resources/images/de-${de}.png`;
    //On met à jour le score en cours du joueur actif sauf si le lancer vaut 1
    if (de !== 1) {
        //Ici, le lancer à sorti une valeur != 1.
        // On met donc à jour le score en cours du joueur actif
        scoreEnCours += de;
        document.getElementById(`encours-${joueurActif}`).textContent = scoreEnCours;
    } else {
        //Ici, le lancer à sorti la valeur 1.
        // On passe donc la main au joueur suivant
        //J'utilise une expression ternaire pour faire l'alternance entre le deux joueurs
        joueurActif === 1 ? joueurActif = 2 : joueurActif = 1;
        //J'initilise le score en cours du joueur actif à la valeur 0
        scoreEnCours = 0;
        //Je mets à jour le GUI du score en cours pour le joueur actif
        document.getElementById(`encours-${joueurActif}`).textContent = '0';
        //Je mets à jour le GUI du voyant actif pour le joueur actif
        document.querySelector('.joueur-1-panel').classList.toggle('active');
        document.querySelector('.joueur-2-panel').classList.toggle('active');
        //Je mets à jour le GUI du Dé en le masquant
        document.querySelector('.de').style.display = 'none';
    }
});



