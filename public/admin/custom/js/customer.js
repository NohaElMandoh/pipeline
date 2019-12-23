
$(document).ready(function () {
    var edit_id = '';
    $('#add').click(function () {
        $('.error').addClass('hidden');
        $('#add_form')[0].reset();
        $("#add_form").validationEngine();
    });

    $(document).on('click', '.edit', function (e) {
        e.preventDefault();
        var id = $(this).data('id');
        getData(id);
   
        $('#editModal').modal('show');
        $('.error').addClass('hidden');
        $("#edit_form").validationEngine();
    });
    //add job
    $(document).on('submit', '#add_form', function (e) {
        e.preventDefault();
        var url = base_url + '/admin/customer',
            method = 'POST',
            data = {
                'name': $('#name').val(),
                'title': $('#title').val(),
                'email': $('#email').val(),
                'mobile': $('#mobile').val(),
                'phone': $('#phone').val(),
                'location': $('#location').val(),
                'type': $('#type').val(),
                'website': $('#website').val(),
                'facebook': $('#facebook').val(),
                'instagram': $('#instagram').val(),
                'linkedin': $('#linkedin').val(),

                   
            }
        modal = '#addModal';
    
        addForm(e, url, method, data, modal)
    });
    $(document).on('submit', '#edit_form', function (e) {
        e.preventDefault();
        var id = $('#edit_id').val(),
            url = base_url + '/admin/customer/' + id,
            method = 'POST',
            data = {
                'id': $('#edit_id').val(),
                'name': $('#edit_name').val(),
                'title': $('#edit_title').val(),
                'email': $('#edit_email').val(),
                'mobile': $('#edit_mobile').val(),
                'phone': $('#edit_phone').val(),
                'location': $('#edit_location').val(),
                'type': $('#edit_type').val(),
                'website': $('#edit_website').val(),
                'facebook': $('#edit_facebook').val(),
                'instagram': $('#edit_instagram').val(),
                'linkedin': $('#edit_linkedin').val(),

            
            },
            modal = '#editModal';
        editForm(e, id, url, method, data, modal)
    });
});

function getData(id) {

    $.ajax({
        url: base_url + '/admin/customers/' + id,
        type: 'GET',
        success: function (data) {
            
            if (data.success == true) {
                $('#edit_id').val(data.customer.id);
                $('#edit_name').val(data.customer.name);
                $('#edit_title').val(data.customer.title);
                $('#edit_email').val(data.customer.email);
                $('#edit_mobile').val(data.customer.mobile);
                $('#edit_phone').val(data.customer.phone);
                $('#edit_location').val(data.customer.location);
                $('#edit_type').val(data.customer.type);
                $('#edit_website').val(data.customer.website);
                $('#edit_facebook').val(data.customer.facebook);
                $('#edit_instagram').val(data.customer.instagram);
                $('#edit_linkedin').val(data.customer.linkedin);

            }
        }
    });
}

function deleteCustomer(id) {
    deleteData(id, 'Are You Sure Delete This Customer?', base_url + '/admin/customers/' + id);
}
function getHomeData() {
    $.ajax({
        url: base_url + '/admin/customer',
        type: 'GET',
        success: function (data) {
            $('#table-body').html(data);
        }
    });
}