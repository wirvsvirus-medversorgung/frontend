<script context="module">
import { writable } from 'svelte/store';
export const currentUser = writable({name: undefined, loggedIn: false})
function logout() {
    currentUser.set({loggedIn: false})
}
</script>

<div class="loggedIn">
    {#if $currentUser.loggedIn}
        {$currentUser.name} <a href="/profile">Mein Profil</a> <a href="/" on:click={logout}>Logout</a>
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
    a {
        text-decoration: underline;
    }
</style>