class Xp < Formula
  desc "Fast, minimal CLI for posting to X (Twitter) from your terminal"
  homepage "https://github.com/tawachan/xp"
  version "0.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.11/xp-darwin-arm64"
      sha256 "cc02b5731de1ea913490940f32d6184c28470e80ac35f76a125d1d578f3cb2f6"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.11/xp-darwin-x64"
      sha256 "6abb18675c211a4c9af91188ef174a2368575228afeff0e88089fe7109525497"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.11/xp-linux-arm64"
      sha256 "778a8a22b8118de1e9a5165326412fe87a034acf77959191ec96985d1b341595"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.11/xp-linux-x64"
      sha256 "0afc98a09a65356f9626881cc99651e4363fb4ebf97c733f002beb9522bf99bc"
    end
  end

  def install
    binary = Dir.glob("xp-*").first || "xp"
    bin.install binary => "xp"
  end

  test do
    assert_match "xp", shell_output("#{bin}/xp version")
  end
end
