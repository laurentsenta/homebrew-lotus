# This file was generated - DO NOT EDIT
class LotusNode < Formula
  desc "A homebrew cask for installing the Lotus node from filecoin-project/lotus"
  homepage "https://filecoin.io"
  version "1.28.0"
  license "MIT"

  depends_on "hwloc"

  on_macos do
    url "https://github.com/galargh/lotus/releases/download/v1.28.0/lotus_v1.28.0_darwin_all.tar.gz"
    sha256 "2a4b345f3a1e02a2a648c54752beda3664eea319b37b3fa0b0b90e67c126d31d"

    def install
      bin.install "lotus"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/galargh/lotus/releases/download/v1.28.0/lotus_v1.28.0_linux_amd64_v1.tar.gz"
        sha256 "d03e18a9b96cf53db9a23c7ba33eada6014477321b85dc0459f0d63bff14f0c2"

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
