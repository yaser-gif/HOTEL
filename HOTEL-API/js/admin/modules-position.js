

$(function(){

	//
	// Used for the modules listing
	//
	if ($("#position_filer").length != 0)
	{
		var panel_selection = $("#modules-position-selection-panel");
		var panel_selection_single_selection = panel_selection.find("#modules-position-single-selection");
		var panel_selection_multiple_selection = panel_selection.find("#modules-position-multiple-selection");

		var panel_selection_original_y = panel_selection.offset().top;
		var panel_selection_original_y_top_margin = 111;

		panel_selection.css("position", "relative").hide();

		$(window).on("scroll", function (event) {
			var scroll_top = $(window).scrollTop();
			panel_selection.css(
				"top",
				scroll_top < panel_selection_original_y_top_margin
					? 0
					: scroll_top - panel_selection_original_y + panel_selection_original_y_top_margin
			);
		});

		var modules_list = $(".modules-position-checkbox");

		modules_list.on("change", function () {

			var checked_count = modules_list.filter(":checked").length;

			panel_selection.hide();
			panel_selection_single_selection.hide();
			panel_selection_multiple_selection.hide();

			if (checked_count == 1)
			{
				panel_selection.show();
				panel_selection_single_selection.show();
			}
			else if (checked_count > 1)
			{
				panel_selection.show();
				panel_selection_multiple_selection.show();
				panel_selection_multiple_selection.find("#modules-position-selection-count").html(checked_count);
			}
		});

		panel_selection.find("button").click(function () {
			$("button[name='unhookform']").trigger("click");
		});

		var hooks_list = [];
		$("section.hook_panel").find(".hook_name").each(function () {
			var $this = $(this);
			hooks_list.push({
				'title': $this.html(),
				'element': $this,
				'container': $this.parents(".hook_panel")
			});
		});

		var show_modules = $("#show_modules");
		show_modules.select2();
		show_modules.bind("change", function () {
			modulesPositionFilterHooks();
		});

		var hook_position = $("#hook_position");
		hook_position.bind("change", function () {
			modulesPositionFilterHooks();
		});

		$('#hook_search').bind('input', function () {
			modulesPositionFilterHooks();
		});

		function modulesPositionFilterHooks()
		{
			var id;
			var hook_name = $('#hook_search').val();
			var module_id = $("#show_modules").val();
			var position = hook_position.prop('checked');
			var regex = new RegExp("(" + hook_name + ")", "gi");

			for (id = 0; id < hooks_list.length; id++)
			{
				hooks_list[id].container.toggle(hook_name == "" && module_id == "all");
				hooks_list[id].element.html(hooks_list[id].title);
				hooks_list[id].container.find('.module_list_item').removeClass('highlight');
			}

			if (hook_name != "" || module_id != "all")
			{
				var hooks_to_show_from_module = $();
				var hooks_to_show_from_hook_name = $();

				if (module_id != "all")
					for (id = 0; id < hooks_list.length; id++)
					{
						var current_hooks = hooks_list[id].container.find(".module_position_" + module_id);
						if (current_hooks.length > 0)
						{
							hooks_to_show_from_module = hooks_to_show_from_module.add(hooks_list[id].container);
							current_hooks.addClass('highlight');
						}
					}

				if (hook_name != "")
					for (id = 0; id < hooks_list.length; id++)
					{
						var start = hooks_list[id].title.toLowerCase().search(hook_name.toLowerCase());
						if (start != -1)
						{
							hooks_to_show_from_hook_name = hooks_to_show_from_hook_name.add(hooks_list[id].container);
							hooks_list[id].element.html(hooks_list[id].title.replace(regex, '<span class="highlight">$1</span>'));
						}
					}

				if (module_id == "all" && hook_name != "")
					hooks_to_show_from_hook_name.show();
				else if (hook_name == "" && module_id != "all")
					hooks_to_show_from_module.show();
				else
					hooks_to_show_from_hook_name.filter(hooks_to_show_from_module).show();
			}

			if (!position)
				for (id = 0; id < hooks_list.length; id++)
					if (hooks_list[id].container.is('.hook_position'))
						hooks_list[id].container.hide();
		}
	}

	//
	// Used for the anchor module page
	//
	$("#hook_module_form").find("select[name='id_module']").change(function(){

		var $this = $(this);
		var hook_select = $("select[name='id_hook']");
		var optgroup_unregistered = $('#hooks_unregistered');
		var optgroup_registered = $('#hooks_registered');

		if ($this.val() != 0)
		{
			hook_select.find("option").remove();

			$.ajax({
				type: 'POST',
				url: 'index.php',
				async: true,
				dataType: 'json',
				data: {
					action: 'getPossibleHookingListForModule',
					tab: 'AdminModulesPositions',
					ajax: 1,
					module_id: $this.val(),
					token: token
				},
				success: function (jsonData) {
					if (jsonData.hasError)
					{
						var errors = '';
						for (var error in jsonData.errors)
							if (error != 'indexOf')
								errors += $('<div />').html(jsonData.errors[error]).text() + "\n";
					}
					else
					{
						for (var current_hook = 0; current_hook < jsonData.length; current_hook++)
						{
							var hook_description = '';
							if(jsonData[current_hook].description != '')
								hook_description = ' ('+jsonData[current_hook].description+')';
							var is_registered = jsonData[current_hook].registered;
							var optgroup = is_registered ? optgroup_registered : optgroup_unregistered;
							optgroup.append('<option value="'+jsonData[current_hook].id_hook+'">'+jsonData[current_hook].name+hook_description+'</option>');
						}

						hook_select.prop('disabled', false);
					}
				}
			});
		}
	})

});
