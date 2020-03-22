<div class="header">
    <a href="/">
        <h1><span>med</span>support</h1>
    </a>
    <slot></slot>
</div>

<style>
    .header {
        display: block;
        margin-bottom: 50px;
    }
    a {
        text-decoration: none;
        color: unset;
    }
    a:hover {
        text-decoration: underline;
    }
	h1 {
        margin: 0.8em 0 0 0;
        color: black;
        text-align: center;
        font-weight: 500;
        font-size: 2.5em;
        line-height: 100%;
    }
    span {
        color: #6A1758;
	}
</style>