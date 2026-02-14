class Xp < Formula
  desc "Fast, minimal CLI for posting to X (Twitter) from your terminal"
  homepage "https://github.com/tawachan/xp"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.9/xp-darwin-arm64"
      sha256 "153ba711b31c2f4799e6e8251d1e0e3d110cd8f86bbf9c5ea11e37b9e1802019"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.9/xp-darwin-x64"
      sha256 "b212414830ea1ebbf681285a4169afeac1199b5d784e14ca33ffe85f110c46ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.9/xp-linux-arm64"
      sha256 "ed9ddf92f96727576e9444bdf19985898ad75feb3ef765f549e2eb706bad51b7"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.9/xp-linux-x64"
      sha256 "2dfab4a27c88c40f869d9539d41e16172f56e53dff353c220d16ba305e252af0"
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
