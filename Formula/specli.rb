class Specli < Formula
  desc "Browser viewer/editor for spec-driven design artifacts"
  homepage "https://spec.li"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.3.7/specli_v0.3.7_darwin_arm64.tar.gz"
      sha256 "907ddf724041da4da676cee987bdadf25c2c294979a06ec53ce400818b043d12"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.3.7/specli_v0.3.7_darwin_amd64.tar.gz"
      sha256 "c8b489152532641016fac8a0bd49b16110641b878641b5c8ac491575a55c16d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.3.7/specli_v0.3.7_linux_arm64.tar.gz"
      sha256 "e4f42fc1cd986b165bdbe9e36fb509bb48c7ef7fc9c2fcd13db7ecc949622d67"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.3.7/specli_v0.3.7_linux_amd64.tar.gz"
      sha256 "9dbc21aa50f00fabe46c58ed67c2523b673521ac14bddc3d2dd4e5459b369776"
    end
  end

  def install
    bin.install "specli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/specli --version")
  end
end
