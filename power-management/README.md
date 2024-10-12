# i3 Power Management Blocklet

A simple i3 blocklet script that provides power management options such as shutdown, suspend, hibernate, reboot, lock, and exit. This blocklet integrates with `dmenu` to allow users to select an action with a click.

## Features

- **Shutdown**: Powers off the system.
- **Suspend**: Puts the system into sleep mode.
- **Hibernate**: Saves the current state to disk and powers off the system.
- **Reboot**: Restarts the system.
- **Lock**: Locks the screen using `i3lock`.
- **Exit**: Cancels the operation.

## Requirements

- **dmenu**: A dynamic menu for selecting options.

## Usage

1. When you click the blocklet in your i3 status bar, it will present a menu using `dmenu` with the following options:

   - **Shutdown**
   - **Suspend**
   - **Hibernate**
   - **Reboot**
   - **Lock**
   - **Exit** (to cancel)

2. Select an option, and the corresponding system command will be executed.

# i3block config

```bash
[power-management]
command=$SCRIPT_DIR/power-management/power-management.sh
interval=once
signal=1

```
