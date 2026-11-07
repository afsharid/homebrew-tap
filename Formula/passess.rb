# Written from the release's checksums.txt; each archive also carries a
# build provenance attestation: gh attestation verify FILE --repo afsharid/passess
class Passess < Formula
  desc "Last mile between your password manager and your AI coding agents"
  homepage "https://github.com/afsharid/passess"
  version "0.10.3-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.10.3-alpha/passess_0.10.3-alpha_darwin_arm64.tar.gz"
      sha256 "c7c583762e83b0595498e0c88bfbd57549ae704efd63725520929ba576159356"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.10.3-alpha/passess_0.10.3-alpha_darwin_amd64.tar.gz"
      sha256 "2d4d2bfc731a102087cfb86788e5078e402c92e26c53be23cda2415f68ff0293"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afsharid/passess/releases/download/v0.10.3-alpha/passess_0.10.3-alpha_linux_arm64.tar.gz"
      sha256 "7c664378b0148ff50f65a2c9057e09b7665cccc2affc692374d5524355649b66"
    end
    on_intel do
      url "https://github.com/afsharid/passess/releases/download/v0.10.3-alpha/passess_0.10.3-alpha_linux_amd64.tar.gz"
      sha256 "b90c0c650fa5facdf4899ef9af2eb970ba6207275ebc654059c641146faa568c"
    end
  end

  def install
    bin.install "passess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passess version")
  end
end
