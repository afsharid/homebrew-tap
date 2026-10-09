# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.7.0-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.7.0-alpha/passess_0.7.0-alpha_darwin_arm64.tar.gz"
      sha256 "211aa3738e97cb3425f81c7a74fd81034ea220b08bf877d57cba4065dee27118"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.7.0-alpha/passess_0.7.0-alpha_darwin_amd64.tar.gz"
      sha256 "6725571a7e2ece9e817a2f1e6d141d86acfff2752d616ee44cd9308b9ff107ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.7.0-alpha/passess_0.7.0-alpha_linux_arm64.tar.gz"
      sha256 "ea33df41850639f6c08a44dccc08972b265e8548113b213fac7a9765480653f3"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.7.0-alpha/passess_0.7.0-alpha_linux_amd64.tar.gz"
      sha256 "e7dac4fff56827f3ea33e1c5b0a78922cb7b297da8943033c0522d5b4180f652"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
