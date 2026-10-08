class Brewshelf < Formula
  desc "Show installed Homebrew packages by category, with descriptions"
  homepage "https://github.com/batuhan-bas/brewshelf"
  url "https://github.com/batuhan-bas/brewshelf/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "4d0f47231e2a1ea43aaf816fbfa0d5428bad0413cd88130d652dc9cf1730ade0"
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
