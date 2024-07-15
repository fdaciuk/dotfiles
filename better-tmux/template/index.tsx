import {
  type BetterTmuxConfig,
  type WindowConfig,
  Box,
  useTheme,
  tmux,
} from 'better-tmux'
import { Clock, Date, Hostname, SessionName, Widget, WidgetIcon, WidgetLabel } from 'better-tmux/widgets'

const WindowBellFlag = () => {
  return "#{?window_bell_flag,🔔,}"
}
const Zoom = () => {
  return "#{?window_zoomed_flag, ⛶,}"
}

const Prefix = () => {
  return "#{?client_prefix,⌨  ,}"
}

const Ghost = () => (
  <Box>
    <WindowBellFlag />
    <Zoom />
  </Box>
)

const Window = ({ type, number, name }: WindowConfig) => {
  const theme = useTheme()
  return (
    <Box
      padding={1}
      bg={type === 'active' ? theme.primary : theme.background}
      fg={type === 'active' ? theme.background : theme.foreground}
    >
      {number}::{name}<Ghost />
    </Box>
  )
}

const CustomStatusLeft = () => {
  return (
    <Box>
      <SessionName icon="〣" />
    </Box>
  )
}

const Clima = () => {
  const request = `bunx clima curitiba?format=1`
  const timeToUpdate = "900"
  return (
    <Widget>
      <WidgetIcon>
        {`#(${request} | cut -d ' ' -f 1; sleep ${timeToUpdate})`}
      </WidgetIcon>
      <WidgetLabel>
        {`#(${request} | cut -d ' ' -f 3; sleep ${timeToUpdate})`}
        {`#(${request} | cut -d ' ' -f 4; sleep ${timeToUpdate})`}
      </WidgetLabel>
    </Widget>
  )
}

const CustomStatusRight = () => (
  <Box>
    <Prefix />
    <Clima />
    <Date format={`${tmux.globals.abbreviated_day}, ${tmux.globals.day} ${tmux.globals.abbreviated_month}`} />
    <Clock />
    <Hostname />
  </Box>
)

export default {
  theme: "catppuccin-frappe",
  status: {
    bg: "#292c3c",
    left: <CustomStatusLeft />,
    right: <CustomStatusRight />,
  },
  window: (window) => <Window {...window} />,
  options: {
    prefix: "C-b",
    // adicionar opções on | off
    mouse: "on",
    statusKeys: "vi",
    modeKeys: "vi",
    defaultTerminal: "tmux-256color",
    terminalOverrides: ",*256col*:Tc",
    escapeTime: 10,
    historyLimit: 10000,
  },
} satisfies BetterTmuxConfig
