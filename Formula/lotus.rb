# This file was generated - DO NOT EDIT
class Lotus < Formula
  desc "A homebrew cask for installing the Lotus project from filecoin-project/lotus"
  homepage "https://filecoin.io"
  license "MIT"

  depends_on "lotus-node"
  depends_on "lotus-miner"

  def install
    # No installation needed, only dependencies
  end

  test do
    system "#{Formula["lotus-node"].opt_bin}/lotus", "--version"
    system "#{Formula["lotus-miner"].opt_bin}/lotus-miner", "--version"
    system "#{Formula["lotus-node"].opt_bin}/lotus-worker", "--version"
  end
end
