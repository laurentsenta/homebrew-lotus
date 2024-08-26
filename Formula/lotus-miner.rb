# This file was generated - DO NOT EDIT
class LotusMiner < Formula
  desc "A homebrew cask for installing the Lotus miner from filecoin-project/lotus"
  homepage "https://filecoin.io"
  version "1.28.1"
  license "MIT"

  depends_on "hwloc"

  on_macos do
    url "https://github.com/galargh/lotus/releases/download/miner/v1.28.1/lotus-miner_v1.28.1_darwin_all.tar.gz"
    sha256 "662d22f650d3311560e11b6989f0e920ab10f4620efc4cc593a72e5bfe5f81ca"

    def install
      bin.install "lotus-miner"
      bin.install "lotus-worker"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/galargh/lotus/releases/download/miner/v1.28.1/lotus-miner_v1.28.1_linux_amd64_v1.tar.gz"
        sha256 "b02d79531764d6c9dd1c952184ed28329948bf85522a3b928328bff474f1c1b5"

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
