@extends('layouts.index-other')

@section('content')

<main>

    <section class="entire-d white-text">

        <section>
            <div class="carousel carousel-slider full center">
                <div class="carousel-fixed-item left-align"> <h4 class="explain bonanza2 truncate">{{$work->excerpt}} </h4> </div>
                <div class="carousel-item red white-text left-align" style="background-image: url('/img/trans.png'), url('{{ Voyager::image($work->image ) }}');background-repeat: no-repeat;background-size:cover">
                    <h5 class="country-list bonanza">{{$work->country}}</h5>
                    <h4 class="titel-list bonanza1">{{$work->title}}</h4>
                </div>
            </div>
        </section>

    </section>

    <section>

        <div class="contender">

                @php $multiple_images = json_decode($work->multiple_images); @endphp
                @if($work->multiple_images != '')


            <div class="blocker blocker-small white black-text" >
                <div class="valign-wrapper" style="height: 100%;">
                        <p class="center" style="margin: 15px">{{$work->body}}</p>
                </div>
            </div>

            <div class="blocker blocker-small" >
                <img src="{{ Voyager::image($multiple_images[1]) }}" alt="">
            </div>

            <div class="blocker blocker-big">
                <img src="{{ Voyager::image($multiple_images[2]) }}" alt="">
            </div>

            <div class="blocker blocker-small" >
                    <img src="{{ Voyager::image($multiple_images[3]) }}" alt="">
            </div>

            <div class="blocker blocker-small" >
                <img src="{{ Voyager::image($multiple_images[4]) }}" alt="">
            </div>

            <div class="blocker blocker-small" >
                    <img src="{{ Voyager::image($multiple_images[5]) }}" alt="">
            </div>

            <div class="blocker blocker-small white black-text" >
                <div class="valign-wrapper" style="height: 100%;">
                    <p class="center" style="margin: 15px">{{$work->body2}}</p>
                </div>
            </div>

            <div class="blocker blocker-big">
                <img src="{{ Voyager::image($multiple_images[0]) }}" alt="">
            </div>

            @endif

        </div>

        <div class="center">
            <a href="" style="border-color:white;border:5px;line-height:45px;border-style:solid" class="btn-large waves-effect waves-light black white-text">Back to work</a>
        </div>

    </section>

</main>

@endsection