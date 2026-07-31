class RtInterest < Formula
  desc "Live view of NATS subject values for curated tag lists"
  homepage "https://github.com/pmuston/homebrew-rt-interest"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-rt-interest/releases/download/v0.1.0/rt-interest-v0.1.0-darwin-arm64.tar.gz"
      sha256 "aec76e23b19e9b9f302e27e8fb0984b6fa89f68eb8f1342ccf4219acac473f85"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-rt-interest/releases/download/v0.1.0/rt-interest-v0.1.0-darwin-amd64.tar.gz"
      sha256 "3d8667cff6581a831a185030f98247507e26757c8e2f45d3ce6b428afc4d0207"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-rt-interest/releases/download/v0.1.0/rt-interest-v0.1.0-linux-arm64.tar.gz"
      sha256 "19e9ebcee8be8bd2bcad2f9ef15b45ab9dbdaeac8e810f031d3aff6d04734e7d"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-rt-interest/releases/download/v0.1.0/rt-interest-v0.1.0-linux-amd64.tar.gz"
      sha256 "642ae6bfcc8d3c38f4c36c5f8a3692f5a4603227758aecae3faeb341f5a3e116"
    end
  end

  def install
    bin.install "rt-interest"
    # Homebrew installs its known metafiles (README, LICENSE) by itself, but
    # discards anything else in the tarball. The third-party notices have to be
    # named explicitly or Apache 2.0 attribution never reaches the machine.
    prefix.install "THIRD_PARTY_LICENSES" if File.exist?("THIRD_PARTY_LICENSES")
  end

  test do
    assert_match "rt-interest v", shell_output("#{bin}/rt-interest version")
  end
end
