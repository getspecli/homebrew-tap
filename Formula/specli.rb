class Specli < Formula
  desc "Browser viewer/editor for spec-driven design artifacts"
  homepage "https://spec.li"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.4.1/specli_v0.4.1_darwin_arm64.tar.gz"
      sha256 "8022875c03e456d0bd5cfdcecd7a15731c127fa787665ea466619724476bb397"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.4.1/specli_v0.4.1_darwin_amd64.tar.gz"
      sha256 "dd9af2b44cfa2d49ce1d813c36e3df63dde828aab548f6045c9c2785f600335b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.4.1/specli_v0.4.1_linux_arm64.tar.gz"
      sha256 "e14c24080ab5943b21003016c6f2e9630151f040007c7c61a8d0b5fd3ec4162f"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.4.1/specli_v0.4.1_linux_amd64.tar.gz"
      sha256 "7feb8b0b7365917db758b9fb09673782559836b6133d3c2c463cfb39cc4a27c5"
    end
  end

  def install
    bin.install "specli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/specli --version")
  end
end
