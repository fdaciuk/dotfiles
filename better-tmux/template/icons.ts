import type { Icons } from "./types"
import { machine } from "./shared"

const defaultIcons: Icons = {
  zoom: "⛶",
  bell: "🔔",
  prefix: "⌨",
}

const ubuntuIcons: Icons = {
  ...defaultIcons,
  zoom: "",
}

export const icons = machine === "pc" ? defaultIcons : ubuntuIcons
