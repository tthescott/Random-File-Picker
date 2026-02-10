# Random File Picker

## Description
Random file picker is a batch script that opens a random file from a directory. Being recursive, it can open a file even if that file is inside one or more folders within the starting folder. The script, `random.bat`, will never open itself, `install.bat`, `uninstall.bat`, or `desktop.ini`. Let me know if you want to add any more files to this list.

## Usage
After installing (instructions below), run `random.bat` by double clicking it or by running it from the terminal. It will then open a random file from the directory it is in. As stated above, it can open a file from any folder within the starting folder.

## Installation
There's two ways you can install this: manually or by using `install.bat`

### Manually
Do this if you want to choose exactly what folders you want `random.bat` to be in.
1. Copy `random.bat` to any folder you want to pick a random file from
2. Follow the `Usage` instructions above

### Using `install.bat`
Do this if you want `random.bat` to be placed in **every sub-folder within the starting folder**. You could do this manually, but `install.bat` is just a script to do this automatically.
1. Copy `install.bat` and `random.bat` to the top-level folder
2. Run `install.bat`
3. `random.bat` is now in every folder
4. (Optional) Delete `install.bat`, it's not needed for `random.bat` to function

## Update
1. Manually replace the old `random.bat` with the new one in the top-level folder
2. Follow the `Installation` instructions above with the new `random.bat` and `install.bat` files

## Uninstallation
1. Copy `uninstall.bat` to the top-level folder
2. Run `uninstall.bat`
3. Every `random.bat` file in the top-level folder and every sub-folder will be deleted
4. (Optional) Delete `uninstall.bat`, you don't need it anymore

## Shout Out
Spencer
