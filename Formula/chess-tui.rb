class ChessTui < Formula
  desc "Play chess from your terminal 🦀"
  homepage "https://github.com/thomas-mauran/chess-tui"
  version "2.2.0"
  license "MIT"
  head "https://github.com/thomas-mauran/chess-tui.git", branch: "main"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.2.0/chess-tui-2.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "9563009f988d1ba9278a9a1e9436e28e46b4f9bf780018c79d5e737d6f6e90a4"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.2.0/chess-tui-2.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "3aea2cdd5bab17b7c0d8281c6fd0672013793c4f8fb89c2a963898e75baea6d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.2.0/chess-tui-2.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ee9c80ca123d71c2f160592cfa448aba80ef824db0915975feac124ec4083c5d"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.2.0/chess-tui-2.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d86c62d1663db2f0c2197feb437c35b890bdc54c294d19089a9b24727e420440"
    end
  end

  def install
    bin.install "chess-tui"
  end

  test do
    assert_match "chess-tui", shell_output("#{bin}/chess-tui --version")
  end
end
