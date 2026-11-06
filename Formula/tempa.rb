class Tempa < Formula
  desc "One contract (AGENTS.md + .tempa/) kept in sync with every coding agent"
  homepage "https://github.com/anggaralabshq/tempa"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/anggaralabshq/tempa/releases/download/v0.1.0/tempa-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "2c412896b354d62967b4afd7428b5afe0b4cb591773f1e950091aa9eabbd6245"
    end
    on_intel do
      url "https://github.com/anggaralabshq/tempa/releases/download/v0.1.0/tempa-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "a89d24c64c4aa9929c38857e33759664a78280ad3d38f1135bbe6cd0028592cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anggaralabshq/tempa/releases/download/v0.1.0/tempa-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b89770c107cef9f0b36c10dc66c546993cf6945728812f34161406fd649b54fe"
    end
    on_intel do
      url "https://github.com/anggaralabshq/tempa/releases/download/v0.1.0/tempa-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "65b6c86ce375da2148d76e6f7d003265e22819626ca8417f84a2f76a348c7db9"
    end
  end

  def install
    bin.install "tempa"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tempa --version")
  end
end
