class ChessTui < Formula
  desc "Play chess in your terminal 🦀"
  homepage "https://github.com/thomas-mauran/chess-tui"
  version "2.7.0"
  license "MIT"
  head "https://github.com/thomas-mauran/chess-tui.git", branch: "main"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.7.0/chess-tui-2.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "466c065c8a7760ba8156c8a1f77562ad80133edfff1c7f0516722972a4af542d"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.7.0/chess-tui-2.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "774d1c2df8037c489a7fd345e50d23f35e54feb8b11fa6db381ecb850ec1a460"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.7.0/chess-tui-2.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f2984a58be6ee03e034e625b3373e8df378680b75cccaea6436c8a1c11b3c7df"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.7.0/chess-tui-2.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd03fa04024e7534c1b15a91c5bd93ea1732a232a53d890b5e60806ab3cc6850"
    end
  end

  def install
    bin.install "chess-tui"
  end

  test do
    assert_match "chess-tui", shell_output("#{bin}/chess-tui --version")
  end
end
