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
    $(document).on('click', '.editStage', function (e) {
        e.preventDefault();
        var id = $(this).data('opportunity_id');
        // getData(id);
   
        $('#editStageModal').modal('show');
        $('.error').addClass('hidden');

        $("#edit_stage_form").validationEngine();
    });

    

    $(document).on('submit', '#add_form', function (e) {
        e.preventDefault();
        var url = base_url + '/admin/opportunities',
            method = 'POST',
            data = {
                'title': $('#title').val(),
                'customer_id': $('#customer_id').val(),
                'notes': $('#notes').val(),
                'expected_closed_date': $('#expected_closed_date').val(),
                'services': $('#services').val(),
                'stage_id':$('#stage_id').val(),
            }
        modal = '#addModal';
    
        addForm(e, url, method, data, modal)
    });

    $(document).on('submit', '#edit_form', function (e) {
        e.preventDefault();
        var id = $('#edit_id').val(),
            method = 'POST',
            url = base_url + '/admin/opportunity/' + id,
            data = {
                'id': $('#edit_id').val(),
                'title': $('#edit_title').val(),
                'customer_id': $('#edit_customer_id').val(),
                'notes': $('#edit_notes').val(),
                'expected_closed_date': $('#edit_expected_closed_date').val(),
                'services': $('#edit_services').val(),
                'stage_id':$('#edit_stage_id').val(),
            },
            modal = '#editModal';

        editForm(e, id, url, method, data, modal)
    });
    $(document).on('submit', '#edit_stage_form', function (e) {
        e.preventDefault();
    
        var id = $('#opportunity_id').val(),
            method = 'POST',
            url = base_url + '/admin/opportunity/updateStage',
            data = {
                'pipeline_id': $('#opportunity_id').val(),
                'stage_id': $('#update_stage_id').val(),
                'notes': $('#update_notes').val(),

                
            },
            modal = '#editStageModal';

        editForm(e, id, url, method, data, modal)
    });
});
function getData(id) {
    // console.log (id); 
    $.ajax({
        url: base_url + '/admin/opportunities/getAjaxRequest/' + id,
        type: 'GET',
        // data:{'id' : id},
        success: function (data) {
            // console.log(data)

            if (data.success == true){
                $('#edit_id').val(data.opportunity.id);
                $('#edit_title').val(data.opportunity.title);
                $('#edit_customer_id').val(data.opportunity.customer_id);
                $('#edit_notes').val(data.opportunity.notes);
                $('#edit_expected_closed_date').val(data.opportunity.expected_closed_date);
                $('#edit_stage_id').val(data.opportunity.stage_id);
                $('#edit_services').val(data.opportunity.services)
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
