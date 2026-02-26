class ChessTui < Formula
  desc "Play chess from your terminal 🦀"
  homepage "https://github.com/thomas-mauran/chess-tui"
  version "2.5.1"
  license "MIT"
  head "https://github.com/thomas-mauran/chess-tui.git", branch: "main"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.5.1/chess-tui-2.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "7aa537471862659bd2885f5edfaad8573587e8db18fa89275b745dc86001e947"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.5.1/chess-tui-2.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "72405f7150eb23c49de8496bd085e5fd29d4ffce11b58234f329e3518e3e1de4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.5.1/chess-tui-2.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d84a6cf934734df6ef1eafa2215ec372c5d485e9344149e3a223a8911d8bcfa"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.5.1/chess-tui-2.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "203afcc08972698e40f007bc6da2ae517fd9dd69a606fa8a344803ec6ba56e80"
    end
  end

  def install
    bin.install "chess-tui"
  end

  test do
    assert_match "chess-tui", shell_output("#{bin}/chess-tui --version")
  end
end
