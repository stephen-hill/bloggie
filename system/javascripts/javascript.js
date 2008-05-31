function Zebra() {
	var a = $$("content").elmsByTag("tr");
	for (var i = 0, b = a.length; i < b; i++) {
		$(a[i]).addEvent("mouseover", function() {
			$(this).addClass("hover");
		});
		$(a[i]).addEvent("mouseout", function() {
			$(this).removeClass("hover");
		});
		if (i % 2 != 0) {
			$(a[i]).addClass("odd");
		}
	}
}


DOMAssistant.DOMReady(Zebra);