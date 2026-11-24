class Specli < Formula
  desc "Browser viewer/editor for spec-driven design artifacts"
  homepage "https://spec.li"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.3.5/specli_v0.3.5_darwin_arm64.tar.gz"
      sha256 "e6a2a16a8486776c97c3400999176ed9417181e550de27c13e52cbcafb178a8b"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.3.5/specli_v0.3.5_darwin_amd64.tar.gz"
      sha256 "650f589da6cbdb9fb596b9fd1b7de70dbf6294d2013a12ec4f1540d5d65b2145"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.3.5/specli_v0.3.5_linux_arm64.tar.gz"
      sha256 "5c1e14654b2ee1d76d9d1c103c3049289b69d6afb9353c9ec4d1a326ab73bf56"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.3.5/specli_v0.3.5_linux_amd64.tar.gz"
      sha256 "9a4439ce967bcefa920d1531eb58ca35af0b6e34f86539687fa7a6b2e7252cda"
    end
  end

  def install
    bin.install "specli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/specli --version")
  end
end
