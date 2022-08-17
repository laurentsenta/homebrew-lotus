# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lotus < Formula
  desc "A homebrew cask for installing filecoin-project/lotus on MacOS"
  homepage "https://filecoin.io"
  version "1.17.1-rc3"
  license "MIT"
  depends_on :macos

  on_macos do
    url "https://github.com/filecoin-project/lotus/releases/download/v1.17.1-rc3/lotus_1.17.1-rc3_darwin_all.tar.gz"
    sha256 "2c9ab9a6b04d8bca9bafcc65b1b99019ccee0ba81076aeccf5493ee082db327b"

    def install
      bin.install "lotus"
      bin.install "lotus-miner"
      bin.install "lotus-worker"
    end
  end

  depends_on "pkg-config"
  depends_on "jq"
  depends_on "bzr"
  depends_on "hwloc"

  test do
    system "#{bin}/lotus --version"
    system "#{bin}/lotus-miner --version"
    system "#{bin}/lotus-worker --version"
  end
end
