class Xp < Formula
  desc "Fast, minimal CLI for posting to X (Twitter) from your terminal"
  homepage "https://github.com/tawachan/xp"
  version "0.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.17/xp-darwin-arm64"
      sha256 "abd1f7f11b9d940bb73e992b2bb2078479f9b4220fb0db66685f00ad4a683cfa"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.17/xp-darwin-x64"
      sha256 "360c3a7e797795d1a257342ef2ad354035fa22cd7020cffdc1859df12edbd1cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.17/xp-linux-arm64"
      sha256 "2858fd19d017678ecf35129641b1651e1216bba42492321d3fe643ad7a6cdbc1"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.17/xp-linux-x64"
      sha256 "985290737cbdffb7716a673fc37f261ca4041423c4362f862d5a0a1219b32870"
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
