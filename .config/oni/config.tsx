
import * as React from "react"
import * as Oni from "oni-api"

export const activate = (oni: Oni.Plugin.Api) => {
    console.log("config activated")

    // Input
    //
    // Add input bindings here:
    //
    oni.input.bind("<c-enter>", () => console.log("Control+Enter was pressed"))

    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")

}

export const deactivate = (oni: Oni.Plugin.Api) => {
    console.log("config deactivated")
}

export const configuration = {
    "oni.useDefaultConfig": false,
    "oni.loadInitVim": true,
    "oni.hideMenu": true,
    "editor.fontSize": "14px",
    "editor.fontFamily": "Fira Code",
    "editor.linePadding": 12,
    "editor.fontLigatures": true,
    "ui.animations.enabled": true, "ui.fontSmoothing": "auto",
    "ui.colorscheme": "gruvbox",
}
