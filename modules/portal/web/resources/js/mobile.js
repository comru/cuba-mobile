
$(function() {	
	$('.c-listview').click(function(e) {
		var urlJsonForLookup = this.getAttribute("data-lookup"); 
		
		if (urlJsonForLookup) {
			var href = this.getAttribute("href");
			var selector = href + " [data-role = content]:first";
			var tableContent = $(selector);			

			if (tableContent) {
			$.ajax({
				url : urlBase + urlJsonForLookup,
				dataType : "json",
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					tableContent.html('ERROR!!! ' + textStatus);
				},
				success : function(result) {
					var table = generateTable(result, 0, 20);
					tableContent.html(table).trigger( "create" );					
				}
			});
			} else {
			 return false
			 }
		} else {
			return false;
		}
	});

	$('.custom').click(function(e) {
		var href = this.getAttribute("href");
		var selector = href + " [data-role = content]:first";
		var content = $(selector);
		content.html("<a href='#' class='ui-shadow ui-btn ui-corner-all ui-btn-icon-left ui-icon-plus ui-btn-b'>Add</a>");
	});
	
});

var urlBase = "http://localhost:8080/app-portal/";
function getSession() {
	var s = "";
	$.ajax({
		url : urlBase + "api/" + "login?u=admin&p=admin&l=ru",
		dataType : "text",
		async : false,
		success : function (result) {
			s = result;
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			console.log(textStatus);
		}
	});
	return s;
}

function find (e, q, view, first, max) {
	var s = getSession();
	var queryResult = null;
	$.ajax({
		url : urlBase + "api/" + "query.json?e=" + e + "&q=" + q + "&s=" + s + "&view=" + view + "&first=" + first + "&max=" + max,
		dataType : "json",
		async : false,
		success : function (result) {
			queryResult = result;
		}
	});	
	return queryResult;
}

function generateTable(model, first, max) {
		var table = "<table data-role='table' id='" + model.id + "' data-mode='" + model.dataMode + "' class='" + model.class + "'><thead><tr>";
		$.each(model.columns, function(key, value) {
			table += "<th data-priority='" + value.dataPriority + "'>" + value.caption + "</th>";	
		});
		      
		table += "</tr><tbody>";

		var queryResult = find(model.entity, model.query, model.view, first, max);
		$.each(queryResult, function(i, copy) {
			table += "<tr>";
			$.each(model.columns, function(i, column) {
				table += "<td>";
				table += getValueById(column.id, copy);
				table += "</td>";
			});
			table += "</tr>";
		});

		table += "</tbody></table>";
		return table;
}

function getValueById(property, copy) {
	var result = copy;
	$.each(property.split('.'), function(i, value) {
		result = result[value];
	});
	return result;
}