

$(document).ready(function(){

   
    var edit_id='';
    $('#add').click(function(){
        $('.error').addClass('hidden');
        $('#add_form')[0].reset();
        $("#add_form").validationEngine();
        $('#addUser').html('');
    });
    $('.edit').click(function(e){
        e.preventDefault();
        var id = $(this).data('id');
         getData(id);
        $("#editModal").modal("show");
      	$('.error').addClass('hidden');
        $("#edit_form").validationEngine();
    });
   
    $(document).on('submit', '#add_form', function(e){
       e.preventDefault();
       var form = new FormData();
       form.append('name', $('#name').val());
       form.append('type', $('#type').val());
       form.append('email', $('#email').val());
       form.append('phone', $('#phone').val());
       form.append('profile_pic', $('#filename')[0].files[0]);
       form.append('password', $('#password').val());
       form.append('password_confirmation', $('#password_confirmation').val());
       form.append('job_title', $('#job_title').val());

       var url    = base_url + '/admin/user',
           method = 'POST',
           modal = '#addModal';
        addFormProcess(e, url, method, form, modal)
    });
    $(document).on('submit', '#edit_form',function(e){
        e.preventDefault();
        var form = new FormData();
      
        form.append('name', $('#edit_name').val());
        form.append('type', $('#edit_type').val());
        form.append('email', $('#edit_email').val());
        form.append('phone', $('#edit_phone').val());
        form.append('profile_pic', $('#edit_filename')[0].files[0]);
        form.append('password', $('#edit_password').val());
        form.append('password_confirmation', $('#edit_password_confirmation').val());
        form.append('job_title', $('#edit_job_title').val());

        var id = $('#edit_id').val(),
            url = base_url + '/admin/user/'+id,
            method = 'POST',
            modal = '#editModal';
        editFormProcess(e, id, url, method, form, modal)
    });
   


 
});


function getData(id){
     $.ajax({
      url: base_url + '/admin/users/'+id,
      type:'GET',
      success : function(data){
     
          if(data.success == true){
        //    alert(data.user.id)
             $('#edit_id').val(data.user.id);
             $('#edit_name').val(data.user.name);
             $('#edit_email').val(data.user.email);
             $('#edit_job_title').val(data.user.job_title);
             $('#edit_phone').val(data.user.phone);

            
             var img = '<div class="img-prev">'+
             '<img class="img-thumbnails" src="'+user_url+'/'+data.user.profile_pic+'">'+
             '</div>';


              $('#editUser').html(img);
              $("#edit_type").val(data.user.type);
            
          }
      }
    });
}
function getUserInfoData(id){
    $.ajax({
        url: base_url + '/admin/user/info/'+id,
        type:'GET',
        success : function(data){
            if(data.success == true){
                $('#edit_info_id').val(id);
                if(data.user != '' && data.user != null){
                    $('#home_number').val(data.user.home_number);
                    $('#personal_number').val(data.user.personal_number);
                    $('#city').val(data.user.city);
                    $('#street').val(data.user.street);
                    $('#relative_name').val(data.user.relative_name);
                    $('#relative_relation').val(data.user.relative_relation);
                    $('#relative_home_number').val(data.user.relative_home_number);
                    $('#relative_mobile_number').val(data.user.relative_mobile_number);
                    $('#relative_city').val(data.user.relative_city);
                    $('#relative_street').val(data.user.relative_street);
                }

            }
        }
    });
}
function deleteUser(id){
   deleteData(id, 'Are You Sure Delete This User?', base_url +'/admin/users/'+id);
}

