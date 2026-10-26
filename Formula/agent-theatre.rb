class AgentTheatre < Formula
  desc "Watch your coding agent work — as a film, not a log (Claude Code session visualiser)"
  homepage "https://agenttheatre.dev"
  url "https://registry.npmjs.org/agent-theatre/-/agent-theatre-1.3.8.tgz"
  sha256 "dd746d8ef04ef283f6e262a4be5c15a6303c6d4dd8e871e9339f0277fb4a96cf"
  license "MIT"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    (bin/"agent-theatre").write_env_script libexec/"dist/cli.js", {}
    bin.env_script_all_files(libexec/"bin", {}) if (libexec/"bin").exist?
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-theatre --version")
  end
end
