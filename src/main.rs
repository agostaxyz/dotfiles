use std::fs;

fn main() -> std::io::Result<()> {
    let targets = [".bashrc", ".alacritty.toml", ".bashrc", ".zshrc", ".config/nvim/init.vim"];
    fs::copy("$HOME/.bashrc", "/test/.bashrc")?;  // Copy foo.txt to bar.txt
    Ok(())
}