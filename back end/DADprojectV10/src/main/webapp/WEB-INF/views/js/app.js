var time;
var hour;
var minute;
var duration = 1;
var selectedDay = $('.room-id').data('selectedday');
if(selectedDay){
selectedDay = selectedDay.split('-');
}
$('select[name=duration]').change( function(){
duration = $(this).val();
});
$('select[name=minute]').change( function(){
minute = $(this).val();
});
$('.reserve').click(function(){
var self = $(this);
hour = self.data('hour');
minute = self.data('minute');
$('#reserveModal').modal('show')
$('.reserve_time').val(hour);
$('.reserve_time_minute').val(minute);
});
$('.booking_form').submit(function(e){
e.preventDefault();
var hour = $(this).find('.hour').data('hour');
var data = $(this).serialize();
$.post('/room/reserve',data+ "&time="+hour, function( data ) {
if(data == 'success'){
alert('Забронировано');
$('#reserveModal').modal('hide');
location.reload();
}
if(data == 'notfree'){
alert('В этом промежутке времени есть забронированные');
}
if(data == 'title_required'){
alert('Вы не указали тему встречи');
}
if(data == 'null'){
alert('Вы не указали длительность');
}
});
});

$('.cancel').click(function(){
var remove_id = $(this).data('key');
var result = prompt('Введите причину отмены брони!');
if(result){
$.post('/room/reserve/delete',{id:remove_id,info:result}, function( data ) {
if(data == 'success'){
alert('Бронь снята');
location.reload();
}
if(data == 'permission'){
alert('У вас нет прав отменять!');
}
if(data == 'noid'){
alert('Это нельзя отменить');
}
});
}
else{
// alert('Вам нужно ввести причину отмены!');
var _self = $(this).closest('.event');
var _content = $(this).closest('.content');
_self.find('.content').slideToggle();
_content.append('<span style="color:red">Вам нужно ввести причину отмены!</span>');
}

});

$('.approve').click(function(){
var remove_id = $(this).data('key');
var result = confirm('Вы точно хотите подтвердить бронь?');
if(result){
$.post('/room/reserve/approve',{id:remove_id}, function( data ) {
if(data == 'success'){
alert('Бронь подтверждена');
location.reload();
}
if(data == 'permission'){
alert('У вас нет прав отменять!');
}
if(data == 'noid'){
alert('Нету такой брони');
}
});
}
else{
return false;
}

});
var d = $('.datepicker').datepicker({
language: document.documentElement.lang,
todayHighlight: true
});
d.datepicker('setDate', new Date(selectedDay));
d.on('changeDate', function(e){
var month = e.date.getMonth()+1;
var year = e.date.getFullYear();
var day = e.date.getDate();
var room = $('.room-id').data('room');
window.location.href="/room/"+room+"/"+year+'/'+month+'/'+day;
});
var search_picker = $('#search_picker').datepicker({
language: document.documentElement.lang,
todayHighlight: false,
});
search_picker.on('changeDate', function(e){
var month = e.date.getMonth()+1;
if(month < 10){month = '0'+month;}
var year = e.date.getFullYear();
var day = e.date.getDate();
if(day < 10){day = '0'+day;}
$("#search_picker_input").val(year + "-" + month + "-" + day);
});

$('.btn-reserve').click(function(){
var _self = $(this).closest('.event');
_self.find('.content').slideToggle();
});