# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.4.2-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.4.2-alpha/passess_0.4.2-alpha_darwin_arm64.tar.gz"
      sha256 "8e0e3bb0e9052a79fa7db6a44ecc7009ade09958ead8c3831b295654edf7ddc2"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.4.2-alpha/passess_0.4.2-alpha_darwin_amd64.tar.gz"
      sha256 "4a2fedb016a3ac0234d0cb8f2a879d23633799359f6e8c002af629c626e40f03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.4.2-alpha/passess_0.4.2-alpha_linux_arm64.tar.gz"
      sha256 "57f4514a9863cb684a84ce79449bb9337befc31c8f3ea4f6828a3803b4edba1c"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.4.2-alpha/passess_0.4.2-alpha_linux_amd64.tar.gz"
      sha256 "f69d6aac9c8657e30dcb4facdb29c0023c3f8b51bdde6b47a8c2fdf70d0d69e5"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
