class Xp < Formula
  desc "Fast, minimal CLI for posting to X (Twitter) from your terminal"
  homepage "https://github.com/tawachan/xp"
  version "0.1.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.16/xp-darwin-arm64"
      sha256 "a8a1afbd9e0cbc01c38aa1c0539ecc15d6caba14e032d6faaa6880372918603f"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.16/xp-darwin-x64"
      sha256 "df7191c0d3cf479c12f56ba1c7c70db26505d5b6125251590a3a879a509c095e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.16/xp-linux-arm64"
      sha256 "d81c949d423e65a14ff841114e48366b3e5977cf8f6600fb97c54925e00b4465"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.16/xp-linux-x64"
      sha256 "c0bd54c0a59fb72878c3607141173160d7475e9c13f3f6618553c3346672d982"
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
