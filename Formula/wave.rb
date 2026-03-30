class Wave < Formula
  desc "Universal GPU ISA - write kernels once, run on any GPU"
  homepage "https://wave.ojima.me"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Oabraham1/wave/releases/download/v0.1.0/wave-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256"
    else
      url "https://github.com/Oabraham1/wave/releases/download/v0.1.0/wave-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER_SHA256"
    end
  end

  on_linux do
    url "https://github.com/Oabraham1/wave/releases/download/v0.1.0/wave-linux-x86_64.tar.gz"
    sha256 "PLACEHOLDER_SHA256"
  end

  def install
    bin.install "wave-asm"
    bin.install "wave-dis"
    bin.install "wave-emu"
    bin.install "wave-compiler"
  end

  test do
    system "#{bin}/wave-asm", "--help"
  end
end
