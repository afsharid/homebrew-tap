# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.9.0-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.9.0-alpha/passess_0.9.0-alpha_darwin_arm64.tar.gz"
      sha256 "9a08f17ddde33181587aff467e94ae93b1a1bcbc8903c816f9a6e1d3dce07ea4"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.9.0-alpha/passess_0.9.0-alpha_darwin_amd64.tar.gz"
      sha256 "3b3032d65de1ae31152b4514042fe81f0690059a28e2060f07d6e019f6b87e52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.9.0-alpha/passess_0.9.0-alpha_linux_arm64.tar.gz"
      sha256 "ec09158a63e0df7f61b4f36a67a03c840ae7749144cf31e562c25bb4d5cc9209"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.9.0-alpha/passess_0.9.0-alpha_linux_amd64.tar.gz"
      sha256 "df1af1bdfd2151925cfd4ce14eddf192179f43365e8551980823cf24266b0042"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
