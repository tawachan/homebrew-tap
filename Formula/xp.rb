class Xp < Formula
  desc "Fast, minimal CLI for posting to X (Twitter) from your terminal"
  homepage "https://github.com/tawachan/xp"
  version "0.1.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.15/xp-darwin-arm64"
      sha256 "a784fa1d72c4020e23246ded98ee81ccbdf6fc503ae67917589150baef9cdea2"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.15/xp-darwin-x64"
      sha256 "240c304cce641c8dde6ecdceb371b961565547d08f0036bd61c042ac2086e2f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.15/xp-linux-arm64"
      sha256 "d79d7708b9db6c2ff37a4ccb4fad9aad30d1804e19f5399746a09d86644ef5b5"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.15/xp-linux-x64"
      sha256 "ad91a04b9fd4e7e55f6fc9cfa37c7b16358ed374939e0b2e634674544fb4a5c9"
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
