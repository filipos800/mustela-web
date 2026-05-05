html as file_metadata_01 do
<div class="code-window">
    <div class="code-header">
        <span class="dot red"></span>
        <span class="dot yellow"></span>
        <span class="dot green"></span>
        <span class="file-name">article.md</span>
    </div>
    <pre><code><span class="mu-keyword">html do</span>
    title:  <span class="mu-string">My Article</span>
    author: <span class="mu-string">@author</span>
    tags:   <span class="mu-string">vlang, web, dsl</span>
<span class="mu-keyword">end</span><br>

This will NOT work in raw Markdown:
Hello <span class="mu-at">&commat;author</span>!<br>

Correct usage:
<span class="mu-keyword">html do</span>
<span class="mu-tag">&lt;p&gt;</span>Hello <span class="mu-at">&commat;author</span>!<span class="mu-tag">&lt;/p&gt;</span>
<span class="mu-keyword">end</span></code></pre>
</div>
end

html as file_metadata_02 do
<div class="code-window" style="margin-bottom: 2rem;">
    <div class="code-header">
        <span class="dot red"></span>
        <span class="dot yellow"></span>
        <span class="dot green"></span>
        <span class="file-name">article.md</span>
    </div>
    <pre><code><span class="mu-keyword">html do</span>
    index: <span class="mu-string">article</span>
<span class="mu-keyword">end</span></code></pre>
</div>
end

html as file_html_blocks_01 do
<div class="code-window" style="margin-bottom: 2rem;">
    <div class="code-header">
        <span class="dot red"></span>
        <span class="dot yellow"></span>
        <span class="dot green"></span>
        <span class="file-name">snippets.mu</span>
    </div>
    <pre><code><span class="mu-keyword">html</span> <span class="mu-keyword">as</span> <span class="mu-string">callout_start</span> <span class="mu-keyword">do</span>
<span class="mu-tag">&lt;div</span> <span class="mu-string">class="custom-callout"</span> <span class="mu-string">style="border-left: 4px solid </span><span class="mu-at">@accent_color</span><span class="mu-string">;"</span><span class="mu-tag">&gt;</span>
  <span class="mu-tag">&lt;div</span> <span class="mu-string">class="callout-inner"</span><span class="mu-tag">&gt;</span>
<span class="mu-keyword">end</span><br>

<span class="mu-keyword">html</span> <span class="mu-keyword">as</span> <span class="mu-string">callout_end</span> <span class="mu-keyword">do</span>
  <span class="mu-tag">&lt;/div&gt;</span>
<span class="mu-tag">&lt;/div&gt;</span>
<span class="mu-keyword">end</span></code></pre>
</div>
end

html as file_html_blocks_02 do
<div class="code-window" style="margin-bottom: 2rem;">
    <div class="code-header">
        <span class="dot red"></span>
        <span class="dot yellow"></span>
        <span class="dot green"></span>
        <span class="file-name">article.md</span>
    </div>
    <pre><code><span class="mu-keyword">html do</span>
<span class="mu-at">&commat;html[callout_start]</span>
<span class="mu-keyword">end</span><br>

<strong>**This is Markdown!**</strong> Even though it's physically between two HTML calls, 
Mustela renders it perfectly because the stream remains open.<br>

<span class="mu-keyword">html do</span>
<span class="mu-at">&commat;html[callout_end]</span>
<span class="mu-keyword">end</span></code></pre>
</div>
end

html as file_html_blocks_author_card do
<div class="code-window">
    <div class="code-header">
        <span class="dot red"></span>
        <span class="dot yellow"></span>
        <span class="dot green"></span>
        <span class="file-name">article.md</span>
    </div>
    <pre><code><span class="mu-keyword">html do</span>
<span class="mu-tag">&lt;div</span> <span class="mu-at">class=</span><span class="mu-string">"author-card"</span><span class="mu-tag">&gt;</span>
  <span class="mu-tag">&lt;p&gt;</span>Written by: <span class="mu-tag">&lt;strong&gt;</span><span class="mu-at">&commat;author</span><span class="mu-tag">&lt;/strong&gt;&lt;/p&gt;</span>
<span class="mu-tag">&lt;/div&gt;</span>
<span class="mu-keyword">end</span></code></pre>
</div>
end

html as file_html_blocks_footer do
<div class="code-window">
    <div class="code-header">
        <span class="dot red"></span>
        <span class="dot yellow"></span>
        <span class="dot green"></span>
        <span class="file-name">layout.mu</span>
    </div>
    <pre><code><span class="mu-keyword">html as footer do</span>
