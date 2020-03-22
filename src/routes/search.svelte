<script>
    import axios from 'axios';
    let results;
    async function handleSubmit(e) {
        let formData = new FormData(e.target)
        let loc = formData.get("location")
        console.log(loc)
        const params = {
            locate: loc,
            json: '1'
        }

        axios.get('https://geocode.xyz', {params})
        .then(response => {
            console.log(response.data);
            return Promise.resolve([response.data.longt, response.data.latt])
        }).catch(error => {
            console.log(error);
        });
    }
</script>

<form on:submit|preventDefault="{handleSubmit}" id="form">
    <input type="text" name="location" id="location">
    <input type="submit" value="suchen">
</form>