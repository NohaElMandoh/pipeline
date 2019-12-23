<table id="basicExample" class="table table-striped table-bordered">
    <thead>
        <tr>
            <th>#</th>
            <th>Title</th>
            <th>Customer</th>
            <th>Current Stage</th>
            <th>Expected Closed Date</th>
            <th>Created At</th>
            <th>Updated At</th>
        </tr>
    </thead>
    <tbody>
        @if(count($opportunities))
        @foreach($opportunities as $opportunity)
        <tr data-id="{{$opportunity->id}}" id="id{{$opportunity->id}}">
            <td>{!!$loop->iteration??'<%counter%>' !!}</td>
            <td>{{$opportunity->title}}</td>
            <td>{{$opportunity->customer->name}}</td>

            @if(count($opportunity->lastStage))
            @foreach($opportunity->lastStage as $key=>$stage)
            <td>{{$stage->name}}</td>
            @endforeach
            @else
            <td></td>

            @endif

            <td>{{ date('d-m-Y h:i A',strtotime($opportunity->expected_closed_date)) }}</td>
            <td>{{ date('d-m-Y h:i A',strtotime($opportunity->created_at)) }}</td>
            <td>{{ date('d-m-Y h:i A',strtotime($opportunity->updated_at))}}</td>
          
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