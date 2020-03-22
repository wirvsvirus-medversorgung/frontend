<script>
    import axios from 'axios';
    let results;

    axios.get('http://localhost:5000/find_hospitals', {})
    .then(response => {
        results = response.data;
    }).catch(error => {
        console.log(error);
    })
</script>

<svelte:head>
	<title>medsupport - Vorgeschlagene Krankenhäuser</title>
</svelte:head>

<h2>Vorgeschlagene Krankenhäuser</h2>

{#if results && results.length > 0}
{#each results as result, i}
    <div class="result">
        <p><strong>{result.name}</strong></p>
        <p><i>{result.distance} m entfernt</i></p>
        <p>{result.address}</p>
        {#if result.notiz}
            <p>{result.notiz}</p>
        {/if}
    </div>
{/each}
{:else}
    <p>Liste vorgeschlagener Krankenhäuser wird geladen...</p>
{/if}

<style>
    .result {
        margin: 1em 0;
    }
    .result p {
        margin: 0;
    }
</style>