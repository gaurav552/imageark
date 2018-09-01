@extends('layouts.index-other')

@section('content')



<main>
@foreach($page as $pager)
    <section class="valign-wrapper amonia" style="background-image: url('{{ Voyager::image($pager->image)}}');background-repeat: no-repeat;background-size: cover;position: relative;">

        <h1 style="margin:auto;font-family: didot-italic;" class="white-text clamore title">
            {!!$pager->title!!}
        </h1>

    </section>

    <section>

        <div class="row white black-text changer" style="min-height: 400px;padding: 14px">
            <div style="margin-top:30px;margin-bottom:30px;" class="col s12 m12 l6">
                <h3 class="left-align" style="margin: auto;font-family: didot-italic">{!!$pager->excerpt!!}</h3><br>
            </div>
            <div style="margin-top:30px;font-size: 18px;margin-bottom:30px; " class="col s12 m12 l6">
                {!!$pager->body!!}                 
            </div>
        </div>

    </section>
@endforeach
</main>

@endsection