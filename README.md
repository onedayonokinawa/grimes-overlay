# grimes-overlay

Small Gentoo overlay.

## Add it

```
sudo emerge -av app-eselect/eselect-repository   # if you don't have it
sudo eselect repository add grimes-overlay git https://github.com/onedayonokinawa/grimes-overlay.git
sudo emaint sync -r grimes-overlay
```

## Packages

### app-portage/emfix

When an emerge fails, run `emfix` with the same arguments you gave emerge:

```
emfix media-libs/libsfml
emfix -uDN @world
```

It does a dry run and prints any USE / keyword / unmask / license changes
Portage needs as ready-to-paste commands. When a package needs a USE flag
choice Portage won't make for you (REQUIRED_USE, e.g. "exactly one of elogind
or systemd"), it lists one line per choice so you can pick. If the package
name is wrong, it shows emerge's "Maybe you meant" suggestions. It never
changes anything itself.

```
sudo emerge -av app-portage/emfix
```
