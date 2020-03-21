
<h2>Registrierung für Studierende</h2>

<form>
    <label>Vorname</label>
    <input type="text" name="vorname" required>
    <br/>
    <label>Nachname</label>
    <input type="text" name="nachname" required>
    <br/>
    <label>Telefonnummer</label>
    <input type="text" name="phonenumber" required>
    <br/>
    <label>Ich studiere Medizin im sovielten Semester</label>
    <input type="number" min=1 name="semester">
    <br/>
    <label>E-Mail-Adresse</label>
    <input type="text" name="emailaddress" required>
    <br/>
    <label>Passwort</label>
    <input type="password" name="password" required>
    <br/>
    <label>Passwort bestätigen</label>
    <input type="password" name="password-confirmation" required>
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