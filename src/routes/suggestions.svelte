<script>
    import axios from 'axios';
    let results;
    const params = {
    }

    axios.get('http://rodsec.de:5000/find_hospitals', {params})
    .then(response => {
        results = response.data;
        console.log(results)
        results.map(result => {
            if(!result.notiz) result.notiz = "(Hinweis fehlt)"
            return result
        })
    }).catch(error => {
        console.log(error);
    })
</script>

<h2>Vorgeschlagene Krankenhäuser</h2>

{#if results && results.length > 0}
{#each results as result, i}
    <div class="result">
        <p><strong>{result.name}</strong> <i>{result.distance} km entfernt</i></p>
        <p>{result.address}</p>
        <p>{result.notiz}</p>
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