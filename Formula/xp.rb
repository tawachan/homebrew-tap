class Xp < Formula
  desc "Fast, minimal CLI for posting to X (Twitter) from your terminal"
  homepage "https://github.com/tawachan/xp"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v#{version}/xp-darwin-arm64"
      sha256 "aebaea256f494b04ff6b4f3c1af4212a704935ac8c39b2367e57092b9c574e4d"
    else
      url "https://github.com/tawachan/xp/releases/download/v#{version}/xp-darwin-x64"
      sha256 "04f30509ce6b35459723971e552cc98c6ff79517c78c1f3dff4ed74a9da9104f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v#{version}/xp-linux-arm64"
      sha256 "59737e2781da7746b0dd6e89228c7ac90177b6717470a0a2c116ab5b5bf00c3d"
    else
      url "https://github.com/tawachan/xp/releases/download/v#{version}/xp-linux-x64"
      sha256 "63b465444a2af92673ea8ad026a6c24aa0a4225bc198b29831d6171eb8934bf2"
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
