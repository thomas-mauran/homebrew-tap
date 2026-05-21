class ChessTui < Formula
  desc "Play chess in your terminal 🦀"
  homepage "https://github.com/thomas-mauran/chess-tui"
  version "2.7.1"
  license "MIT"
  head "https://github.com/thomas-mauran/chess-tui.git", branch: "main"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.7.1/chess-tui-2.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "a1c1025863708aba014be0513cee00b20f33a71c60b7381eb87aa2399a103054"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.7.1/chess-tui-2.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "49b3b8fe7b9a4c45b742f55b63b35f53dca56082790177758b2defa083cefff4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.7.1/chess-tui-2.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aee19296918964d9f51b2232edb4cd8b0d8288fe6ec3d0b32eae7c2f96a9f04a"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.7.1/chess-tui-2.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aee19296918964d9f51b2232edb4cd8b0d8288fe6ec3d0b32eae7c2f96a9f04a"
    end
  end

  def install
    bin.install "chess-tui"
  end

  test do
    assert_match "chess-tui", shell_output("#{bin}/chess-tui --version")
  end
end
