class ChessTui < Formula
  desc "Play chess from your terminal 🦀"
  homepage "https://github.com/thomas-mauran/chess-tui"
  version "2.1.2"
  license "MIT"
  head "https://github.com/thomas-mauran/chess-tui.git", branch: "main"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.1.2/chess-tui-2.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "6223426cf434fa90ff52e73bfdff1bda08e5e70269415072f750705402c2dfa5"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.1.2/chess-tui-2.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "823df270395dd75e109e45ad4f060c7c068c4cc5d2c9227c1d45d390ade5cf54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.1.2/chess-tui-2.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54f8c71a72029df58e205d19b185ed585c71d9baf688658b00965817023b97bc"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.1.2/chess-tui-2.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad4309aa524eec27247106d1f2cec85fc7d7a3b29e9f2612a1c81af2a64d586e"
    end
  end

  def install
    bin.install "chess-tui"
  end

  test do
    assert_match "chess-tui", shell_output("#{bin}/chess-tui --version")
  end
end
