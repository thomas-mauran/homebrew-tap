class ChessTui < Formula
  desc "Play chess in your terminal"
  homepage "https://github.com/thomas-mauran/chess-tui"
  version "2.9.0"
  license "GPL-3.0-or-later"
  head "https://github.com/thomas-mauran/chess-tui.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.9.0/chess-tui-2.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "40075459227128307690f348623a143be7f661ad43acdc9c8605a37a90a9419f"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.9.0/chess-tui-2.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "52fc452166fc3af899918db205971bfffe31b7b12a9ea52d4350531a0413a329"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.9.0/chess-tui-2.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a997ddb26dc5d79b1b32dfa9e9e39a81a7a3339a9eb42838a5bcd74e1b528c6"
    else
      url "https://github.com/thomas-mauran/chess-tui/releases/download/2.9.0/chess-tui-2.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "faed0f9aee18bbed1f50f702024c25a4eecdd90e7cbd5d3b7bcdb26c6b4cd77c"
    end
  end

  def install
    bin.install "chess-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chess-tui --version")
  end
end
