class Xp < Formula
  desc "Fast, minimal CLI for posting to X (Twitter) from your terminal"
  homepage "https://github.com/tawachan/xp"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.14/xp-darwin-arm64"
      sha256 "6fbeb92eb3e835482a96cd39ba8fe30f24f1238fa114c30c59c0cf49649349c9"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.14/xp-darwin-x64"
      sha256 "e392c5d00e8ee1275997e50677a0410434612221184bff39714d33bbc710f388"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.14/xp-linux-arm64"
      sha256 "bedbdafa11af2fd81e883b4ba9f0c8e84cbd42a6a6cdce068e55fec7057c9b96"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.14/xp-linux-x64"
      sha256 "b52a4ec3c188f3ab69c660bf552d55a700603c2f83f9cf6cae514ab68d882d85"
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
