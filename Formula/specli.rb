class Specli < Formula
  desc "Browser viewer/editor for spec-driven design artifacts"
  homepage "https://spec.li"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.4.0/specli_v0.4.0_darwin_arm64.tar.gz"
      sha256 "a650133e3d84306a66a1a6c988bbbfb6b626c3e77fa93baf9bf44dd2117bd56a"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.4.0/specli_v0.4.0_darwin_amd64.tar.gz"
      sha256 "2ca9745e5067cdb1fd67245b47e36674e34cc4a579fdd9bfd271232df80d600f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.4.0/specli_v0.4.0_linux_arm64.tar.gz"
      sha256 "65358d567c4feb1f5b218c6809ab020dda4946f1d987048f6d1960933c9fe1af"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.4.0/specli_v0.4.0_linux_amd64.tar.gz"
      sha256 "a69858d53c46705f1df8d985d5c180a07c63a5a4950ba6c1f41c6b02281db9a8"
    end
  end

  def install
    bin.install "specli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/specli --version")
  end
end
