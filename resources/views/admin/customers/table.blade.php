<table id="basicExample" class="table table-striped table-bordered">
    <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Title</th>
            <th>Created At</th>
            <th>Updated At</th>
            @if(has_access('delete-customer') || has_access('edit-customer'))
            <th>Action</th>
            @endif
        </tr>
    </thead>
    <tbody>
        @if(count($customers))
        @foreach($customers as $customer)
        <tr data-id="{{$customer->id}}" id="id{{$customer->id}}">
            <td>{!!$loop->iteration??'<%counter%>' !!}</td>
            <td>{{$customer->name}}</td>
            <td>{{$customer->title}}</td>
            <td>{{ date('d-m-Y h:i A',strtotime($customer->created_at)) }}</td>
            <td>{{ date('d-m-Y h:i A',strtotime($customer->updated_at)) }}</td>
            @if(has_access('delete-customer') || has_access('edit-customer'))

            <td>
                @if( has_access('edit-customer'))

                <a href="javascript:void(0);" class="btn btn-primary btn-sm edit" data-id="{{$customer->id}}">
                    <span class="icon-pencil"></span>
                </a>
                @endif
                @if(has_access('delete-customer') )


                <a href="javascript:void(0);" class="btn btn-danger btn-sm deletej" onclick="deleteCustomer({{$customer->id}});" data-id="{{$customer->id}}">
                    <i class="fa fa-trash"></i>
                </a>
                @endif
            </td>
            @endif
        </tr>
        @endforeach
        @else
        <tr>
            <td colspan="4">No Data Found</td>
        </tr>
        @endif
    </tbody>
</table>
<script src="{{ asset('admin/js/jquery.js') }}"></script>
<!-- <script type="text/javascript">
    $(function() {
        var table = $('#basicExample').DataTable({
            //paging: false,
            //ordering: [],
            order: [

            ],
            bDestroy: true
        });
    });
</script>
<script src="{{ asset('admin/js/jquery.js') }}"></script>
<script src="{{ asset('admin/vendor/datatables/dataTables.min.js') }}"></script>
<script src="{{asset('admin/custom/js/customer.js')}}"></script> -->