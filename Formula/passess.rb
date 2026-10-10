# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.8.0-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.8.0-alpha/passess_0.8.0-alpha_darwin_arm64.tar.gz"
      sha256 "5492adcddf86c971d19d53710c01faef3240121d690e162262f9a09735b4d50d"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.8.0-alpha/passess_0.8.0-alpha_darwin_amd64.tar.gz"
      sha256 "1accd608b7b5e61c1f44f16271fb15a67c12101030e485481022fcfb29aa6969"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.8.0-alpha/passess_0.8.0-alpha_linux_arm64.tar.gz"
      sha256 "5e2699087cfc14b20ce947356249b8ce72d1604fc4b6779ba498d926b6619345"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.8.0-alpha/passess_0.8.0-alpha_linux_amd64.tar.gz"
      sha256 "2dcda08383debee7e620f59c8ea7570b0a6cfa348fffdc2d1d943d6b47b92ebb"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
