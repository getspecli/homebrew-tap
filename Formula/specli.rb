class Specli < Formula
  desc "Browser viewer/editor for spec-driven design artifacts"
  homepage "https://spec.li"
  version "0.3.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.3.8/specli_v0.3.8_darwin_arm64.tar.gz"
      sha256 "a84ec43f7e343cfaa1405edeb3a35fac1fda44b94b0ffc38d2920f20502bb3a5"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.3.8/specli_v0.3.8_darwin_amd64.tar.gz"
      sha256 "c2c7c7b5fd94bc85d3d3f6f5c537e0c7067a58a267e3296a21495c8204a3948f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.3.8/specli_v0.3.8_linux_arm64.tar.gz"
      sha256 "8aa93f44eaec9bcd5ee5b8a5c42e4a034c0734ce4447e20405afeff7d8802a41"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.3.8/specli_v0.3.8_linux_amd64.tar.gz"
      sha256 "66857ae48c1c00344dfa1d0b6f7a75b7cd5669d38caa09bbcfde123fd80420f6"
    end
  end

  def install
    bin.install "specli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/specli --version")
  end
end
