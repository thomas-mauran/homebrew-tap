class ChessTui < Formula
  desc "Play chess in your terminal 🦀"
  homepage "https://github.com/thomas-mauran/chess-tui"
  version "2.6.2"
  license "MIT"
  head "https://github.com/thomas-mauran/chess-tui.git", branch: "main"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.6.2/chess-tui-2.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "fb86cb7b774506ccc9ca657ad2f573abd086d20d0f0e3a95c253258667f3f863"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.6.2/chess-tui-2.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "951c3cb7ba5968cc6d95e12f8b59e60626b3ecb73d1f922b493590eb4476db3a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.6.2/chess-tui-2.6.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "92768f3b3407c4c883143484b6647852ac2bf993bfa73643e346302a27196786"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.6.2/chess-tui-2.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f61c585b4eb71c502ba0180c6fda215f9fad78cde388be477ff82a50971f185"
    end
  end

  def install
    bin.install "chess-tui"
  end

  test do
    assert_match "chess-tui", shell_output("#{bin}/chess-tui --version")
  end
end
