class Fluidkeys < Formula
  desc "Fluidkeys makes PGP simple"
  homepage "https://www.fluidkeys.com"
  url "https://github.com/fluidkeys/fluidkeys-cli/archive/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "de8889b15f4c461a87c7fe378dd3221249c0fc0bd8f89e94ebebb827ae11233c"
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
