# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.10.0-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.10.0-alpha/passess_0.10.0-alpha_darwin_arm64.tar.gz"
      sha256 "4e94014426a333701a016ba0f72bf6d37bca34562291806c554c019713dc723a"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.10.0-alpha/passess_0.10.0-alpha_darwin_amd64.tar.gz"
      sha256 "4d516d146354033f76dd535a143a73a490e2fd9dde2b1b2aff005c3b828b52e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.10.0-alpha/passess_0.10.0-alpha_linux_arm64.tar.gz"
      sha256 "66c36c765086ccd2eca114302c28eb50476971b04f7fad6a339e9bfd520a875a"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.10.0-alpha/passess_0.10.0-alpha_linux_amd64.tar.gz"
      sha256 "98cb85e3d0abcc3f66d0b9b44ca55b2acb247257b9e539ac1e0c47153a77e9f3"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
