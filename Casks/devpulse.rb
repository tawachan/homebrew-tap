cask "devpulse" do
  version "0.2.1"
  sha256 "c3020fbbf0b481c270bdbbe99ba628d79889aa01f97674666a04d2fc2df9592d"

  url "https://github.com/tawachan/devpulse/releases/download/v#{version}/DevPulse.zip"
  name "DevPulse"
  desc "Menu bar app for monitoring AI coding agent sessions"
  homepage "https://github.com/tawachan/devpulse"

  app "DevPulse.app"

  uninstall launchctl: "com.tawachan.devpulse",
            quit:      "com.tawachan.devpulse"

  zap trash: "~/.claude/menu-bar"
end
