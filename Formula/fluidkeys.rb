class Fluidkeys < Formula
  desc "Fluidkeys makes PGP simple"
  homepage "https://www.fluidkeys.com"
  url "https://download.fluidkeys.com/source/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "7e5fb37ce735686cc1b91b23581528dfb47ed1dac1da4a91bf0244d191c3491e"
  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath/"gopath"
    dir = buildpath/"gopath/src/github.com/fluidkeys/fluidkeys"
    dir.install buildpath.children

    cd dir do
      system "make"
      bin.install "build/bin/fk"

      prefix.install_metafiles
    end
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
