class Xp < Formula
  desc "Fast, minimal CLI for posting to X (Twitter) from your terminal"
  homepage "https://github.com/tawachan/xp"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.13/xp-darwin-arm64"
      sha256 "e593bcfea8fdf5db72b77cd0854f49b62852be3d93bed1c391133eed173645d8"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.13/xp-darwin-x64"
      sha256 "83931c72dd03416a729e3a8da7c9bd1ccbc46f01207fd88aa1eb23621ad1e4e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.13/xp-linux-arm64"
      sha256 "3c9798ae57b1e0506c8e08f92875c26654ba2688ac2ebab6292fad9d13926295"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.13/xp-linux-x64"
      sha256 "fde3f5551a1a7600dbca84339aa5bb6ef0b370492078034be93f5439279d94c8"
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
