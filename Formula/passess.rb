# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.6.0-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.6.0-alpha/passess_0.6.0-alpha_darwin_arm64.tar.gz"
      sha256 "414c6642d7b0a9b46f4ea6a76621c223768be41b0e92bac69b3bf3503ad72637"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.6.0-alpha/passess_0.6.0-alpha_darwin_amd64.tar.gz"
      sha256 "880157ab76e16fdbf4ad59fa58c8d9bf3abef27c3d28c6427bca9d90379c8439"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.6.0-alpha/passess_0.6.0-alpha_linux_arm64.tar.gz"
      sha256 "11687c4a0b6941935977bea271391b81899cb8107e57aea3fceea7ad1f641971"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.6.0-alpha/passess_0.6.0-alpha_linux_amd64.tar.gz"
      sha256 "0f5ed26d62f53ec74b835e2de0f677aec8513fa821b3fcf79595f098cd79e079"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
