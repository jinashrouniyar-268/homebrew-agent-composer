# typed: false
# frozen_string_literal: true

class Agent < Formula
  desc "CLI to create research agents from the terminal (Contextual AI)"
  homepage "https://github.com/jinashrouniyar-268/agent-composer"
  version "0.1.2"

  on_macos do
    on_intel do
      url "https://github.com/jinashrouniyar-268/agent-composer/releases/download/v#{version}/agent_Darwin_x86_64.tar.gz"
      sha256 "53deb575c7a22f5491a748b3c10f4303389d32644aaf76244d0be18999b330c5"
    end
    on_arm do
      url "https://github.com/jinashrouniyar-268/agent-composer/releases/download/v#{version}/agent_Darwin_arm64.tar.gz"
      sha256 "b30cd24d6fbc3c3c0d4924a812cd82c930d7723bb5403f89f4b04fc2ca560ffa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jinashrouniyar-268/agent-composer/releases/download/v#{version}/agent_Linux_x86_64.tar.gz"
      sha256 "9b669bed666a3125dcae6702c1e9d94b715dedc494617d0360ca2f730e2f696b"
    end
    on_arm do
      url "https://github.com/jinashrouniyar-268/agent-composer/releases/download/v#{version}/agent_Linux_arm64.tar.gz"
      sha256 "dc7197a58cd8b96e60f8c48cccbd580c63bbb04ad810c0c24c11689d86ae127a"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent", "--version"
  end
end
