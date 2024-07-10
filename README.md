


# PEUREN_NOTIFY
**A resource that provides notifications.
You are also free to use this for your own resources, but be sure to include credit or use this script as a dependency if releasing paid work.**

## Usage

### EXPORT
```lua
exports["peuren_notify"]:Notify({
    title = "Title",
    description = "Description",
    severity = "info",
    life = 5000,
    position = "topright"
})
```

### EVENTS
```lua
--SERVER-SIDE:
TriggerClientEvent("peuren_notify", source, {
	title = "Title",
	description = "Description",
	severity = "info",
	life = 5000,
	position = "topright"
})

--CLIENT-SIDE:
TriggerEvent("peuren_notify", {
	title = "Title",
	description = "Description",
	severity = "info",
	life = 5000,
	position = "topright"
})
```

### PARAMETERS
```
{
	title = title of the notification,
	description = description of the notification,
	severity = severity of the notification ("error" | "secondary" | "info" | "success" | "warn" | "contrast"),
	life = duration of the notification in milliseconds,
	position = position of the notification ("center" | "topleft" | "topcenter" | "topright" | "bottomleft" | "bottomcenter" | "bottomright")
}
```

### UI
Made using [PrimeVue](https://primevue.org/)

## Check us out!
You can reach us on our [Discord](https://discord.gg/wtxqbm4Sjq) and you can find our releases on our [Tebex store](https://peuren.tebex.io/)
