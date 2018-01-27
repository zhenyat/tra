/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function changeLastPrice(x) {

//  alert("gon pair names: " + gon.pair_names);

  var coinId = parseInt((document.getElementById('run_coin_id').value)) - 1;
//alert(typeof(parseInt(coinId.value)) + ": " +parseInt(coinId.value));

//  pair = gon.pair_names[parseInt(coinId.value)-1];
  pair = gon.pair_names[coinId];
  alert(pair);
  
//  var keys = Object.keys(gon.tickers);
//  var sec_keys = Object.keys(keys);
//  var tre_keys = Object.keys(sec_keys);
//  alert("LAST: " + tre_keys);
  
  values = Object.values(gon.tickers);
  alert("values: " + values['eth_usd']);
  document.getElementById('run_last').value = 100;
  var runLast = document.getElementById('run_last').value;
  //alert("coin ID: " + coinId.value + " Last: " + runLast + " x: " + x);
}


function changeStopLoss() {
  runKind = document.getElementById('run_kind');
  alert("Run Kind: " + runKind.value);
}