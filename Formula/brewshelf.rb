class Brewshelf < Formula
  desc "Show installed Homebrew packages by category, with descriptions"
  homepage "https://github.com/batuhan-bas/brewshelf"
  url "https://github.com/batuhan-bas/brewshelf/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "e6968d58c852fd031c11ebe52eadcfac9bf8113a2a6678b61dc3f4485b6a8781"
  license "MIT"

  depends_on :macos

  def install
    bin.install "brewshelf.sh" => "brewshelf"
  end

  test do
    assert_match "brewshelf #{version}", shell_output("#{bin}/brewshelf --version")
    assert_match "Usage: brewshelf", shell_output("#{bin}/brewshelf --help")
  end
end