<span class="mu-tag">&lt;footer</span> <span class="mu-at">class=</span><span class="mu-string">"site-footer"</span><span class="mu-tag">&gt;</span>
  <span class="mu-tag">&lt;p&gt;</span>&amp;copy; <span class="mu-at">&commat;current_year</span> <span class="mu-at">&commat;title</span><span class="mu-tag">&lt;/p&gt;</span>
<span class="mu-tag">&lt;/footer&gt;</span>
<span class="mu-keyword">end</span></code></pre>
</div>
end

html as file_html_blocks_body_block do
<div class="code-window">
    <div class="code-header">
        <span class="dot red"></span>
        <span class="dot yellow"></span>
        <span class="dot green"></span>
        <span class="file-name">main.mu</span>
    </div>
    <pre><code><span class="mu-keyword">html as body do</span>
<span class="mu-tag">&lt;body&gt;</span>
  <span class="mu-at">&commat;html[navigation]</span>
  
  <span class="mu-tag">&lt;main</span> <span class="mu-at">class=</span><span class="mu-string">"content-wrapper"</span><span class="mu-tag">&gt;</span>
    <span class="mu-at">&commat;view</span>  <span class="mu-comment">&lt;!-- Your Markdown article appears here --&gt;</span>
  <span class="mu-tag">&lt;/main&gt;</span>

  <span class="mu-at">&commat;html[footer]</span>
<span class="mu-tag">&lt;/body&gt;</span>
<span class="mu-keyword">end</span></code></pre>
</div>
end

html as file_html_blocks_layouts do
<div class="code-window">
    <div class="code-header">
        <span class="dot red"></span>
        <span class="dot yellow"></span>
        <span class="dot green"></span>
        <span class="file-name">responsive.mu</span>
    </div>
    <pre><code><span class="mu-keyword">html as desktop_layout do</span>
  <span class="mu-tag">&lt;div</span> <span class="mu-at">class=</span><span class="mu-string">"desktop"</span><span class="mu-tag">&gt;</span><span class="mu-at">&commat;view</span><span class="mu-tag">&lt;/div&gt;</span>
<span class="mu-keyword">end</span><br>

<span class="mu-keyword">html as mobile_layout do</span>
  <span class="mu-tag">&lt;div</span> <span class="mu-at">class=</span><span class="mu-string">"mobile"</span><span class="mu-tag">&gt;</span><span class="mu-at">&commat;view</span><span class="mu-tag">&lt;/div&gt;</span>
<span class="mu-keyword">end</span></code></pre>
</div>
end

html as file_markdown_grand_finale do
<div class="code-window">
    <div class="code-header">
        <span class="dot red"></span>
        <span class="dot yellow"></span>
        <span class="dot green"></span>
        <span class="file-name">advanced-guide.md</span>
    </div>
    <pre style="white-space: pre-wrap; word-wrap: break-word;"><code><span class="mu-keyword">meta do</span>
  title:  <span class="mu-string">"The Hybrid Power"</span>
  author: <span class="mu-string">"@author"</span>
  index:  <span class="mu-string">article</span>
<span class="mu-keyword">end</span><br>

# Mixing Markdown & Mustela
This is standard Markdown text. But wait, we can inject logic:<br>

<span class="mu-keyword">html do</span>
<span class="mu-tag">&lt;div</span> <span class="mu-at">class=</span><span class="mu-string">"special-callout"</span><span class="mu-tag">&gt;</span>
  <span class="mu-tag">&lt;h4&gt;</span>🦦 Mustela Insight<span class="mu-tag">&lt;/h4&gt;</span>
  <span class="mu-tag">&lt;p&gt;</span>You are reading a variable: <span class="mu-tag">&lt;strong&gt;</span><span class="mu-at">&commat;author</span><span class="mu-tag">&lt;/strong&gt;&lt;/p&gt;</span>
<span class="mu-tag">&lt;/div&gt;</span>
<span class="mu-keyword">end</span>

<br>Back to Markdown. Even <strong>**bold text**</strong> or [links](/doc/concepts.html) work perfectly here.<br>

<span class="mu-keyword">html do</span>
<span class="mu-tag">&lt;script&gt;</span>
  console.log("Mustela injected this script specifically for this page!");
<span class="mu-tag">&lt;/script&gt;</span>
<span class="mu-keyword">end</span>

</code></pre>
</div>
end