@extends('layouts.index-home')

@section('content')

<main>
    <section>

        <div class="container valign-wrapper reaction" style="min-height: 30vh;margin-bottom: 75px">
            <h5 class="white-text center-align" style="font-family: helvetica-bold">
                {!!setting('site.description')!!}
            </h5>
        </div>


    </section>

    <section class="valign-wrapper amonia" style="background-image: url('Screen-Shot-2018-06-08-at-1.24.11-PM.jpg');background-repeat: no-repeat;background-size: cover;position: relative;">

        <h1 style="margin:auto;font-family: didot-italic" class="white-text clamore title">
            Say Hello!
        </h1>

    </section>

    <section>

        <div class="row white black-text changer">

            <div style="margin:25px 0" class="col s12 m12 l4">
                <h1 class="title center-align crash" style="margin: auto;font-family: didot-italic">LOCATION</h1><br>
                <p class="center-align" style="margin: auto;font-size: 18px">Kulimha, Patan Durbar Square <br>
                    Kathmandu, Nepal</p>
            </div>
            <div style="margin:25px 0" class="col s12 m12 l4 offset-l1-m1">
                <h1 class="title center-align crash" style="margin: auto;font-family: didot-italic">CONTACT</h1><br>
                <p class="center-align" style="margin: auto;font-size: 18px">(+977) 01 500 6665 <br>
                    contact@image-ark.com</p>
            </div>
            <div class="col s12 m12 l4" style="padding:0px">

                <div class="card large" style="margin:0px">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3533.353147206233!2d85.32426091558679!3d27.675478082805203!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb19c5cb410abb%3A0x93dfe0862aecb62a!2sImage+Ark!5e0!3m2!1sen!2snp!4v1533318544617" width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>

        </div>

    </section>

</main>

@endsection