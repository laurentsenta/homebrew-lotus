# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lotus < Formula
  desc "A homebrew cask for installing filecoin-project/lotus on MacOS"
  homepage "https://filecoin.io"
  version "1.17.1"
  license "MIT"

  depends_on "pkg-config"
  depends_on "jq"
  depends_on "bzr"
  depends_on "hwloc"
  depends_on :macos

  on_macos do
    url "https://github.com/filecoin-project/lotus/releases/download/v1.17.1/lotus_1.17.1_darwin_all.tar.gz"
    sha256 "5d689b941fc1d441bab4eac1def6982f7e4885f9e9b00d485f57fcbc2017e2de"

    def install
      bin.install "lotus"
      bin.install "lotus-miner"
      bin.install "lotus-worker"
    end
  end

  test do
    system "#{bin}/lotus --version"
    system "#{bin}/lotus-miner --version"
    system "#{bin}/lotus-worker --version"
  end
end
