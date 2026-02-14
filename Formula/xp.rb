class Xp < Formula
  desc "Fast, minimal CLI for posting to X (Twitter) from your terminal"
  homepage "https://github.com/tawachan/xp"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.8/xp-darwin-arm64"
      sha256 "65629615d2a604c036e8f86710aa05e33e6c73605314b9287a14884ed9876d3d"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.8/xp-darwin-x64"
      sha256 "cbfae35e700ed57f9cf5c8dc60f6471913fd7c2d52abd74a452fd320241f230a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.8/xp-linux-arm64"
      sha256 "1c2ee33b5d7ca2b676263d9be190dd24f85e930be652d68cb63d9ed1ff77aa13"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.8/xp-linux-x64"
      sha256 "d41c13ccd25824aaf017dac173d59e1d95aad9ccbdc208496219bc129559347a"
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
