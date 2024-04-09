/**
# Requirements: Bun (https://bun.sh)

# Usage: 
1. Change the owner of `build_info.json`:
```bash
sudo chown $USER:$USER /opt/discord-ptb/resources/build_info.json
```

2. Change the Exec line in the /usr/share/applications/discord-ptb.desktop file to run this script, for example:
```
Exec=bun /path-for-this-script/discord-updater/index.ts && /usr/bin/discord-ptb
```

Reference: https://gist.github.com/JoeBlakeB/9c60ae1b3a1904276580b12ac0ced018
 */

import { $ } from "bun"

async function main() {
  const x = await fetch("https://discord.com/api/download/ptb?platform=linux&format=tar.gz", {
    redirect: "manual",
  })
  const versionNumber = x.headers.get("location")?.replace(/^.+\/linux\/(.+)?\/.+$/, "$1") ?? ""
  const matchVersion = versionNumber.match(/^\d+\.\d+\.\d+$/)?.[0]

  if (!matchVersion) {
    await $`echo "The version number is not valid: ${versionNumber}"`
    await $`exit 1`
  }

  const discordBuildInfoPath = "/opt/discord-ptb/resources/build_info.json"
  const discordBuildInfo: Record<string, string> = await $`cat ${discordBuildInfoPath}`.json()
  const currentVersion = discordBuildInfo.version

  if (currentVersion === versionNumber) {
    return $`exit 0`
  }

  discordBuildInfo.version = versionNumber
  console.log(discordBuildInfo)
  await Bun.write(
    Bun.file(discordBuildInfoPath),
    JSON.stringify(discordBuildInfo, null, 2),
  )
  await $`exit 0`
}

await main()
