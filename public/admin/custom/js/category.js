$(document).ready(function(){


	var edit_id='';
    $(document).on('click', '.edit',function(e){
      e.preventDefault();
        var id = $(this).data('id');
        getData(id);
        $('#editModal').modal('show');
      	$('.error').addClass('hidden');
        $("#edit_form").validationEngine();
    });
    //----add category
    $(document).on('click', '#add_category', function(e){
        e.preventDefault();
             var url    = base_url + '/admin/categories',
                 method = 'POST',
                 data   = {
                  'name': $('#name').val(),  
              },
                modal = '#addCategory';
               addForm(e, url, method, data, modal)
        
      });
      
    $(document).on('submit', '#edit_form',function(e){
        e.preventDefault();
        var id = $('#edit_id').val(),
            method = 'POST',
            url = base_url + '/admin/category/'+id,
            data   = {
                'id'     : $('#edit_id').val(),
                'name'   : $('#edit_name').val(),
                // '_method' : 'PUT',
            },
            modal = '#editModal';
        editForm(e, id, url,method, data, modal)
    });
});
function getData(id){
     $.ajax({
      url: base_url + '/admin/categories/'+id,
      type:'GET',
     // data:{'id' : id},
      success : function(data){
        console.log(data)
          if(data.success == true){
             $('#edit_id').val(data.category.id);
             $('#edit_name').val(data.category.name);
          }
      }
    });
}
function deletecategory(id){
    deleteData(id, 'Are You Sure Delete This Category?', base_url +'/admin/category/'+id);
}
function getHomeData(){
    $.ajax({
        url: base_url + '/admin/category',
        type:'GET',
        success : function(data){
            $('#table-body').html(data);
        }
    });
}