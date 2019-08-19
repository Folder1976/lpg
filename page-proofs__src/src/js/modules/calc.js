$('.js-calc').on('click', function(e){
  // отменяем отправку формы
  e.preventDefault();

  // переменные
  var form = $(this).closest('form');
  var vGC = form.find('[name=gasoline-consumption]').val();
  var vM = form.find('[name=mileage]').val();
  var vC = form.find('[name=cylinders]').val();
  var vEP = form.find('[name=engine-power]').val();
  // console.log(vGC, vM, vC, vEP);




  // рассчет...
  // ....



  // выводим результат
  $('.s-calc-result').show(300);

});
