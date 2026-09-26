# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.5.1-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.5.1-alpha/passess_0.5.1-alpha_darwin_arm64.tar.gz"
      sha256 "6b543a21a70deed7c5e6f2e57df3708720ce7db7c57747fa870a54dea249ef56"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.5.1-alpha/passess_0.5.1-alpha_darwin_amd64.tar.gz"
      sha256 "cf3446db03c1d911754d5e0e221d04e0a71a72263ecc221ba16420f6ba5ed15b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.5.1-alpha/passess_0.5.1-alpha_linux_arm64.tar.gz"
      sha256 "00ef863aa9ac8429d5d71a72eb380b49657e862756b278d2cf2b000bc7a19e82"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.5.1-alpha/passess_0.5.1-alpha_linux_amd64.tar.gz"
      sha256 "6bbf4939addc1311bd5bb9081551156b19dc641fd56ae740a25fa1dbe041aa25"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
