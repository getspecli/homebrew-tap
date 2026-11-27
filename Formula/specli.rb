class Specli < Formula
  desc "Browser viewer/editor for spec-driven design artifacts"
  homepage "https://spec.li"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.6.0/specli_v0.6.0_darwin_arm64.tar.gz"
      sha256 "28a0926845a78501c1fad4ed07edfaf10a33160eef40942e2d46ce728cfb80ea"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.6.0/specli_v0.6.0_darwin_amd64.tar.gz"
      sha256 "5f18a403f1e0aeab5b7b7b1ddf313ad706fecf2d5bcd96e8b31208c63763e319"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.6.0/specli_v0.6.0_linux_arm64.tar.gz"
      sha256 "c9cd1e5e5c3d4af877b858df8e5467f357f9077c6ab166bcdd2a65ce30054654"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.6.0/specli_v0.6.0_linux_amd64.tar.gz"
      sha256 "f3bc87eaf8c0bfd4a98a7eede55c70598d97eb7c57a1fca26b00dda963d78ca0"
    end
  end

  def install
    bin.install "specli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/specli --version")
  end
end
