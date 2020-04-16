function myFunc() {
  var input_number = document.getElementById("price-form").value;
  if (input_number >= 300 && input_number <= 9999999) {
    input_number = "¥ " + input_number * 0.03
  } else {
    input_number = "ー"
  }
  document.getElementById("item_price_number").innerHTML = input_number;
};

$(function(){
  $('.file').change(function(){
    var file = $('input[type="file"]').prop('files')[0];
    var fileReader = new FileReader();

    fileReader.onloadend = function() {
      var src = fileReader.result
      var html= `
      <div>
        <img src="${src}">
        <bott
      </div>
      `

      $('.image_box').append(html);
    }
    
    fileReader.readAsDataURL(file);
  });
});
  
    var input_number = document.getElementById("price-form").value;
    if (input_number >= 300 && input_number <= 9999999) {
      input_number = "¥ " + input_number * 0.03
    } else {
      input_number = "ー"
    }
    document.getElementById("item_price_number").innerHTML = input_number;
  };
  

