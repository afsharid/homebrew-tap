# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.6.1-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.6.1-alpha/passess_0.6.1-alpha_darwin_arm64.tar.gz"
      sha256 "72e86907f9b22c7e00b54f70af7a435773056f513b116d7d728b1ce39d3533ea"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.6.1-alpha/passess_0.6.1-alpha_darwin_amd64.tar.gz"
      sha256 "8acce61a1d0e4629b082346353016f0ff0c311bd6cd026a5bd3f6cf181b40929"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.6.1-alpha/passess_0.6.1-alpha_linux_arm64.tar.gz"
      sha256 "7aa8b7e904109c56955d0e62c9966ccbda1b5434446f991c72e462e91187046d"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.6.1-alpha/passess_0.6.1-alpha_linux_amd64.tar.gz"
      sha256 "0dc2bf90c1549c68190f5473fded1d391f4840eb3b98e5df59d317fc0e5fa12a"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
