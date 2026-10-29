<a href="https://openams.si-forge.com">
  <picture>
    <source media="(prefers-reduced-motion: reduce) and (prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/OpenAMSOrg/.github/main/profile/assets/hero-dark.png">
    <source media="(prefers-reduced-motion: reduce)" srcset="https://raw.githubusercontent.com/OpenAMSOrg/.github/main/profile/assets/hero-light.png">
    <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/OpenAMSOrg/.github/main/profile/assets/hero-dark.webp">
    <img alt="OpenAMS: Klipper for multi-material units. Four units each feed a filament to one joint, and the four filaments spin together into the OpenAMS logo." src="https://raw.githubusercontent.com/OpenAMSOrg/.github/main/profile/assets/hero-light.webp">
  </picture>
</a>

<p align="center">
  <a href="https://openams.si-forge.com"><b>Documentation</b></a> &nbsp;·&nbsp;
  <a href="https://discord.gg/Ab8TrGarpu"><b>Discord</b></a> &nbsp;·&nbsp;
  <a href="https://si-forge.com"><b>Store</b></a>
</p>

**OpenAMS turns a multi-material unit into a smart appliance for your Klipper
printer.** Your slicer's `T0`, `T1`, ... tools become automatic filament
changes, an empty spool reloads from a spare one, and every unit, bay and spool
shows in Mainsail. It started with Bambu Lab's AMS and is growing to cover
other MMUs.

## Start here

<table>
<tr>
<td width="50%" valign="top">
<a href="https://github.com/OpenAMSOrg/openams"><img src="https://raw.githubusercontent.com/OpenAMSOrg/.github/main/profile/assets/openams.webp" alt="The Cortex Bridge board, which connects stock Bambu Lab AMS units to Klipper over USB"></a>

### [openams](https://github.com/OpenAMSOrg/openams)

The OpenAMS host for Klipper. It runs Bambu Lab AMS units through a Cortex
Bridge or OpenAMS boards, and other MMUs through klipper-mmu. One
`install.sh` links it into Klipper and Moonraker, sets up Spoolman and adds
it to Mainsail's Update Manager.

`Python` · MIT · [Install guide](https://github.com/OpenAMSOrg/openams/blob/main/docs/guide/install.md)
</td>
<td width="50%" valign="top">
<a href="https://github.com/OpenAMSOrg/openams-ui"><img src="https://raw.githubusercontent.com/OpenAMSOrg/.github/main/profile/assets/openams-ui.png" alt="The OpenAMS panel in Mainsail: the toolhead's filament pressure, and an AMS HT and an AMS 2 Pro with their spools"></a>

### [openams-ui](https://github.com/OpenAMSOrg/openams-ui)

The OpenAMS screens: a panel in Mainsail and Fluidd, and a small ESP32
touchscreen for the unit, with a spool tag writer. One C core drives the
LVGL display, a desktop simulator and the web panel.

`C` · MIT · [User guide](https://github.com/OpenAMSOrg/openams-ui/blob/main/docs/guide/README.md)
</td>
</tr>
</table>

## One software, three kinds of hardware

| Hardware | What it does | Status |
|---|---|---|
| **Cortex Bridge** (0AMS) | A USB board that connects up to four stock Bambu Lab AMS 1, AMS 2 Pro or AMS HT units to Klipper. Nothing on the AMS is opened or flashed. | Latest. [Guide](https://openams.si-forge.com/en/0ams). Order: [US](https://si-forge.com/products/cortex-bridge-us), [EU](https://si-forge.com/products/cortex-bridge-eu) |
| **OpenAMS 1** (Legacy) | The OpenAMS mainboard and Filament Pressure Sensor, fitted in place of the AMS 1's own controller. | Supported. [Guides](https://openams.si-forge.com/) |
| **Klipper-MMU** | Firmware for the controller of other MMUs, such as BoxTurtle, ERCF and Tradrack, so the MMU runs its own loads, unloads and safety checks. | In development; not yet qualified on real hardware. [Guides](https://openams.si-forge.com/en/klipper-mmu) |

> [!NOTE]
> **Coming from `klipper_openams`?** It is deprecated, and [openams](https://github.com/OpenAMSOrg/openams)
> replaces it. Moving over is one installer run, keeps your `oams.cfg`, and
> every G-code command keeps working:
> [moving from klipper_openams](https://github.com/OpenAMSOrg/openams/blob/main/docs/guide/install.md#moving-from-klipper_openams).

## More from OpenAMS

| Repository | What it is |
|---|---|
| [filament-buffer](https://github.com/OpenAMSOrg/filament-buffer) | CAD and STL files for the OpenAMS 1 filament pressure sensor (FPS), the rear umbilical and the filament path jointer. |
| [klipper-mmu-docs](https://github.com/OpenAMSOrg/klipper-mmu-docs) | The klipper-mmu user guide, published at [openamsorg.github.io/klipper-mmu-docs](https://openamsorg.github.io/klipper-mmu-docs/). |
| [mmu-display-demo](https://github.com/OpenAMSOrg/mmu-display-demo) | The touchscreen UI in your browser, through WebAssembly: [try it](https://openamsorg.github.io/mmu-display-demo/). |
| [gco-routines](https://github.com/OpenAMSOrg/gco-routines) | Cooperative G-code routines and opt-in ordered macros for Klipper, as an extras-only add-on. |
| [klipper-optional-improvements](https://github.com/OpenAMSOrg/klipper-optional-improvements) | Optional Klipper improvements: CAN bus robustness and diagnostics, input hardening and host performance, kept merged with upstream Klipper. |
