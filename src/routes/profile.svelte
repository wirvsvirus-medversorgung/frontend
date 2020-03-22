<script>
import LoggedIn, {currentUser} from '../components/LoggedIn.svelte'
</script>

<svelte:head>
	<title>medsupport - Profil</title>
</svelte:head>

<h2>Dein Profil</h2>

<p><strong>Name:</strong> {$currentUser.name}</p>
<p><strong>EMail:</strong> {$currentUser.email}</p>