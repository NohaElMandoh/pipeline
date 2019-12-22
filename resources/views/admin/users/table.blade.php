<table id="basicExample" class="table table-striped table-bordered">
    <thead>
        <tr>
        <th>#</th>
            <th>Name</th>
            <th>Email</th>
            <th>Profile Image</th>
            <th>Job Title</th>
            <th>Created At</th>
            <th>Updated At</th>

            @if(has_access('delete-employee') || has_access('edit-employee') || has_access('addPermission-employee'))
            <th>Action</th>
            @endif
        </tr>
    </thead>
    @if(count($users))
    <tbody>
    @foreach($users as $user)

        <tr data-id="{{$user->id}}" id="id{{$user->id}}">
             <td>{!!$loop->iteration??'<%counter%>' !!}</td>
            <td>{{$user->name}}</td>
            <td>{{$user->email}}</td>
            <td>
                <a href="{{userPath($user->profile_pic)}}" target="_blank">
                    <img class="img-index" src="{{userPath($user->profile_pic)}}" title="user image">
                </a>
            </td>
            <td>{{$user->job_title}}</td>


            <td>{{ date('d-m-Y h:i A',strtotime($user->created_at)) }}</td>
            <td>{{ date('d-m-Y h:i A',strtotime($user->updated_at))}}</td>
            @if(has_access('delete-employee') || has_access('edit-employee') || has_access('addPermission-employee'))

            <td>
                @if( has_access('addPermission-employee'))

                <a href='{{url("admin/employee/$user->id/permission")}}' class="btn btn-info btn-sm">
                    <i class="fa fa-eye">Permissions</i> 
                </a>
                @endif
                @if(has_access('view-employee') )

                
                <a class="btn btn-warning btn-sm" href='{{url("/user/profile/$user->id")}}'>
                    <i class="fa fa-eye"></i>
                </a>
                @endif
                @if(has_access('edit-employee') )

                <a href="javascript:void(0);" class="btn btn-primary btn-sm edit"  data-id="{{$user->id}}">
                    <span class="icon-pencil"></span>
                </a>
                @endif
                @if(has_access('delete-employee') )

                <a href="javascript:void(0);" class="btn btn-danger btn-sm deletej" onclick="deleteUser({{$user->id}});" data-id="{{$user->id}}">
                    <i class="fa fa-trash"></i>
                </a>
                @endif


            </td>
            @endif
        </tr>
    @endforeach
       
    </tbody>
   
        @endif
</table>
<!-- <script src="{{ asset('admin/js/jquery.js') }}"></script>
<script src="{{ asset('admin/vendor/datatables/dataTables.min.js') }}"></script>


<script type="text/javascript">
    $(function() {
        var table = $('#basicExample').DataTable({
            //paging: false,
            order: [
            ],
            // order: [ 1, "DESC" ],
            bDestroy: true
        });
    });
</script>
<script src="{{asset('admin/custom/js/user.js')}}"></script> -->