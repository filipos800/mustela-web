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

    @html[scripts]
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