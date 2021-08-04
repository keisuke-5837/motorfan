$( '.syncer-acdn' ).onclick( function()
{
	var target = $( this ).data( 'target' ) ;

	$( '#' + target ).slideToggle() ;
} ) ;