
$( document ).ready(function() {
    const randomNumFact = Math.floor((Math.random() * 999999) + 100000); // Return a random number between 999999 and 100000
    const randomIdFact = Math.floor((Math.random() * 999999) + 100000);
    $('#numFact').append('NUM FACTURAaaaa: ' + randomNumFact);
    $('#idFact').append('ID FACTURAaaaa: ' + randomIdFact);
});