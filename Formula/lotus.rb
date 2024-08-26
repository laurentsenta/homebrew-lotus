# This file was generated - DO NOT EDIT
class Lotus < Formula
  desc "A homebrew cask for installing the Lotus node from filecoin-project/lotus"
  homepage "https://filecoin.io"
  version "1.28.1"
  license "MIT"

  depends_on "hwloc"

  on_macos do
    url "https://github.com/galargh/lotus/releases/download/v1.28.1/lotus_v1.28.1_darwin_all.tar.gz"
    sha256 "0e5941d1466e55b0670fbece4022d965488b2da6969353e07b6fd88cef232815"

    def install
      bin.install "lotus"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/galargh/lotus/releases/download/v1.28.1/lotus_v1.28.1_linux_amd64_v1.tar.gz"
        sha256 "f4bace4d424f48ad5897964865b765669d6adec85b4462c1dd54c2fee55caa84"

        def install
          bin.install "lotus"
        end
      end
    end
  end

  test do
    system "#{bin}/lotus --version"
  end
end
