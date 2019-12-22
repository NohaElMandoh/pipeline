function timeSince(date) {
  //console.log(typeof(date))
      var seconds = Math.floor((new Date() - date) / 1000);

      var interval = Math.floor(seconds / 31536000);

      if (interval > 1) {
        return interval + " years";
      }
      interval = Math.floor(seconds / 2592000);
      if (interval > 1) {
        return interval + " months";
      }
      interval = Math.floor(seconds / 86400);
      if (interval > 1) {
        return interval + " days";
      }
      interval = Math.floor(seconds / 3600);
      if (interval > 1) {
        return interval + " hours";
      }
      interval = Math.floor(seconds / 60);
      if (interval > 1) {
        return interval + " minutes";
      }
      return Math.floor(seconds) + " seconds";
}



function printErrors(msgs){
  //alert('shit')
  $('.error').removeClass('hidden');
  $('.error').addClass('n_hide text-white bg-secondary bg-secondary-errors alert');
  $('.error').find('ul').empty();
  for(var i=0;i<msgs.length;i++){
  	$('.error').find('ul').append('<li>'+ msgs[i] +'</li>');
  }
}
function showSwal(type, message, modal){
  //hide error
  $('.error').removeClass('n_hide text-white bg-secondary bg-secondary-errors alert');
  $('.error').addClass('hidden');
    $(modal).modal('hide');
  //change swal message

    Swal.fire({
        position: 'top-middle',
        type: type,
        title: message,
        showConfirmButton: false,
        timer: 2000
    })


      // Swal({
      //   type:type,
      //   title:message
      //  });
}
function changePreview(e, k, v){
      var files = e.target.files;
     // console.log(files)
    
    $.each(files, function(key, file){
      var reader = new FileReader();
      reader.readAsDataURL(file);          
      reader.onload = function(e){
        var prev = base_url + '/public/admin/uploads/projects/files/file_preview.png';
        var img = '<div class="img-prev">'+
        '<img class="img-thumbnails" src="'+e.target.result+'" onError="this.onerror=null;this.src='+prev+';">'+
        '</div>';



        if(v == 'addUser'){
            $('#'+v).html(img);
        }else if( v == 'editUser'){
            $('#'+v).html(img);
        }
         else{
            $('#'+v).append(img);
        }


      }
    });
  }
function removeItem(e){
//console.log($(e.target).data('id'));
$(e.target).parents('.img-prev').remove();
}
function addForm(e, url, method, dataResult, modal){
    
    $.ajax({
        url:url,
        type:method,
        data:dataResult,
  
        success : function(data){
            
            if(data.success == true){
                showSwal('success',data.message, modal);
                setTimeout("location.reload(true);",1500)
            }else{
                printErrors(data.errors);
            }
        }
    });
}

function editForm(e, id, url, method, data, modal){
    $.ajax({
        url:url,
        type:method,
        data:data,
        success : function(data){
            if(data.success == true){
                console.log($("#id"+id));
                showSwal('success',data.message, modal);
                $("#id"+id).load(location.href + " #id"+id+" td");
                // getHomeData();
                setTimeout("location.reload(true);",1500)

            }else{
                printErrors(data.errors);
            }
        }
    });
}

function deleteData(id, title, hitURL){
    Swal({
        type:'warning',
        title: title,
        confirmButtonClass: "btn-danger",
        confirmButtonText:  'Delete',
        showCancelButton: true,
        cancelButtonText:  'Cancel',
    }).then((result)=>{
        if(result.value){
            jQuery.ajax({
                type     : "DELETE",
                dataType : "json",
                url      : hitURL,
                data     : {_method : 'DELETE'}
            }).done(function(data){
                if(data.success == true) {
                    $('#id'+id).remove();
                    $('#question_id'+id).remove();
                    // getHomeData();
                    showSwal('success',data.message, '');
                    setTimeout("location.reload(true);",1500)
                }else if(data.success == false) {
                    showSwal('error',data.message, '');
                }
            });
        }
    });
}

function addFormProcess(e, url, method, dataResult, modal){
    $.ajax({
        url:url,
        type:method,
        data:dataResult,
        cache: false,
        contentType: false,
        processData: false,
        success : function(data){
            if(data.success == true){
                showSwal('success',data.message, modal);
                // getHomeData();
                setTimeout("location.reload(true);",1500)

            }else{
                printErrors(data.errors);
            }
        }
    });
}

function editFormProcess(e, id, url, method, data, modal){
    $.ajax({
        url:url,
        type:method,
        data:data,
        cache: false,
        contentType: false,
        processData: false,
        success : function(data){
            if(data.success == true){
                showSwal('success',data.message, modal);
                // getHomeData();
                 setTimeout("location.reload(true);",1500);
            }else{
                printErrors(data.errors);
            }
        }
    });
}

/*START TimeLine Scripts*/
function showActivities(h){
    document.querySelector('.activities-card').style.right = '0';
    document.querySelector('.activity-card .card-header').style.right = '0';
    document.getElementsByTagName("body")[0].style.overflow = 'hidden';
}
function hideActivities(h){
    document.querySelector('.activities-card').style.right = '-60%';
    document.querySelector('.activity-card .card-header').style.right = '-60%';
    document.getElementsByTagName("body")[0].style.overflow = 'initial';
}
/*END TimeLine Scripts*/
  