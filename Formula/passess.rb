# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.5.0-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.5.0-alpha/passess_0.5.0-alpha_darwin_arm64.tar.gz"
      sha256 "cb364454f6fba68fc8788f8462d63d2bb746df3e5ca6efb61fdd61fd932f1ab9"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.5.0-alpha/passess_0.5.0-alpha_darwin_amd64.tar.gz"
      sha256 "f9d537ac77f26ec9c0d1f5c0f35015d5bde73c4b6657f1d377af662ca62f44ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.5.0-alpha/passess_0.5.0-alpha_linux_arm64.tar.gz"
      sha256 "e753b47eb67febfe2b57779ec35a3725dccd3107c8cdeba4a8b47dc8b3f8fedf"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.5.0-alpha/passess_0.5.0-alpha_linux_amd64.tar.gz"
      sha256 "142fa5fad9ffbc3ce3a1a4aa9fd2bbabf991b03c6b351690d5b7871f2fab4973"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
