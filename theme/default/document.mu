meta do
    doc_section: Introduction
    url_github:  https://github.com/filipos800/mustela-web
end

html as document do
<!DOCTYPE html>
<html lang="@lang">
@html[doc_head]
@html[doc_body]
</html>
end

html as doc_head do
<head>
    @html[meta]
    @html[doc_style]
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Urbanist:wght@800&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet">
</head>
end

html as doc_body do
<body>
    <div class="layout-wrapper">
        @html[doc_sidebar]
        
        <main class="content-container">
            <nav class="breadcrumb">
                Docs / <span class="active">@doc_section</span>
            </nav>
            
            <article class="markdown-content">
                @view
            </article>

            @html[doc_footer]
        </main>
    </div>
</body>
end

html as doc_sidebar do
<aside class="sidebar">
    <div class="sidebar-header">
        <a href="/" class="logo">@title_web<span>.</span></a>
        <div class="version-tag">@version</div>
    </div>
    
    <nav class="sidebar-nav">
        <div class="nav-group">
            <span class="group-title">Getting Started</span>
            <a href="/doc/get-started.html">Installation</a>
            <a href="/doc/concepts.html">Core Concepts</a>
        </div>
        <div class="nav-group">
            <span class="group-title">DSL Reference</span>
            <a href="/doc/metadata.html">Metadata</a>
            <a href="/doc/html-blocks.html">HTML Blocks</a>
            <a href="/doc/markdown.html">Markdown</a>
        </div>
    </nav>
</aside>
end

html as doc_footer do
<footer class="doc-footer">
    <div class="footer-links">
        <a href="@url_github">GitHub</a>
        <a href="/changelog.html">Changelog</a>
    </div>
    <p>© 2026 Mustela Engine. Built with extreme speed.</p>
</footer>
end

html as markdown_handling_characters do
<section style="margin: 3rem 0; padding: 1.5rem; border: 1px dashed var(--border); border-radius: 8px; background: rgba(88, 166, 255, 0.03);">
    <h2 style="margin-top: 0; border-bottom: none; font-size: 1.4rem;">🛡️ Handling Special Characters</h2>
    <p>Mustela’s variable engine is smart enough to distinguish between a DSL trigger and common text (like emails). However, if you need to be explicit, here is how to handle it:</p>
    
    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 2rem; margin-top: 1.5rem;">
        <div>
            <h4 style="font-size: 0.8rem; color: var(--text-secondary); text-transform: uppercase; margin-bottom: 0.5rem;">In Markdown</h4>
            <p style="font-size: 0.9rem; margin-bottom: 0.5rem;">Use a backslash to escape formatting:</p>
            <pre style="padding: 1rem;"><code>\# Not a header
\*Not italic\*</code></pre>
        </div>
        <div>
            <h4 style="font-size: 0.8rem; color: var(--text-secondary); text-transform: uppercase; margin-bottom: 0.5rem;">In HTML Blocks</h4>
            <p style="font-size: 0.9rem; margin-bottom: 0.5rem;">Use HTML entities to prevent variable injection:</p>
            <pre style="padding: 1rem; background: var(--surface);"><code>&lt;span&gt;&amp;#64;handle&lt;/span&gt; 
<span class="mu-comment">&lt;!-- Renders as @handle --&gt;</span></code></pre>
        </div>
    </div>
</section>
end

html as code_blog_install do
<pre><code class="language-bash"># Download the binary (example for Linux)
curl -L @base_url/linux/mustela -o mustela

# Make it executable
chmod +x mustela

# Move it to your PATH
sudo mv mustela /usr/local/bin/</code></pre>
end