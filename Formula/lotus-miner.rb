# This file was generated - DO NOT EDIT
class LotusMiner < Formula
  desc "A homebrew cask for installing the Lotus miner from filecoin-project/lotus"
  homepage "https://filecoin.io"
  version "1.28.0"
  license "MIT"

  depends_on "hwloc"

  on_macos do
    url "https://github.com/galargh/lotus/releases/download/miner/v1.28.0/lotus-miner_v1.28.0_darwin_all.tar.gz"
    sha256 "0688d6c829a10639c9608062124272cdbe404cc45833912e49ca74070405c315"

    def install
      bin.install "lotus-miner"
      bin.install "lotus-worker"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/galargh/lotus/releases/download/miner/v1.28.0/lotus-miner_v1.28.0_linux_amd64_v1.tar.gz"
        sha256 "b771f22f62dee0ab2da1f86966e2ea28e3e47c305d6109449fcd0d949e8b6304"

        def install
          bin.install "lotus-miner"
          bin.install "lotus-worker"
        end
      end
    end
  end

  test do
    system "#{bin}/lotus-miner --version"
    system "#{bin}/lotus-worker --version"
  end
end
