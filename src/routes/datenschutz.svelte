<svelte:head>
	<title>Datenschutz</title>
</svelte:head>

<h1>Datenschutz</h1>

<p>Wir nehmen persönliche Kontaktdaten auf, um den Kontakt zwischen Studenten und Krankenhäusern herzustellen.</p>
<p>Der Wohnort des Studierenden dient zum Matching nahegelegener bedürftiger Krankenhäuser.</p>
<p>Es werden keine Daten an Dritte weitergegeben.</p>

<!-- TODO do not loose form data -->
<a on:click|once={goBack}>zurück</a>

<script>
function goBack() {
  window.history.back();
}
</script>