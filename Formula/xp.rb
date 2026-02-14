class Xp < Formula
  desc "Fast, minimal CLI for posting to X (Twitter) from your terminal"
  homepage "https://github.com/tawachan/xp"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.10/xp-darwin-arm64"
      sha256 "3cebfe253cf706f2f5205f4b29f26561a0df6d69e0e2748adb563024a79c32d1"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.10/xp-darwin-x64"
      sha256 "873a7615e1cb4c39d7caf9b903dbb12a664fc4d0e7709270ca1f56ecc5ad9c46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.10/xp-linux-arm64"
      sha256 "0d760cd61db0ce47e9f1a9ccdf55116d2b9d665a3355773892f1355372555459"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.10/xp-linux-x64"
      sha256 "7cd6afd4a1d92b20ee2ffe6f524bd2dcc03815255c16eb200d6efd6a2131674c"
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
