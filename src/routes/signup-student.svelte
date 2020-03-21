
<h2>Registrierung für Studierende</h2>

<form>
    <label>Vorname</label>
    <input type="text" name="vorname">
    <br/>
    <label>Nachname</label>
    <input type="text" name="nachname">
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
    <input type="submit" value="Registieren">
</form>

<style>
    br {
        display: block;
        height: 2em;
    }
    label, input[type=submit] {
        display: block;
        margin-top: 1em;
    }
</style>