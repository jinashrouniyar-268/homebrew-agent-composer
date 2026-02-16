# typed: false
# frozen_string_literal: true

class Agent < Formula
  desc "CLI to create research agents from the terminal (Contextual AI)"
  homepage "https://github.com/jinashrouniyar-268/agent-composer"
  version "0.1.3"

  on_macos do
    on_intel do
      url "https://github.com/jinashrouniyar-268/agent-composer/releases/download/v#{version}/agent_Darwin_x86_64.tar.gz"
      sha256 "5d904722bd89e788ee76e90a5af1682dcec38dab50b94f90a34d3e81c97d7e7b"
    end
    on_arm do
      url "https://github.com/jinashrouniyar-268/agent-composer/releases/download/v#{version}/agent_Darwin_arm64.tar.gz"
      sha256 "e3b22f3b58d7451277466d7c755bfefcf90287d178263963d6ec388a293fb403"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jinashrouniyar-268/agent-composer/releases/download/v#{version}/agent_Linux_x86_64.tar.gz"
      sha256 "d1a321670d0f784db963ac7c174bd3c543709798232404a80bf7854598cb3934"
    end
    on_arm do
      url "https://github.com/jinashrouniyar-268/agent-composer/releases/download/v#{version}/agent_Linux_arm64.tar.gz"
      sha256 "02e8dfc3bbbc1d5d30afdac5f95c13d38d1dab737f0436cfd11f351b3eebfe72"
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
