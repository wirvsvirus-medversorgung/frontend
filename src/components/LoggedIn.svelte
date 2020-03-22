<script context="module">
import { writable } from 'svelte/store';
export const currentUser = writable({name: undefined, loggedIn: false})
currentUser.subscribe(a=>console.log(a))
</script>

<div class="loggedIn">
    {#if $currentUser.loggedIn}
        {$currentUser.name} <a href="/profile">Mein Profil</a>
    {:else}
        <a href="/login">Login</a>
    {/if}
</div>

<style>
    .loggedIn {
        margin-top: 0;
        float: right;
        margin-right: 2em;
        margin-bottom: 2em;
    }
</style>