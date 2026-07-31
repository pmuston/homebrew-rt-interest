class RtInterest < Formula
  desc "Live view of NATS subject values for curated tag lists"
  homepage "https://github.com/pmuston/homebrew-rt-interest"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-rt-interest/releases/download/v0.1.0/rt-interest-v0.1.0-darwin-arm64.tar.gz"
      sha256 "eb0e1fa6129bdb9286e230e0750e9b51ca4e8bf38c01cb80dc06c8905f01b029"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-rt-interest/releases/download/v0.1.0/rt-interest-v0.1.0-darwin-amd64.tar.gz"
      sha256 "ba9dd59b91db2029593ad360be7697ed6cf5a95cd56f657cccb5e3e5bb006a16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-rt-interest/releases/download/v0.1.0/rt-interest-v0.1.0-linux-arm64.tar.gz"
      sha256 "3a7482da8a35c09ef0b297e9be8c1a566ff0964e22ede98e09acafd7c274d725"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-rt-interest/releases/download/v0.1.0/rt-interest-v0.1.0-linux-amd64.tar.gz"
      sha256 "975813fde47adfd6594715dc412d271a06b69a3c0b9f539eefd49cf04e26ff4c"
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
