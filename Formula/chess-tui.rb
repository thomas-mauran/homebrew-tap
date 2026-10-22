class ChessTui < Formula
  desc "Play chess in your terminal 🦀"
  homepage "https://github.com/thomas-mauran/chess-tui"
  version "2.8.0"
  license "MIT"
  head "https://github.com/thomas-mauran/chess-tui.git", branch: "main"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.8.0/chess-tui-2.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "f199e818030e32e6c9f7f260d489839920abf7d0529cb920461e9c3bbe24d7ae"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.8.0/chess-tui-2.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "2816c7486d8b00f4b0d20e5e5ad9ca057e8d1d04733d541296762be1f045df32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.8.0/chess-tui-2.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9ba39c897ede6cd44d961a0dc31afa0583923abe8a122e32a78509e3c4b9f2e3"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.8.0/chess-tui-2.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "239844d36725cf6606331a00c20230676f1f20cf724df1411ac97b0587faf438"
    end
  end

  def install
    bin.install "chess-tui"
  end

  test do
    assert_match "chess-tui", shell_output("#{bin}/chess-tui --version")
  end
end
