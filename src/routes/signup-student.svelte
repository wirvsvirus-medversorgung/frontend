<script>
import { goto } from "@sapper/app";
import {currentUser} from '../components/LoggedIn.svelte'

let email;
let vorname, nachname;

function onSubmit() {
    goto("/")
    currentUser.update(a => {
        a.loggedIn = true;
        a.name = vorname + ' ' + nachname;
        a.email = email;
        return a;
    })
}
</script>

<h2>Registrierung für Studierende</h2>

<form on:submit|preventDefault={onSubmit}>
    <label>Vorname</label>
    <input type="text" bind:value={vorname} name="vorname">
    
    <label>Nachname</label>
    <input type="text" bind:value={nachname} name="nachname">
    
    <label>Ich studiere Medizin im sovielten Semester</label>
    <input type="number" min=1 name="semester">

    <label>Ich wohne in</label>
    <input type="text" name="location">
    
    <label>Ich mag in einem Umkreis von so vielen km helfen.</label>
    <input type="number" min=1 name="radius">
    
    <label>Telefonnummer</label>
    <input type="text" name="phonenumber">
    
    <label>E-Mail-Adresse</label>
    <input type="text" bind:value={email} name="emailaddress">
    
    <label>Passwort</label>
    <input type="password" name="password">
    
    <label>Passwort bestätigen</label>
    <input type="password" name="password-confirmation">
    
    <input type="checkbox" name="confirm-dataprocessing" required>
    <label>Ich stimme zu, dass meine persönlichen Angaben gemäß der <a href="/datenschutz">Datenschutzerklärung</a> aufgenommen und verarbeitet werden.</label>
    
    <input type="submit" value="Registieren">
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