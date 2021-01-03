# ARCH Sample Package

Simple ARCH package to serve as an example.

## Building the package

    cd package
    makepkg

## Testing changes

Modify `package/PKGBUILD` then try out changes by running:

    makepkg -fcC

* -f, --force      Overwrite existing package
* -c, --clean      Clean up work files after build
* -C, --cleanbuild Remove $srcdir/ dir before building the package

Optionaly use the `-e` options to make changes to the `src` folder (testing
changes on the Makefile for example).

* -e, --noextract  Do not extract source files (use existing $srcdir/ dir)

## Installing the package

As for other manually built packages, run the following command:

    pacman -U mypackage.pkg.tar.zst

## Uninstalling the package

As for other packages, run the following command:

    pacman -Rns mypackage

* -n, --nosave         remove configuration files
* -s, --recursive      remove unnecessary dependencies
