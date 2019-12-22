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
    //----add stages
    $(document).on('submit', '#add_form', function (e) {
        e.preventDefault();
        var url = base_url + '/admin/service',
            method = 'POST',
            data = {
                'name': $('#name').val(),
                'category_id': $('#category_id').val(),
                'qty': $('#qty').val(),
                'price': $('#price').val(),
                'notes': $('#notes').val(),
                'description': $('#description').val()
                   
            }
        modal = '#addModal';
    
        addForm(e, url, method, data, modal)
    });
      
    $(document).on('submit', '#edit_form',function(e){
        e.preventDefault();
        var id = $('#edit_id').val(),
            method = 'POST',
            url = base_url + '/admin/service/'+id,
            data   = {
                'id'     : $('#edit_id').val(),
                'name'   : $('#edit_name').val(),
                'category_id': $('#edit_category_id').val(),
                'qty': $('#edit_qty').val(),
                'price': $('#edit_price').val(),
                'notes': $('#edit_notes').val(),
                'description': $('#edit_description').val()
            },
            modal = '#editModal';
        editForm(e, id, url,method, data, modal)
    });
});
function getData(id){
     $.ajax({
      url: base_url + '/admin/services/'+id,
      type:'GET',
 
      success : function(data){
 
          if(data.success == true){
             $('#edit_id').val(data.service.id);
             $('#edit_name').val(data.service.name);
            //  $('#edit_category_id').val(data.service.category_id),
            $('#edit_qty').val(data.service.qty);
            $('#edit_price').val(data.service.price);
            $('#edit_notes').val(data.service.notes);
            $('#edit_description').val(data.service.description);

            
          }
      }
    });
}
function deleteService(id){
    deleteData(id, 'Are You Sure Delete This Service?', base_url +'/admin/service/'+id);
}
function getHomeData(){
    $.ajax({
        url: base_url + '/admin/services',
        type:'GET',
        success : function(data){
            $('#table-body').html(data);
        }
    });
}