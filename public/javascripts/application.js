
jQuery(function() {

	jQuery('.login').click(function() {
		jQuery('login').dialog({
			autoOpen: true,
			height: 200,
			width: 300,
			modal: true,
		});
	});

});

