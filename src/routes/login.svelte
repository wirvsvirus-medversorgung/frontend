<script>
import { goto } from "@sapper/app";
import LoggedIn, {currentUser} from '../components/LoggedIn.svelte'

function onSubmit() {
    goto("/suggestions")
    currentUser.update(a => {
        a.loggedIn = true;
        a.name = "Vorname";
        return a;
    })
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