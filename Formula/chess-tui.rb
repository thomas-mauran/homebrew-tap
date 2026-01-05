class ChessTui < Formula
  desc "Play chess from your terminal 🦀"
  homepage "https://github.com/thomas-mauran/chess-tui"
  version "2.3.0"
  license "MIT"
  head "https://github.com/thomas-mauran/chess-tui.git", branch: "main"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.3.0/chess-tui-2.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "ea30131651863d90e994d6a8f9fcb1dff04d21284331e50ee41d1052a0464e75"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.3.0/chess-tui-2.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "336da70a72543882afe872a9ec5898446ab70138b806fd377243e1a6c56249ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.3.0/chess-tui-2.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4a40b46cf0a09c8c5b71b541b421dc3ced656b58e186e6849da480db09fc33ea"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.3.0/chess-tui-2.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c94c4b972b6a833144af6f33276c93ff4b5ebbfd47eac76d57b887a4c120f312"
    end
  end

  def install
    bin.install "chess-tui"
  end

  test do
    assert_match "chess-tui", shell_output("#{bin}/chess-tui --version")
  end
end
