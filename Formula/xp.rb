class Xp < Formula
  desc "Fast, minimal CLI for posting to X (Twitter) from your terminal"
  homepage "https://github.com/tawachan/xp"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.7/xp-darwin-arm64"
      sha256 "58b003845652c513103c392ad110903a2086eb1d01f7f8cedcb19c0cdb3344d3"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.7/xp-darwin-x64"
      sha256 "54889ae40b3fbd9b99c07a90b075f23d8f4577a6c4adb98c66c77200d48431c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tawachan/xp/releases/download/v0.1.7/xp-linux-arm64"
      sha256 "2f873886495bf805a8c23f363bc9b2bda8408f0a96b8e5b9a050d40eded9c7f6"
    else
      url "https://github.com/tawachan/xp/releases/download/v0.1.7/xp-linux-x64"
      sha256 "360e939627e9a79daa41d4a293ea7cf37d4619e9ec2258d8881e20a3f9861e74"
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
