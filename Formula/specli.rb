class Specli < Formula
  desc "Browser viewer/editor for spec-driven design artifacts"
  homepage "https://spec.li"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.3.4/specli_v0.3.4_darwin_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.3.4/specli_v0.3.4_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.3.4/specli_v0.3.4_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.3.4/specli_v0.3.4_linux_amd64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install Dir["specli_*/specli"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/specli --version")
  end
end
