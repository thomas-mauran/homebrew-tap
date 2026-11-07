class ChessTui < Formula
  desc "Play chess in your terminal"
  homepage "https://github.com/thomas-mauran/chess-tui"
  version "2.8.1"
  license "MIT"
  head "https://github.com/thomas-mauran/chess-tui.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.8.1/chess-tui-2.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "2595a4e297e00238e257704422fc1e05304265e5e03696b490bf85d1c35dea60"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.8.1/chess-tui-2.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "79ba88f59334bdaedeb07c2d077c71f9498f35cfb3db2b616119b655d2b88d43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.8.1/chess-tui-2.8.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47c603c353eea1ff725bed8e6fe7588bdde72ce8aff7d24dee9030d1106182cc"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.8.1/chess-tui-2.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d618b0f4ee7afe291db84eb7b567c635da0bc7462ef754b937bc60da9878436b"
    end
  end

  def install
    bin.install "chess-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chess-tui --version")
  end
end
