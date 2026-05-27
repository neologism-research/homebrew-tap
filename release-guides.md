# Release Guide: Updating Git Plugins

Follow these steps whenever you make changes and need to bump the version for Homebrew users.

## Step 1: Tag a New Release in the Core Repo

1. Go to your repository.
2. Navigate to **Releases** > **Draft a new release**.
3. Create a new semantic tag (e.g., `v1.0.1`).
4. Title the release (e.g., `Release v1.0.1`) and hit **Publish release**.

## Step 2: Calculate the New Tarball Checksum

Homebrew requires a strict SHA-256 hash validation for every release to prevent tampering. Run the following command in your terminal, replacing the URL with the tarball link for your new release:

```bash
curl -sSL [https://github.com/neologism-research/<tool_name>/archive/refs/tags/v1.0.1.tar.gz](https://github.com/neologism-research/<tool_name>/archive/refs/tags/v1.0.1.tar.gz) | shasum -a 256
```

Copy the 64-character alphanumeric string outputted by this command.

## Step 3: Update the Formula in this Tap Repo

Open `Formula/<tool_name>.rb` in this repository and update the following three lines:

1. **`url`**: Change the tag version at the end of the URL string to your new tag.
2. **`version`**: Change the string literal to match your new version (e.g., `"1.0.1"`).
3. **`sha256`**: Paste the new checksum string you generated in Step 2.

## Step 4: Commit and Push

Commit the changes directly to the main branch of this tap repository:

```bash
git add Formula/<tool_name>.rb
git commit -m "Upgrade <tool_name> to v1.0.1"
git push origin main

```

Once pushed, anyone running `brew upgrade <tool_name>` will instantly receive your latest updates.
