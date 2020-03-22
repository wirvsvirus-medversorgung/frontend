<script>
import { goto } from "@sapper/app";

function onSubmit() {
    goto("/suggestions")
}
</script>

<h2>Registrierung für Studierende</h2>

<form on:submit|preventDefault={onSubmit}>
    <label>Vorname</label>
    <input type="text" name="vorname">
    <br/>
    <label>Nachname</label>
    <input type="text" name="nachname">
    <br/>
    <label>Ich habe folgende medizinische Vorerfahrung</label>
    <input type="number" min=1 name="description">
    <br/>
    <label>Telefonnummer</label>
    <input type="text" name="phonenumber">
    <br/>
    <label>E-Mail-Adresse</label>
    <input type="text" name="emailaddress">
    <br/>
    <label>Passwort</label>
    <input type="password" name="password">
    <br/>
    <label>Passwort bestätigen</label>
    <input type="password" name="password-confirmation">
    <br/>
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
    br + label, label:first-child {
        display: block;
    }
</style>