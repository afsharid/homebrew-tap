# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.11.2-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.11.2-alpha/passess_0.11.2-alpha_darwin_arm64.tar.gz"
      sha256 "222b90ff7ce8f93ade256f97b795239160ccca4935ab471a4bb13499f206d7c0"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.11.2-alpha/passess_0.11.2-alpha_darwin_amd64.tar.gz"
      sha256 "7aa7afe62c3cb33006c1b7dd4758644eb134a41abe17488b9d7eabc149d17d67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.11.2-alpha/passess_0.11.2-alpha_linux_arm64.tar.gz"
      sha256 "54385b95752c20bddc734cae8d49f0f85b1ec5a200580e29776afca07ab1565f"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.11.2-alpha/passess_0.11.2-alpha_linux_amd64.tar.gz"
      sha256 "ba77d16ec7dde08d5e133cf2062c5cb84aae375bfe782daabe020cbb00cfc900"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
