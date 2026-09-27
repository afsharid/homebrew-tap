# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.5.2-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.5.2-alpha/passess_0.5.2-alpha_darwin_arm64.tar.gz"
      sha256 "be6e8bdc1a9af0907a369fb2a666d45f2789cdbfd796414bee4d09a7295425df"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.5.2-alpha/passess_0.5.2-alpha_darwin_amd64.tar.gz"
      sha256 "5b7bd233da6ed5b5d585f0aff9eb0ecc358cfd2124b1e45883f2080236e3b324"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.5.2-alpha/passess_0.5.2-alpha_linux_arm64.tar.gz"
      sha256 "d9fdb5f588fed4ca1ca690548f3ef2f30a5ebe2c8632a863d6a136e3b198fde1"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.5.2-alpha/passess_0.5.2-alpha_linux_amd64.tar.gz"
      sha256 "60dd1f02ebfa7ad311acc7466645261bd0a46cfeac2f2c82c267d427b427659c"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
