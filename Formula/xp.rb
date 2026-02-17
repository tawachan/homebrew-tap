class Xp < Formula
  desc "Fast, minimal CLI for posting to X (Twitter) from your terminal"
  homepage "https://github.com/tawachan/xp"
  version "0.1.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.18/xp-darwin-arm64"
      sha256 "c18f4c225a6207ed42d4b9900f9f3a0bcacc621b08cce8ab99d1b80dc736f121"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.18/xp-darwin-x64"
      sha256 "1745a875545140b0ec5e11fb35ace3d6ce151668ef0887afa8962948f3301502"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.18/xp-linux-arm64"
      sha256 "3853cd80f3d3e521b6ff91e2b6c70c08ec5c8681da7d76fb86d639a9ed1a4b59"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.18/xp-linux-x64"
      sha256 "f5badbdc4444ebec82ffe44d73f1f4195b78632f973e30c08755b00c21f7edb4"
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
