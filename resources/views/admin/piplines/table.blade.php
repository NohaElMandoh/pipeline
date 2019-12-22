<table id="basicExample" class="table table-striped table-bordered">
    <thead>
        <tr>
            <th>#</th>
            <th>Title</th>
            <th>Customer</th>
            <th>Current Stage</th>
            <th>Created At</th>
            <th>Updated At</th>
            @if(has_access('delete-opportunity') || has_access('edit-opportunity'))

            <th>Action</th>
            @endif

        </tr>
    </thead>
    <tbody>
        @if(count($opportunities))
        @foreach($opportunities as $opportunity)
        <tr data-id="{{$opportunity->id}}" id="id{{$opportunity->id}}">
            <td>{!!$loop->iteration??'<%counter%>' !!}</td>
            <td>{{$opportunity->title}}</td>
            <td>{{$opportunity->customer->name}}</td>

            @if(count($opportunity->stages))
            @foreach($opportunity->stages as $key=>$stage)
            <td>{{$stage->name}}</td>
            @endforeach
            @else
            <td></td>

            @endif

           
            <td>{{ date('d-m-Y h:i A',strtotime($opportunity->created_at)) }}</td>
            <td>{{ date('d-m-Y h:i A',strtotime($opportunity->updated_at))}}</td>
            @if(has_access('delete-opportunity') || has_access('edit-opportunity'))

            <td>
            <a href='{{ route("opportunities.show",$opportunity->id) }}' class="btn btn-info btn-sm">
										<i class="fa fa-eye"></i>
									</a>
                @if(has_access('edit-opportunity'))

                <a href="javascript:void(0);" class="btn btn-primary btn-sm edit" data-id="{{$opportunity->id}}">
                    <span class="icon-pencil"></span>
                </a>
                @endif
                @if(has_access('delete-opportunity') )

                <a href="javascript:void(0);" class="btn btn-danger btn-sm deletej" onclick="deleteService({{$opportunity->id}});" data-id="{{$opportunity->id}}">
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