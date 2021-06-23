# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nyan < Formula
  desc "Colored cat command which supports syntax highlighting."
  homepage "https://github.com/toshimaru/nyan"
  version "0.9.5"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/toshimaru/nyan/releases/download/v0.9.5/nyan_Darwin_x86_64.tar.gz"
      sha256 "d9cdcde026d4b765c17de277ba60fe3626c0d21424e7f71cc563a865c2ea71d9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/toshimaru/nyan/releases/download/v0.9.5/nyan_Darwin_arm64.tar.gz"
      sha256 "3a06d21a7f6c1a2deb0fbf6893fbe1f0ae56004646b67e245e7eade2f2907dd1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/toshimaru/nyan/releases/download/v0.9.5/nyan_Linux_x86_64.tar.gz"
      sha256 "fb6460eda69bdd9ed8859d0fa775cbb710a64b2280077d148b5b3413cab20bfb"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/toshimaru/nyan/releases/download/v0.9.5/nyan_Linux_arm64.tar.gz"
      sha256 "9a82def9f9b24051bb6d55a6e47daa9157f9542ffffb5a3826226adb235029dc"
    end
  end

  def install
    bin.install "nyan"
  end

  test do
    system "#{bin}/nyan -v"
  end
end
