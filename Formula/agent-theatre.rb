class AgentTheatre < Formula
  desc "Watch your coding agent work - as a film, not a log"
  homepage "https://agenttheatre.dev"
  url "https://registry.npmjs.org/agent-theatre/-/agent-theatre-1.8.1.tgz"
  sha256 ""
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-theatre --version")
  end
end
