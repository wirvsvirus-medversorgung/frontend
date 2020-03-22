<script>
import { goto } from "@sapper/app";
import {currentUser} from '../components/LoggedIn.svelte';
let email = "";

function onSubmit(e) {
    goto("/suggestions")
    currentUser.update(a => {
        a.loggedIn = true;
        a.name = email.charAt(0).toUpperCase() + email.split("@")[0].slice(1);
        a.email = email;
        return a;
    })
}
</script>

<svelte:head>
	<title>medsupport - Login</title>
</svelte:head>

<h2>Login</h2>

<form on:submit|preventDefault={onSubmit}>
    <label>E-Mail-Adresse</label>
    <input type="text" bind:value={email} name="emailaddress">
    
    <label>Passwort</label>
    <input type="password" name="password">
    
    <input type="submit" value="Login">
</form>

<style>
    input[type=text], input[type=password] {
        margin-bottom: 1rem;
    }
    input[type=submit] {
        margin-top: 1rem;
    }
    label + input {
        display: block;
        margin: 0;
    }
</style>