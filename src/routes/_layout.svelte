<script>
	import Header from '../components/Header.svelte';
</script>

<Header/>
<main>
	<slot></slot>
</main>

<style>
	:global(main) {
		position: relative;
		max-width: 50em;
		padding: 0 2em;
		margin: 2em auto;
		box-sizing: border-box;
	}
</style>