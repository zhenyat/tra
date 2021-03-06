// Load the Visualization API and the corechart package.
google.charts.load('current', {'packages':['corechart']});

// Set a callback to run when the Google Visualization API is loaded.
google.charts.setOnLoadCallback(drawChart);
//google.charts.setOnLoadCallback(drawBtcChart);
//google.charts.setOnLoadCallback(drawEthChart);
//google.charts.setOnLoadCallback(drawLtcChart);

function drawChart() {
  var data = google.visualization.arrayToDataTable(
    gon.btc_candles,
    true          // Treat first row as data as well
    );

  var options = {
    title:       gon.pair,
    legend:      'none',
    width:       1200,
    height:      900,
    seriesType: "candlesticks",
    series: { 1: {type: "line"} },
    bar:         { groupWidth: '61.8%' }, // 61.8% - golden ratio (default); 100% - removes space between bars.
    candlestick: {
      fallingColor: { strokeWidth: 0, fill: '#a52714' },  // red
      risingColor:  { strokeWidth: 0, fill: '#0f9d58' }   // green
    }
  };

//  var chart = new google.visualization.CandlestickChart(document.getElementById('chart_div'));
  
  // Instantiate and draw our chart, passing in some options.
  var chart = new google.visualization.ComboChart(document.getElementById(gon.pair+'_chart_div'));
//  var chart = new google.visualization.CandlestickChart(document.getElementById('chart_div'));
  chart.draw(data, options);
};
function drawBtcChart() {
  var data = google.visualization.arrayToDataTable(
    gon.btc_candles,
    true          // Treat first row as data as well
    );

  var options = {
    title:       gon.pair,
    legend:      'none',
    width:       1200,
    height:      900,
    seriesType: "candlesticks",
    series: { 1: {type: "line"} },
    bar:         { groupWidth: '61.8%' }, // 61.8% - golden ratio (default); 100% - removes space between bars.
    candlestick: {
      fallingColor: { strokeWidth: 0, fill: '#a52714' },  // red
      risingColor:  { strokeWidth: 0, fill: '#0f9d58' }   // green
    }
  };

//  var chart = new google.visualization.CandlestickChart(document.getElementById('chart_div'));
  
  // Instantiate and draw our chart, passing in some options.
  var chart = new google.visualization.ComboChart(document.getElementById('btc_chart_div'));
//  var chart = new google.visualization.CandlestickChart(document.getElementById('chart_div'));
  chart.draw(data, options);
};

function drawEthChart() {
  var data = google.visualization.arrayToDataTable(
    gon.eth_candles,
    true          // Treat first row as data as well
    );

  var options = {
    title:       gon.pair,
    legend:      'none',
    width:       1200,
    height:      900,
    seriesType: "candlesticks",
    series: { 1: {type: "line"} },
    bar:         { groupWidth: '61.8%' }, // 61.8% - golden ratio (default); 100% - removes space between bars.
    candlestick: {
      fallingColor: { strokeWidth: 0, fill: '#a52714' },  // red
      risingColor:  { strokeWidth: 0, fill: '#0f9d58' }   // green
    }
  };

//  var chart = new google.visualization.CandlestickChart(document.getElementById('chart_div'));
  
  // Instantiate and draw our chart, passing in some options.
  var chart = new google.visualization.ComboChart(document.getElementById('eth_chart_div'));
//  var chart = new google.visualization.CandlestickChart(document.getElementById('chart_div'));
  chart.draw(data, options);
};

function drawLtcChart() {
  var data = google.visualization.arrayToDataTable(
    gon.ltc_candles,
    true          // Treat first row as data as well
    );

  var options = {
    title:       gon.pair,
    legend:      'none',
    width:       1200,
    height:      900,
    seriesType: "candlesticks",
    series: { 1: {type: "line"} },
    bar:         { groupWidth: '61.8%' }, // 61.8% - golden ratio (default); 100% - removes space between bars.
    candlestick: {
      fallingColor: { strokeWidth: 0, fill: '#a52714' },  // red
      risingColor:  { strokeWidth: 0, fill: '#0f9d58' }   // green
    }
  };

//  var chart = new google.visualization.CandlestickChart(document.getElementById('chart_div'));
  
  // Instantiate and draw our chart, passing in some options.
  var chart = new google.visualization.ComboChart(document.getElementById('ltc_chart_div'));
//  var chart = new google.visualization.CandlestickChart(document.getElementById('chart_div'));
  chart.draw(data, options);
};