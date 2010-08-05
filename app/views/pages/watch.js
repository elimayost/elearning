
jQuery('#watch_product').dialog({
			title: 'Player (press Esc key to close)',
			resizable: false,
			autoOpen: true,
			show: 'blind',
			height: 500,
			width: 500,
			modal: true,
			draggable: false,
			open: function(event, ui) { jQuery(".ui-dialog-titlebar-close").hide(); }
		});

<div id="watch_product" style="display: none">
  <% @product.name %>
</div>

