# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.11.0-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.11.0-alpha/passess_0.11.0-alpha_darwin_arm64.tar.gz"
      sha256 "99f6bf68c893eccfcc374cc6eb62ecf2e636b28e1aad2542896051344047c652"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.11.0-alpha/passess_0.11.0-alpha_darwin_amd64.tar.gz"
      sha256 "64ab40ace7e075aa273a66934310dedbd30a165d5d209f31c00fbdd3be3588e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.11.0-alpha/passess_0.11.0-alpha_linux_arm64.tar.gz"
      sha256 "9963b7e07aeeb18f5c8544247936ced960f1a633085224ccd6c114be61f26d1c"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.11.0-alpha/passess_0.11.0-alpha_linux_amd64.tar.gz"
      sha256 "18bd8083e8b7dddd34546a6402aa741cc9d3cf729994fbcd907f9a44eb5ca586"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
