class ChessTui < Formula
  desc "Play chess from your terminal 🦀"
  homepage "https://github.com/thomas-mauran/chess-tui"
  version "2.4.0"
  license "MIT"
  head "https://github.com/thomas-mauran/chess-tui.git", branch: "main"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.4.0/chess-tui-2.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "6272975ec82a4dc107940328e002fdc62a9f2b0ef907670ad5f51387c7f021c3"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.4.0/chess-tui-2.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "65bf66dec20a5a621d6ff9e1f085606a4868ae1d6a7dbf68a8d261e45f8fb22d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.4.0/chess-tui-2.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "95140471f334bf63e5b0d467f4f3d79ae685b11a9f8f03cfabff3eb63ba93009"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.4.0/chess-tui-2.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e54243ee239fec4bc6f70d3671faac2991ca2546197ec0c1c2811be3dc313a6"
    end
  end

  def install
    bin.install "chess-tui"
  end

  test do
    assert_match "chess-tui", shell_output("#{bin}/chess-tui --version")
  end
end
