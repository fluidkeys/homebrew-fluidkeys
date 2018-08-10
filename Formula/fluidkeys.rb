class Fluidkeys < Formula
  desc "Fluidkeys makes PGP simple"
  homepage "https://www.fluidkeys.com"
  url "https://github.com/fluidkeys/fluidkeys-cli/archive/v0.0.4.tar.gz"
  version "0.0.4"
  sha256 "6da4a18a1ee1b0ecbf89da4abadd5ab2ab7e99e9b0c50517f543398c897f0e8e"
  depends_on "go" => :build

  def install
    system "make", "homebrew_install"
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
