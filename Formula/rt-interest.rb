class RtInterest < Formula
  desc "Live view of NATS subject values for curated tag lists"
  homepage "https://github.com/pmuston/homebrew-rt-interest"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-rt-interest/releases/download/v0.2.0/rt-interest-v0.2.0-darwin-arm64.tar.gz"
      sha256 "6708bf97adccb28bacdd90c147215db338cd92f33b473dbdfd983b782601376f"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-rt-interest/releases/download/v0.2.0/rt-interest-v0.2.0-darwin-amd64.tar.gz"
      sha256 "447841c6df7a4928942c7a1344b35a68426af43d70cd1421ff4d4011accbaf74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-rt-interest/releases/download/v0.2.0/rt-interest-v0.2.0-linux-arm64.tar.gz"
      sha256 "c8c89100fabbf0bff8e71186c9a8fa87f2edf4763cf29bb3cdbc7ce5c2d12e45"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-rt-interest/releases/download/v0.2.0/rt-interest-v0.2.0-linux-amd64.tar.gz"
      sha256 "a743b9cee151e85daab4a7e242cda82a85f8866bc761c4cc1028c822325375c1"
    end
  end

  def install
    bin.install "rt-interest"
    man1.install "rt-interest.1"
    # Homebrew installs its known metafiles (README, LICENSE) by itself, but
    # discards anything else in the tarball. The third-party notices have to be
    # named explicitly or Apache 2.0 attribution never reaches the machine.
    prefix.install "THIRD_PARTY_LICENSES" if File.exist?("THIRD_PARTY_LICENSES")
  end

  test do
    assert_match "rt-interest v", shell_output("#{bin}/rt-interest version")
  end
end
