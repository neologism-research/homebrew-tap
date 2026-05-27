class GitResetChanges < Formula
  desc "Interactive TUI tool to completely reset specific files to a target branch"
  homepage "https://github.com/neologism-research/git-reset-changes"
  
  # Points to the stable release tarball of your core repository
  url "https://github.com/neologism-research/git-reset-changes/archive/refs/tags/v0.2.0.tar.gz"
  version "0.2.0"
  
  # The SHA256 checksum of your v0.2.0.tar.gz file to ensure security.
  sha256 "2e02e7c66fd528de2f478bb19047d448d5f66750ed19e3fb5993750aeca6cfa0"

  # Tells Homebrew to automatically install fzf if the user doesn't have it
  depends_on "fzf"

  def install
    # Installs the executable script into Homebrew's binary directory
    bin.install "git-reset-changes"
  end

  test do
    # Simple sanity check to make sure the binary executes
    system "#{bin}/git-reset-changes", "--help"
  end
end