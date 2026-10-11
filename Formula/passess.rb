# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.8.1-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.8.1-alpha/passess_0.8.1-alpha_darwin_arm64.tar.gz"
      sha256 "f7ef5580cfa754612b803f5daec31432315a61e65fb49d41547ff87d1a52ac1c"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.8.1-alpha/passess_0.8.1-alpha_darwin_amd64.tar.gz"
      sha256 "b514d7792dea1810d444b83eba19a0309ae5a1884f5d1b3e3aca25087bbd7be9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.8.1-alpha/passess_0.8.1-alpha_linux_arm64.tar.gz"
      sha256 "721099895ae85d9de007f99b0293bb42d7f2b692ffbfce41f149ca43d1931f16"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.8.1-alpha/passess_0.8.1-alpha_linux_amd64.tar.gz"
      sha256 "6ab2ec99637fbc1e6a65cddda2e54411e81761d5d407972f0c600ff6b35d8a92"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
