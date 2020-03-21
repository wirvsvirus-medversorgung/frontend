<script>
	import Header from '../components/Header.svelte';
</script>

<link href="https://fonts.googleapis.com/css2?family=Karla&family=Tinos:wght@700&display=swap" rel="stylesheet"/>

<Header/>
<main>
	<slot></slot>
</main>

<style>
	main {
		position: relative;
		max-width: 56em;
		background-color: white;
		padding: 2em;
		margin: 0 auto;
		box-sizing: border-box;
	}
</style>