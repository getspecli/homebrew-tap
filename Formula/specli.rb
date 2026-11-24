class Specli < Formula
  desc "Browser viewer/editor for spec-driven design artifacts"
  homepage "https://spec.li"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.3.6/specli_v0.3.6_darwin_arm64.tar.gz"
      sha256 "f9cc2c52e374e15d8be08e888a9ae184fa00ccae32d54166e0c157ac09615ab3"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.3.6/specli_v0.3.6_darwin_amd64.tar.gz"
      sha256 "756f1cda476c2c2e6d9f723348f0f19c6123449f3fd13b190e663f4352f7d105"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.3.6/specli_v0.3.6_linux_arm64.tar.gz"
      sha256 "8e1a6e079795cafaae43371e8ec51ad25ed04257666fb52f482eab6c8c692971"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.3.6/specli_v0.3.6_linux_amd64.tar.gz"
      sha256 "3bad013a4375e3184038e9bdb536959b127721b333dfa021b5754df2191f0eb2"
    end
  end

  def install
    bin.install "specli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/specli --version")
  end
end
