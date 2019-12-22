$(function(){
    $(document).on('click', '#markNoti',function(e){
        var id = $(this).data('id');
        //e.preventDefault();
        $.ajax({
            url: base_url + '/admin/notification/'+id,
            type:'GET',
            success : function(data){
                console.log(data);
            }
        });
    });

    $(document).on('click', '#markAllNotiAsRead',function(e){
        $.ajax({
            url: base_url + '/admin/notification',
            type:'GET',
            success : function(data){
                console.log(data);
            }
        });
    });
})