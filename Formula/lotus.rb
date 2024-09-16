# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lotus < Formula
  desc "A homebrew cask for installing filecoin-project/lotus on MacOS"
  homepage "https://filecoin.io"
  version "1.28.3"
  license "MIT"

  depends_on "hwloc"

  on_macos do
    url "https://github.com/filecoin-project/lotus/releases/download/v1.28.3/lotus_v1.28.3_darwin_all.tar.gz"
    sha256 "ef7b06c6f9c3ac5218422beec1c970871be2293b27f93b1236ba295a0dae7799"

    def install
      bin.install "lotus"
      bin.install "lotus-miner"
      bin.install "lotus-worker"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/filecoin-project/lotus/releases/download/v1.28.3/lotus_v1.28.3_linux_amd64.tar.gz"
        sha256 "c25e948c31faf74a8320c07697050d7576b8ac51e1557c39d335b857054d2f7b"

        def install
          bin.install "lotus"
          bin.install "lotus-miner"
          bin.install "lotus-worker"
        end
      end
    end
  end

  test do
    system "#{bin}/lotus --version"
    system "#{bin}/lotus-miner --version"
    system "#{bin}/lotus-worker --version"
  end
end
