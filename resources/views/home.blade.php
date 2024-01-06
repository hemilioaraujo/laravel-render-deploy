@extends('base')

@section('title', 'home')

@section('body')
    <h1 class="text-3xl font-bold underline text-red-500">
        Hello world!
    </h1>

    <div x-data="{ open: false }">
    <button @click="open = !open">Expand</button>
 
    <span x-show="open">
        Content...
    </span>
</div>
@endsection
