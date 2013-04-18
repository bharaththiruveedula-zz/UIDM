$(document).ready(function(){
	$('#Step1').slideDown();
	$('#Step2').slideUp();
	$('#Step3').slideUp();
	$('#Step4').slideUp();
	$('#step1').click(function(){
		$('#Step1').slideDown();
		$('.nav li').removeClass('active');
		$(this).parent().addClass('active');
		$('#Step2').slideUp();
		$('#Step3').slideUp();
		$('#Step4').slideUp();
	});
	$('#step2').click(function(){
		$('#Step2').slideDown();
		$('.nav li').removeClass('active');
		$(this).parent().addClass('active');
		$('#Step1').slideUp();
		$('#Step3').slideUp();
		$('#Step4').slideUp();
	});
	$('#step3').click(function(){
		$('#Step3').slideDown();
		$('.nav li').removeClass('active');
		$(this).parent().addClass('active');
		$('#Step2').slideUp();
		$('#Step1').slideUp();
		$('#Step4').slideUp();
	});
	$('#step4').click(function(){
		$('#Step4').slideDown();
		$('.nav li').removeClass('active');
		$(this).parent().addClass('active');
		$('#Step2').slideUp();
		$('#Step3').slideUp();
		$('#Step1').slideUp();
	});
	$('#dob').datepicker({
		changeMonth: true,
		changeYear: true
	});
});