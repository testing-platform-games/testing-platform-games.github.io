# Testing Platform's Ruffle instance

## Important information

[Ruffle Wiki](https://github.com/ruffle-rs/ruffle/wiki/Using-Ruffle#web)
[Ruffle Core](https://github.com/ruffle-rs/ruffle/tree/master/web/packages/core)
[latest build](https://github.com/ruffle-rs/ruffle/releases)
[build it yourself](https://github.com/ruffle-rs/ruffle/blob/master/web/README.md)
[WASM web server configuration](https://github.com/ruffle-rs/ruffle/wiki/Using-Ruffle#configure-wasm-mime-type)
[Ruffle Website](https://ruffle.rs/)
[Ruffle GitHub Repo](https://github.com/ruffle-rs/ruffle)

### Use Ruffle
Here you go:

```html
<script src="https://testing-platform-games.github.io/cdn/ruffle/ruffle.js"></script>
```

Or use the official one:

```html
<script src="https://unpkg.com/@ruffle-rs/ruffle"></script>
```

### Javascript API

If you want to control the Ruffle player, you can use the Javascript API.

```html
<script>
    window.RufflePlayer = window.RufflePlayer || {};

    window.addEventListener("DOMContentLoaded", () => {
        let ruffle = window.RufflePlayer.newest();
        let player = ruffle.createPlayer();
        let container = document.getElementById("container");
        container.appendChild(player);
        player.load("movie.swf");
    });
</script>
<script src="https://testing-platform-games.github.io/cdn/ruffle/ruffle.js"></script>
## Use the official one if you like to use the official instance: <script src="https://unpkg.com/@ruffle-rs/ruffle"></script>
```

## Building, testing or contributing

Please see [the ruffle-web README](https://github.com/ruffle-rs/ruffle/blob/master/web/README.md).
