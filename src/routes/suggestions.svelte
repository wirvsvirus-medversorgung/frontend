<script>
    import axios from 'axios';
    let results;
    const params = {
        locate: 'Berlin',
        json: '1'
    }

    //eigentlich anfrage ans backend
    axios.get('https://geocode.xyz', {params})
    .then(response => {
        console.log(response.data);
        return Promise.resolve([response.data.longt, response.data.latt])
    }).catch(error => {
        console.log(error);
    }).then(() => {
        results = [
            { //dummy data
                name: "Krankenhaus 1",
                dist: "3 km",
                address: "Wiesenweg 4",
                urgency: "hoch",
                text: "Weitere Information"
            }
        ]
    })
</script>

{#if results && results.length > 0}
{#each results as result, i}
    <div class="result">
        {#each Object.keys(result) as key}
            <p><strong>{key}</strong>: {result[key]}</p>
        {/each}
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