meta do
  title:  "Getting Started"
  index:  document
end

# 🚀 Getting Started with Mustela

Mustela is designed for extreme speed and simplicity. The entire process from installation to your first published site takes less than a minute.

## 1. Installation
Mustela is distributed as a single, 400KB statically linked binary with zero dependencies.

```bash
# Download the binary (example for Linux)
curl -L https://get.mustela.io/linux/mustela -o mustela

# Make it executable
chmod +x mustela

# Move it to your PATH
sudo mv mustela /usr/local/bin/
```

## 2. Initialize Your Project

Create a new directory and initialize the basic project structure.

```bash
mkdir my-blog && cd my-blog
mustela init
```

Mustela will generate the following structure:

- `config/mustela.mu` – Global project configuration.
- `templates/default/` – Your `.mu` template files.
- `content/` – The directory for your Markdown articles.

## 3. Create Your First Post

Create a file named content/index.md. You can include metadata directly at the top of the file.

```mu
meta do
  title: My First Post
end

# Hello World!
This is my first website generated with Mustela.
```

## 4. Build and Watch

Now, build your project. Thanks to the stateful DSL engine, this happens almost instantly.

```bash
# Run a one-time build
mustela build

# Enable development mode with automatic rebuilds (inotify)
mustela watch
```

html do
<div style="background: #161b22; border: 1px solid #30363d; padding: 2rem; border-radius: 12px; margin-top: 3rem;">
<h3 style="color: #58a6ff; margin-bottom: 0.5rem;">💡 Pro Tip</h3>
<p style="color: #8b949e;">Try editing your template in <code>templates/default/main.mu</code> while <code>mustela watch</code> is running. You will see all 5,000 pages rebuild before you can even finish a blink.</p>
</div>
end
