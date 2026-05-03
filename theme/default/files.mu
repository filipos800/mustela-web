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
<span class="mu-keyword">end</span>

This will NOT work in raw Markdown:
Hello <span class="mu-at">&commat;author</span>!

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
<span class="mu-keyword">end</span>

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
<span class="mu-keyword">end</span>

<strong>**This is Markdown!**</strong> Even though it's physically between two HTML calls, 
Mustela renders it perfectly because the stream remains open.

<span class="mu-keyword">html do</span>
<span class="mu-at">&commat;html[callout_end]</span>
<span class="mu-keyword">end</span></code></pre>
</div>
end