class Fluidkeys < Formula
  desc "Fluidkeys makes PGP simple"
  homepage "https://www.fluidkeys.com"
  url "https://download.fluidkeys.com/source/v0.2.5.tar.gz"
  version "0.2.5"
  sha256 "58594e5bb9f2fe184bb113f9e91f7ffc5fc0d87431d49819c6a2cd1e3204a4d4"
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
