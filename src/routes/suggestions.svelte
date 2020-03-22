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
                distance: "3",
                address: "Wiesenweg 4, Köln",
                description: "Wir benötigen 4 Studenten für die Intensivpflege."
            },{ //dummy data
                name: "Krankenhaus 2",
                distance: "19",
                address: "Wiesengrund 80, Meerane",
                description: "Wir benötigen 8 Studenten zur Beatmung."
            }
        ]
    })
</script>

<h2>Vorgeschlagene Krankenhäuser</h2>

{#if results && results.length > 0}
{#each results as result, i}
    <div class="result">
        <p><strong>{result.name}</strong> <i>{result.distance} km entfernt</i></p>
        <p>{result.address}</p>
        <p>{result.description}</p>
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