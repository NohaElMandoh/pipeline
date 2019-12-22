<table id="basicExample" class="table table-striped table-bordered">
    <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Created At</th>
            <th>Updated At</th>
            @if(has_access('delete-category') || has_access('edit-category'))
            <th>Action</th>
            @endif
        </tr>
    </thead>
    <tbody>
        @if(count($categories))
        @foreach($categories as $category)
        <tr data-id="{{$category->id}}" id="id{{$category->id}}">
            <td>{!!$loop->iteration??'<%counter%>' !!}</td>

            <td>{{$category->name}}</td>
            <td>{{ date('d-m-Y h:i A',strtotime($category->created_at)) }}</td>
            <td>{{ date('d-m-Y h:i A',strtotime($category->updated_at))}}</td>
            @if(has_access('delete-category') || has_access('edit-category'))

            <td>
                @if( has_access('edit-category'))
                <a href="javascript:void(0);" class="btn btn-primary btn-sm edit" data-id="{{$category->id}}">
                    <span class="icon-pencil"></span>
                </a>
                @endif
                @if(has_access('delete-category') )
                <a href="javascript:void(0);" class="btn btn-danger btn-sm deletej" onclick="deletecategory({{$category->id}});" data-id="{{$category->id}}">
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
<script src="{{asset('admin/custom/js/category.js')}}"></script> -->