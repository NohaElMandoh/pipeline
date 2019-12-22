<table id="basicExample" class="table table-striped table-bordered">
    <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Created At</th>
            <th>Updated At</th>
            @if(has_access('delete-service') || has_access('edit-service'))
            <th>Action</th>
            @endif

        </tr>
    </thead>
    <tbody>
        @if(count($services))
        @foreach($services as $service)
        <tr data-id="{{$service->id}}" id="id{{$service->id}}">
            <td>{!!$loop->iteration??'<%counter%>' !!}</td>
            <td>{{$service->name}}</td>
            <td>{{ date('d-m-Y h:i A',strtotime($service->created_at)) }}</td>
            <td>{{ date('d-m-Y h:i A',strtotime($service->updated_at))}}</td>

            @if(has_access('delete-service') || has_access('edit-service'))
            <td>
                @if( has_access('edit-service'))
                <a href="javascript:void(0);" class="btn btn-primary btn-sm edit" data-id="{{$service->id}}">
                    <span class="icon-pencil"></span>
                </a>
                @endif
                @if(has_access('delete-service') )

                <a href="javascript:void(0);" class="btn btn-danger btn-sm deletej" onclick="deleteService({{$service->id}});" data-id="{{$service->id}}">
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

<!-- <script type="text/javascript">
    $(function() {
        var table = $('#basicExample').DataTable({

            //ordering: [],
            order: [],
            Destroy: true,


        });
    });
</script>
<script src="{{ asset('admin/js/jquery.js') }}"></script>
<script src="{{ asset('admin/vendor/datatables/dataTables.min.js') }}"></script>
<script src="{{asset('admin/custom/js/service.js')}}"></script> -->