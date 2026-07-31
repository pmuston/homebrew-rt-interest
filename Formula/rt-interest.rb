class RtInterest < Formula
  desc "Live view of NATS subject values for curated tag lists"
  homepage "https://github.com/pmuston/homebrew-rt-interest"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-rt-interest/releases/download/v0.1.0/rt-interest-v0.1.0-darwin-arm64.tar.gz"
      sha256 "4a48b4db6f01d9baf3c085d08f942e3891e42a794ebfa50928f13ff04abc1591"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-rt-interest/releases/download/v0.1.0/rt-interest-v0.1.0-darwin-amd64.tar.gz"
      sha256 "6cc9a1d16a8576003f3041232aaf7d3725fb1d5f4e9d280b39e9192d60c99202"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-rt-interest/releases/download/v0.1.0/rt-interest-v0.1.0-linux-arm64.tar.gz"
      sha256 "51df68c5287c250f9b6e40061ba94d17421580ec0f9f08a9cf1f690c25ea7ae4"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-rt-interest/releases/download/v0.1.0/rt-interest-v0.1.0-linux-amd64.tar.gz"
      sha256 "f7ee541cfd3d52f3af5de73444c2166d4e3a2752f5e4e00b5a83f0700af9a540"
    end
  end

  def install
    bin.install "rt-interest"
  end

  test do
    assert_match "rt-interest v", shell_output("#{bin}/rt-interest version")
  end
end
