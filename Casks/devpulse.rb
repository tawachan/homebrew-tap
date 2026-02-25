cask "devpulse" do
  version "0.1.0"
  sha256 "87d1f3ffb12af1808e4d62c28fac39d7dd1bc74cfc306b102b4a4c7e2444e928"

  url "https://github.com/tawachan/devpulse/releases/download/v#{version}/DevPulse.zip"
  name "DevPulse"
  desc "Menu bar app for monitoring AI coding agent sessions"
  homepage "https://github.com/tawachan/devpulse"

  app "DevPulse.app"

  uninstall launchctl: "com.tawachan.devpulse",
            quit:      "com.tawachan.devpulse"

  zap trash: "~/.claude/menu-bar"
end
