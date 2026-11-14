# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.11.1-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.11.1-alpha/passess_0.11.1-alpha_darwin_arm64.tar.gz"
      sha256 "60a7e0eb425e99fa1635a0a1fb08943fc040d36e6c3961f901c5c57ef64b6f47"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.11.1-alpha/passess_0.11.1-alpha_darwin_amd64.tar.gz"
      sha256 "0a6afcaae075ac41776b40819905c18dd25fb20e350b2a8cbc1c75efe8a2619e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.11.1-alpha/passess_0.11.1-alpha_linux_arm64.tar.gz"
      sha256 "402efaf21cec2c767100c87243af7aab67c643dc58a6e52d03433636aefb263e"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.11.1-alpha/passess_0.11.1-alpha_linux_amd64.tar.gz"
      sha256 "efb3648b943297067fa3bfb59c824b9c68be5b32bc3fa6560f7d93d27b384d73"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
