
jQuery(function() {

	jQuery('#login-button').click(function() {

        jQuery('input#email').val('');
        jQuery('input#password').val('');

        login_button_position = jQuery('#login-button').position();

		jQuery('#login').dialog({
			title: 'Login details: (press Esc key to close)',
			resizable: false,
			position: [login_button_position.left-10, login_button_position.top+28],
			autoOpen: true,
			show: 'blind',
			height: 130,
			width: 280,
			modal: true,
			draggable: false,
			open: function(event, ui) { jQuery(".ui-dialog-titlebar-close").hide(); }
		});

	});

});

