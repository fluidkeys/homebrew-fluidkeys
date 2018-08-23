class Fluidkeys < Formula
  desc "Fluidkeys makes PGP simple"
  homepage "https://www.fluidkeys.com"
  url "https://github.com/fluidkeys/fluidkeys-cli/archive/v0.1.1.tar.gz"
  version "0.1.1"
  sha256 "dea2f0e4ac3ae142e3a95aff5fb874a3934d087aea5630202eb34188ff6bb3c4"
  depends_on "go" => :build

  def install
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test fluidkeys`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
