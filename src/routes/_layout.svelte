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
		max-width: 56em;
		padding: 2em;
		margin: 0 auto;
		box-sizing: border-box;
	}
</style>