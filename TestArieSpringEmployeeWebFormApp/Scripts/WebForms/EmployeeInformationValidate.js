$("input[name*='txtEmployeePhone']").mask('(000)0000-0000');
$("input[name*='txtEmployeePhone']").prop('placeholder', '(503)7171-7171');
$("input").prop('required', true);


$(".cla_cancelar").on('click', function (e) {
    e.preventDefault();

    window.location.href = "EmployeeInformation";
});