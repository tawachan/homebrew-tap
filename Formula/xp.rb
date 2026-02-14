class Xp < Formula
  desc "Fast, minimal CLI for posting to X (Twitter) from your terminal"
  homepage "https://github.com/tawachan/xp"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.12/xp-darwin-arm64"
      sha256 "8e8b47e806dc5713ff9a131da0c85a5e11885980e501ffd0452a423736d9ec85"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.12/xp-darwin-x64"
      sha256 "e556ec93f78eb2a304a4575804d93de1eeb6dbcdf38db95f6789b29bf38500c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.12/xp-linux-arm64"
      sha256 "2890d8e5883485417155e95f82c5515bf09c85b60c7ab1cc480972effc6a4d1a"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.12/xp-linux-x64"
      sha256 "4bc35c05cff21eba36c731d16b79d5db10803c37819f2680be88f33e17bfb939"
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
