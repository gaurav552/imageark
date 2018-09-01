@extends('layouts.index-other')

@section('content')

    <main>

        <div class="entire">
            @foreach($work as $list)
                <a class="linkler white-text" href="/work/{{$list->id}}">
                    <div class="block">
                        <img src="{{ Voyager::image($list->image)}}" alt="">
                        <div class="overlay abradolf">
                        </div>
                        <div class="batta">
                            <h5 class="country-list">{{$list->country}}</h5>
                            <h4 class="titel-list">{{$list->title}}</h4>
                        </div>
                        <div class="bayan abradolf">
                            <h3 class="truncate explain">{{$list->excerpt}}
                            </h3>
                        </div>
                            
                    </div>

                </a>
            @endforeach
        </div>
        {{ $work->links() }}
    </main>

@endsection