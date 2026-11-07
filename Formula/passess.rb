# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.10.2-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.10.2-alpha/passess_0.10.2-alpha_darwin_arm64.tar.gz"
      sha256 "ce2b3b1077ea81952b0665be039d43565a0b0aa6da622e49339656e9896e121c"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.10.2-alpha/passess_0.10.2-alpha_darwin_amd64.tar.gz"
      sha256 "e0c98550b8fe3e04e2359705f055eb3ed825057ffa6ebad54477c4d5460f174d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.10.2-alpha/passess_0.10.2-alpha_linux_arm64.tar.gz"
      sha256 "64e3d6db1257e1f51bb0dfe589512f0e1ae09bf02b7bb7d06774a638ea10926a"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.10.2-alpha/passess_0.10.2-alpha_linux_amd64.tar.gz"
      sha256 "b9fe99b01979cd832e436950489d80802d0cac540a27993c808482f748cdf8d7"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
