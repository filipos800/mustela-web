html as hub do
<main class="container">
    @html[features]
    @html[performance]
    @html[dsl]
    @html[architecture]
</main>
end

html as features do
<section id="features" class="grid">
    <div class="card">
        <div class="icon">⚡</div>
        <h3>Blazing Fast</h3>
        <p>Generates thousands of pages per second thanks to a highly optimized pipeline and multi-threading.</p>
    </div>
    <div class="card">
        <div class="icon">🐧</div>
        <h3>Unix-First</h3>
        <p>Leverages native syscalls (inotify) for zero-latency filesystem monitoring and extreme performance.</p>
    </div>
    <div class="card">
        <div class="icon">💎</div>
        <h3>Zero-Copy</h3>
        <p>Strictly avoids redundant memory allocations by passing pointers across a stateful DSL engine.</p>
    </div>
    <div class="card">
        <div class="icon">📦</div>
        <h3>400KB Binary</h3>
        <p>No dependencies, no node_modules. Just a single, tiny, statically linked binary ready to run.</p>
    </div>
</section>
end

html as performance do
<section id="performance" class="benchmarks">
    <h2>Performance: The 5,000 Page Challenge</h2>
    <div class="stats-table-wrapper">
        <table class="stats-table">
            <thead>
                <tr>
                    <th>Metric</th>
                    <th>Result</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Files Processed</td>
                    <td>5,000 Markdown files</td>
                </tr>
                <tr>
                    <td>Total Build Time</td>
                    <td class="highlight">528 ms</td>
                </tr>
                <tr>
                    <td>Throughput</td>
                    <td>~9,470 pages / second</td>
                </tr>
                <tr>
                    <td>Peak RAM Usage</td>
                    <td>34.6 MB</td>
                </tr>
                <tr>
                    <td>CPU Efficiency</td>
                    <td>131% (Multi-threaded I/O)</td>
                </tr>
            </tbody>
        </table>
    </div>
    <blockquote>
        "Building 5,000 pages in half a second means your site is ready before your monitor can even finish its next refresh cycle."
    </blockquote>
</section>
end

html as dsl do
<section id="dsl" class="code-section">
    <h2>Hybrid Content Power</h2>
    <p>A seamless transition from metadata to content that feels like writing a script, not just a document.</p>
    @html[dsl_article]

    @html[dsl_theme]
</section>
end

html as dsl_article do
<div class="code-window">
    <div class="code-header">
        <span class="dot red"></span>
        <span class="dot yellow"></span>
        <span class="dot green"></span>
        <span class="file-name">article.md</span>
    </div>
    <pre><code><span class="mu-keyword">meta do</span>
  title:  <span class="mu-string">"Advanced Templating"</span>
  author: <span class="mu-string">"Filip Vrba"</span>
  index:  <span class="mu-string">article</span>
<span class="mu-keyword">end</span>

<span class="header"># Mixing Markdown & Mustela</span>
This is standard Markdown text.

<span class="mu-keyword">html do</span>
<span class="mu-tag">&lt;div class="special-callout"&gt;</span>
  <span class="mu-tag">&lt;h4&gt;</span>Mustela Insight<span class="mu-tag">&lt;/h4&gt;</span>
  <span class="mu-tag">&lt;p&gt;</span>Reading a variable: <span class="mu-tag">&lt;strong&gt;</span><span class="mu-at">&commat;author</span><span class="mu-tag">&lt;/strong&gt;&lt;/p&gt;</span>
<span class="mu-tag">&lt;/div&gt;</span>
<span class="mu-keyword">end</span></code></pre>
</div>
end

html as dsl_theme do
<div class="code-window">
    <div class="code-header">
        <span class="dot red"></span>
        <span class="dot yellow"></span>
        <span class="dot green"></span>
        <span class="file-name">theme.mu</span>
    </div>
    <pre><code><span class="mu-keyword">meta do</span>
  title: <span class="mu-string">Mustela</span>
  index: <span class="mu-string">main</span>
<span class="mu-keyword">end</span>

<span class="mu-keyword">html as main do</span>
<span class="mu-tag">&lt;!DOCTYPE html&gt;</span>
<span class="mu-tag">&lt;html lang="</span><span class="mu-at">&commat;lang</span><span class="mu-tag">"&gt;</span>
<span class="mu-at">&commat;html[head]</span>
<span class="mu-at">&commat;html[body]</span>
<span class="mu-tag">&lt;/html&gt;</span>
<span class="mu-keyword">end</span>

<span class="mu-keyword">html as head do</span>
<span class="mu-tag">&lt;head&gt;</span>
    <span class="mu-tag">&lt;meta charset="UTF-8"&gt;</span>
    <span class="mu-tag">&lt;title&gt;</span><span class="mu-at">&commat;title</span><span class="mu-tag">&lt;/title&gt;</span>
    <span class="mu-at">&commat;html[style]</span>
<span class="mu-tag">&lt;/head&gt;</span>
<span class="mu-keyword">end</span>

<span class="mu-keyword">html as body do</span>
<span class="mu-tag">&lt;body&gt;</span>
    <span class="mu-at">&commat;html[header]</span>
    <span class="mu-at">&commat;view</span>
    <span class="mu-tag">&lt;footer&gt;</span>
        <span class="mu-at">&commat;title</span> &copy; <span class="mu-at">&commat;date_now</span>
    <span class="mu-tag">&lt;/footer&gt;</span>
<span class="mu-tag">&lt;/body&gt;</span>
<span class="mu-keyword">end</span></code></pre>
</div>
end

html as architecture do
<section id="architecture" class="architecture-3d-section">
    <div class="container">
        <h2>Extreme Throughput Pipeline</h2>
        <p class="section-intro">Visualizing the transition from Markdown to HTML via Zero-Copy pointer passing.</p>
        
        <div class="pipeline-dashboard">
            <div class="pipeline-info">
                <div class="info-block">
                    <span class="label">Input Stage</span>
                    <span class="status">Parallel I/O</span>
                    <p>Saturating hardware bandwidth by pulling all source data into RAM simultaneously.</p>
                </div>
                <div class="info-block">
                    <span class="label">Processing</span>
                    <span class="status highlight">Single-Core Bus</span>
                    <p>Deterministic control over the platform's state with zero thread-locking overhead.</p>
                </div>
                <div class="info-block">
                    <span class="label">Output Stage</span>
                    <span class="status">Parallel Flush</span>
                    <p>Firing generated HTML objects back to disk at full hardware speed.</p>
                </div>
            </div>

            <div id="architecture-canvas-container">
                <div class="canvas-header">
                    <span class="live-indicator">LIVE PIPELINE MONITOR</span>
                    <span class="engine-ver">MUSTELA_CORE_v1.0</span>
                </div>
                <div id="architecture-canvas"></div>
            </div>
        </div>
    </div>
</section>
end
