$(function() {
  var rc = new html5jp.graph.radar("wineRadar");
  if( ! rc ) { return; }

  var items = [
    ["評価", 5, 2, 4, 5, 3],
	["商品B", 3, 4, 3, 4, 1]
 ];

  var params = {
	  aCap: ["ボリューム", "酸味", "タンニン", "果実味", "甘み"],
	  aMax: 5,
	  aMin: 0,
	  chartShape: "circle",
	  faceColors: ["green", "olive"],
	  aLinePositions: [0,1,2,3,4,5]
  };
  rc.draw(items, params);

});

$(function() {
  var wineList = [
    'aaaaa',
    'bbbbb',
    'ccccc',
  ];

  //  $('#wname').autocomplete(
  //    {
  //  	  source: wineList
  //	}
  //  );

});
