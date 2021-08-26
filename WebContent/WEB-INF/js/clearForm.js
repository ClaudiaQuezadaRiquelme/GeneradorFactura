$( document ).ready(function() {
    $( '#clearForm' ).click(()=> {
        $( '#valvula-count' ).val(null);
        $( '#turbo-count' ).val(null);
        $( '#freno-count' ).val(null);
        $( '#refri-count' ).val(null);
        $( '#plumillas-count' ).val(null);
        $( '#nombre' ).val(null);
        $( '#empresa' ).val(null);
        $( '#rut' ).val(null);
        $( '#direccion' ).val(null);
        $( '#ciudad' ).val(null);
        $( '#pais' ).val(null);
    });
});