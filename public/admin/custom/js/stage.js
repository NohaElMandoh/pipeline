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
    //----add stages
    $(document).on('click', '#add_stage', function (e) {
        e.preventDefault();
        var url = base_url + '/admin/stage',
            method = 'POST',
            data = {
                'name': $('#name').val(),
                'notes': $('#notes').val()
            },
            modal = '#addStage';
        addForm(e, url, method, data, modal)

    });

    $(document).on('submit', '#edit_form', function (e) {
        e.preventDefault();
        var id = $('#edit_id').val(),
            method = 'POST',
            url = base_url + '/admin/stage/' + id,
            data = {
                'id': $('#edit_id').val(),
                'name': $('#edit_name').val(),
            },
            modal = '#editModal';

        editForm(e, id, url, method, data, modal)
    });
});
function getData(id) {
    $.ajax({
        url: base_url + '/admin/stages/' + id,
        type: 'GET',
        // data:{'id' : id},
        success: function (data) {
            // console.log(data)
            if (data.success == true) {
                $('#edit_id').val(data.stage.id);
                $('#edit_notes').val(data.stage.notes);

                $('#edit_name').val(data.stage.name);
            }
        }
    });
}
function deleteStage(id) {
    deleteData(id, 'Are You Sure Delete This Stage?', base_url + '/admin/stages/' + id);
}
function getHomeData() {
    $.ajax({
        url: base_url + '/admin/stages',
        type: 'GET',
        success: function (data) {
            $('#table-body').html(data);
        }
    });
}
