<script>
import { goto } from "@sapper/app";
import {currentUser} from '../components/LoggedIn.svelte';

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

<svelte:head>
	<title>medsupport - Registrierung für Krankenhäuser</title>
</svelte:head>

<h2>Registrierung für Krankenhäuser</h2>
<form on:submit|preventDefault={onSubmit}>
    <h3>Angaben zum Krankenhaus</h3>
    <label>Name des Krankenhaus</label>
    <input type="text" name="name">
    <label>Straße und Hausnummer</label>
    <input type="text" name="streetAddress">
    <label>Postleitzahl</label>
    <input type="text" name="postalCode">
    <label>Stadt</label>
    <input type="text" name="city">
    
    <h3>Angaben zum Bedarf</h3>
    <label>Anzahl Aushilfen gesucht</label>
    <input type="number" min=0 name="searchedPerson">
    <label>Beschreibung zu Aufgaben</label>
    <input type="text" name="description">
    
    <h3>Angaben zur Kontaktperson</h3>
    <label>Vorname</label>
    <input type="text" bind:value={vorname} name="vorname">
    <label>Nachname</label>
    <input type="text" bind:value={nachname}  name="nachname">
    <label>Telefonnummer</label>
    <input type="text" name="phonenumber">
    <label>E-Mail-Adresse</label>
    <input type="text" bind:value={email} name="emailaddress">
    <label>Passwort fürs Login</label>
    <input type="password" name="password">
    <label>Passwort bestätigen</label>
    <input type="password" name="password-confirmation">
    
    <input type="checkbox" name="confirm-dataprocessing" required>
    <label>Ich stimme zu, dass meine persönlichen Angaben gemäß der <a href="/datenschutz">Datenschutzerklärung</a> aufgenommen und verarbeitet werden.</label>
    <br/>
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
    h3 {
        margin: 1em 0;
    }
</style>