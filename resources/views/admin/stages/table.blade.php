<table id="basicExample" class="table table-striped table-bordered">
    <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Notes</th>
            <th>Created At</th>
            <th>Updated At</th>
            @if(has_access('delete-stage') || has_access('edit-stage'))

            <th>Action</th>
            @endif
        </tr>
    </thead>
    <tbody>
        @if(count($stages))
        @foreach($stages as $stage)
        <tr data-id="{{$stage->id}}" id="id{{$stage->id}}">
            <td>{!!$loop->iteration??'<%counter%>' !!}</td>
            <td>{{$stage->name}}</td>
            <td>{{$stage->notes}}</td>
            <td>{{ date('d-m-Y h:i A',strtotime($stage->created_at)) }}</td>
            <td>{{ date('d-m-Y h:i A',strtotime($stage->updated_at))}}</td>
            @if(has_access('delete-stage') || has_access('edit-stage'))

            <td>
                @if(has_access('edit-stage'))

                <a href="javascript:void(0);" class="btn btn-primary btn-sm edit" data-id="{{$stage->id}}">
                    <span class="icon-pencil"></span>
                </a>
                @endif
                @if(has_access('delete-stage') )

                <a href="javascript:void(0);" class="btn btn-danger btn-sm deletej" onclick="deleteStage({{$stage->id}});" data-id="{{$stage->id}}">
                    <i class="fa fa-trash"></i>
                </a>
                @endif
            </td>
            @endif
        </tr>
        @endforeach

        @endif
    </tbody>
</table>
<!-- 
<script type="text/javascript">
    $(function() {
        var table = $('#basicExample').DataTable({
          
            order: [],
            bDestroy: true,
        });
    });
</script>
<script src="{{ asset('admin/js/jquery.js') }}"></script>
<script src="{{ asset('admin/vendor/datatables/dataTables.min.js') }}"></script>
<script src="{{asset('admin/custom/js/stage.js')}}"></script> -->