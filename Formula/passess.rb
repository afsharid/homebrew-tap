# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.10.1-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.10.1-alpha/passess_0.10.1-alpha_darwin_arm64.tar.gz"
      sha256 "e8a4ee9d5e9a61762dbe228a8333958de87dcf643924204f5ced4a793e6e9ae3"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.10.1-alpha/passess_0.10.1-alpha_darwin_amd64.tar.gz"
      sha256 "6a1db398dd47eda023ec439892422de966b5f4213c6c553e1722aee05d4b195e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.10.1-alpha/passess_0.10.1-alpha_linux_arm64.tar.gz"
      sha256 "45bdf62b5016b485a719cc271ae24310fa3efe3c3526696a219893d8a3efa52e"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.10.1-alpha/passess_0.10.1-alpha_linux_amd64.tar.gz"
      sha256 "a6cc9b517b95f2f92c649dd937ddb5862a8aef222a1a9394c10258301415aea5"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
