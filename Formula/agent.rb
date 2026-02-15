# typed: false
# frozen_string_literal: true

class Agent < Formula
  desc "CLI to create research agents from the terminal (Contextual AI)"
  homepage "https://github.com/YOUR_ORG/agent-composer"
  version "0.0.1"

  on_macos do
    on_intel do
      url "https://github.com/YOUR_ORG/agent-composer/releases/download/v#{version}/agent_Darwin_x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_arm do
      url "https://github.com/YOUR_ORG/agent-composer/releases/download/v#{version}/agent_Darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/YOUR_ORG/agent-composer/releases/download/v#{version}/agent_Linux_x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_arm do
      url "https://github.com/YOUR_ORG/agent-composer/releases/download/v#{version}/agent_Linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "agent"
  end

  def post_install
    return unless OS.mac?

    ohai "Removing quarantine attribute..."
    system "/usr/bin/xattr", "-dr", "com.apple.quarantine", "#{bin}/agent"
  end

  test do
    system "#{bin}/agent", "--version"
  end
end
