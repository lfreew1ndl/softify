


function addEvent() {
    var subject = $("#subject").val();
    var date = $("#date").val();
    var duration = $("#duration").val();
    var establishment = $("#establishment").val();
    var space_amount = $("#space_amount").val();
    var preview = $("#preview").val();
    var content = CKEDITOR.instances.editor.getData();

    $.post( "/event", {
        'subject' : subject,
        'date1': date,
        'duration': duration,
        'establishment': establishment,
        'space_amount': space_amount,
        'preview': preview,
        'description': content
    } );

}