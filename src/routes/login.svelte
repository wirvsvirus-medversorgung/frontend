<script>
import { goto } from "@sapper/app";

function onSubmit() {
    goto("/suggestions")
}
</script>

<h2>Login</h2>

<form on:submit|preventDefault={onSubmit}>

    <label>E-Mail-Adresse</label>
    <input type="text" name="emailaddress">
    
    <label>Passwort</label>
    <input type="password" name="password">
    
    <input type="submit" value="Login">
</form>

<style>
     input[type=number], input[type=text], input[type=password] {
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