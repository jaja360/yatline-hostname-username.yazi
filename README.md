# yatline-hostname-username.yazi

An addon to display the current hostname and username in your [yatline.yazi](https://github.com/imsi32/yatline.yazi).

## Requirements

- [yazi](https://github.com/sxyazi/yazi) version >= 0.4.0
- [yatline.yazi](https://github.com/imsi32/yatline.yazi)

## Installation

```sh
ya pack -a jaja360/yatline-hostname-username
```

## Usage

> [!IMPORTANT]
> Add this to your `~/.config/yazi/init.lua` after yatline.yazi's initialization.

```lua
require("yatline-hostname-username"):setup()
```

Optionnally, you can customize the color and the mode of the output:

```lua
require("yatline-hostname-username"):setup({
  color = "silver",
  mode = "both" -- "host", "user", "both"
})
```

Then, add it in one of your sections in the yatline configuration using:

```lua
{ type = "coloreds", custom = false, name = "hostname_username" }
```

## Credits

- [Yazi](https://github.com/sxyazi/yazi)
- [yatline.yazi](https://github.com/imsi32/yatline.yazi)
- [yatline-modified-time.yazi](https://github.com/wekauwau/yatline-modified-time.yazi)
