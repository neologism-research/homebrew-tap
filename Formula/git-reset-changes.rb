class GitResetChanges < Formula
  desc "Interactive TUI tool to completely reset specific files to a target branch"
  homepage "https://github.com/neologism-research/git-reset-changes"
  
  # Points to the stable release tarball of your core repository
  url "https://github.com/neologism-research/git-reset-changes/archive/refs/tags/v0.1.0.tar.gz"
  version "0.1.0"
  
  # The SHA256 checksum of your v0.1.0.tar.gz file to ensure security.
  sha256 "f8c5fb5c7a3e90e1ee00fac05c7410bfde5a26f05522c4f6f89380e8e8da3fc3"

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