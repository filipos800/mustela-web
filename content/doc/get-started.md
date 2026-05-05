meta do
  title:  "Getting Started"
  index:  document
  description: Get up and running with Mustela in less than a minute. Learn how to install the binary, initialize your project, and build your first ultra-fast site.
  keywords: Mustela installation, static site generator tutorial, zero-dependency SSG, fast build tool, Mustela init
end

# 🚀 Getting Started with Mustela

Mustela is designed for extreme speed and simplicity. The entire process from installation to your first published site takes less than a minute.

## 1. Installation

html do
<div style="background: rgba(88, 166, 255, 0.1); border-left: 4px solid #58a6ff; padding: 1rem; margin-bottom: 2rem; border-radius: 0 8px 8px 0;">
  <strong style="color: #58a6ff;">🚀 Release Status: Final Polishing</strong><br>
  Mustela is currently in its final stress-testing phase. The stable binary (v1.0.0) is scheduled for release by <strong>the end of May 2026</strong> (or sooner). 
</div>

<p>Mustela is distributed as a single, @binary_size statically linked binary with zero dependencies.</p>
end

html do
<pre><code class="language-bash"># 🚧 Links will be active soon (End of May)
# curl -L @base_url/linux/mustela -o mustela

# Make it executable
chmod +x mustela

# Move it to your PATH
sudo mv mustela /usr/local/bin/</code></pre>
end

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
@html[pro_tip_start]
Try editing your template in <code>templates/default/main.mu</code> while <code>mustela watch</code> is running. You will see all 5,000 pages rebuild before you can even finish a blink.
@html[pro_tip_end]
end
