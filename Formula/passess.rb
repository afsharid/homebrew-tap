# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.4.1-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.4.1-alpha/passess_0.4.1-alpha_darwin_arm64.tar.gz"
      sha256 "980197cdf69d6aae9e4a8ab158939ff6824faf9d49dc2ce2660e21b4fcd0f2b0"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.4.1-alpha/passess_0.4.1-alpha_darwin_amd64.tar.gz"
      sha256 "3091eae7f0397516e2a5cf2f99ff48b51a5bf6a3986dd7e11d4acef208728f02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.4.1-alpha/passess_0.4.1-alpha_linux_arm64.tar.gz"
      sha256 "0ef839ea750f87588fba3a1e65dfb37f502576a2cee9197e092fdbe07333dfb3"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.4.1-alpha/passess_0.4.1-alpha_linux_amd64.tar.gz"
      sha256 "6e92590decbf7a751d2baa557dfe479269d79eb076859689e6595dd8540a2077"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
