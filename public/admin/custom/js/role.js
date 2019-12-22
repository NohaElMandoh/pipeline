
$(document).ready(function(){
    var edit_id='';
    $('#add').click(function(){
        $('.error').addClass('hidden');
        $('#add_form')[0].reset();
        $("#add_form").validationEngine();
    });

    $(document).on('click', '.edit',function(e){
        e.preventDefault();
        var id = $(this).data('id');
        getData(id);
        $('#editModal').modal('show');
        $('.error').addClass('hidden');
        $("#edit_form").validationEngine();
    });
//add job
    $(document).on('submit', '#add_form', function(e){
        e.preventDefault();
        var url    = base_url + '/admin/role',
            method = 'POST',
            data   = {'name': $('#name').val()},
            modal = '#addModal';
        addForm(e, url, method, data, modal)
    });
});

//add job
function addForm(e, url, method, dataResult, modal){
    $.ajax({
        url:url,
        type:method,
        data:dataResult,
        success : function(data){
            if(data.success == true){
                //alert($('#example1 tr').length);
                if($('#basicExample tr').length == 2){
                    setTimeout(location.reload.bind(location), 1000);
                }
                console.log(data.result.updated_at);
                var tr ='<tr data-id="'+data.result.id+'" id="id'+data.result.id+'">'+
                    '<td>'+data.result.name+'</td>'+
                    '<td>'+data.result.created_at+'</td>'+
                    '<td>'+timeSince(new Date(data.result.updated_at))+'</td>'+
                    '<td><a href="javascript:void(0);" class="btn btn-primary btn-sm edit"   data-id="'+data.result.id+'" style="margin-right: 4px;">'+
                    '<span class="icon-pencil"></span>'+
                    '</a>'+
                    '<a href="javascript:void(0);" class="btn btn-danger btn-sm"  onclick="deleteRole('+data.result.id+');"data-id="'+data.result.id+'">'+
                    '<i class="fa fa-trash"></i>'+
                    '</a></td>'+
                    '</tr>';
                $(tr).prependTo("#basicExample > tbody");
                showSwal('success',data.message, modal);
            }else{
                printErrors(data.errors);
            }
        }
    });
}

//edit stage
$(document).on('submit', '#edit_form',function(e){
    e.preventDefault();
    var id = $('#edit_id').val(),
        url = base_url + '/admin/role/'+id,
        method = 'PUT',
        data   = {
            'id'     : $('#edit_id').val(),
            'name'   : $('#edit_name').val(),
            '_method' : 'PUT',
        },
        modal = '#editModal';
    editForm(e, id, url, method, data, modal)
});

function editForm(e, id, url, method, data, modal){
    $.ajax({
        url:url,
        type:method,
        data:data,
        success : function(data){
            if(data.success == true){
                showSwal('success',data.message, modal);
                $("#id"+id).load(location.href + " #id"+id+" td");
            }else{
                printErrors(data.errors);
            }
        }
    });
}

function getData(id){
    $.ajax({
        url: base_url + '/admin/role/'+id,
        type:'GET',
        success : function(data){
            if(data.success == true){
                $('#edit_id').val(data.role.id);
                $('#edit_name').val(data.role.name);
            }
        }
    });
}

function deleteRole(id){

    Swal({
        type:'warning',
        title: 'Are You Sure Delete This Role?',
        confirmButtonClass: "btn-danger",
        confirmButtonText:  'Delete',
        showCancelButton: true,
        cancelButtonText:  'Cancel',
    }).then((result)=>{
        if(result.value){
            var hitURL = base_url +'/admin/role/'+id;
            jQuery.ajax({
                type     : "DELETE",
                dataType : "json",
                url      : hitURL,
                data     : {_method : 'DELETE'}
            }).done(function(data){
                if(data.success == true) {
                    $('#id'+id).remove();
                    showSwal('success',data.message, '');
                    // Swal({
                    //     type:'success',
                    //     title:data.message,
                    // });
                }else if(data.success == false) {
                    showSwal('error',data.message, '');
                    // Swal({
                    //     type:'error',
                    //     title:data.message,
                    // });
                }
            });
        }
    });
}