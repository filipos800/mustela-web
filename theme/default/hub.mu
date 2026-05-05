meta do
    binary_size: 1.3 MB
end

html as hub do
<main class="container">
    @html[features]
    @html[manifesto]
    @html[performance]
    @html[dsl]
    @html[ecosystem]
    @html[architecture]
    @html[licensing]
</main>
end

html as manifesto do
<section class="manifesto">
    <div class="container">
        <div class="manifesto-grid">
            <div class="manifesto-content">
                <h2>The Discipline<br>Agreement<span>.</span></h2>
                <p>Mustela isn't a framework. It's a high-performance stream engine. It doesn't have a safety net because safety nets have weight.</p>
            </div>
            
            <div class="manifesto-lists">
                <ul class="manifesto-list">
                    <li class="li-pro">Engineered for sub-millisecond throughput</li>
                    <li class="li-pro">Direct HTML stream manipulation</li>
                    <li class="li-pro">Zero-abstraction philosophy</li>
                    <li class="li-warn">No automatic tag closing/validation</li>
                    <li class="li-warn">Requires strict structural discipline</li>
                    <li class="li-warn">Not recommended for beginners</li>
                </ul>
            </div>

            <div class="hugo-exit">
                Looking for a managed experience with built-in safety? 
                <a href="https://gohugo.io" target="_blank" style="color: var(--accent); text-decoration: underline;">Use Hugo</a>. 
                Staying? Then you know the rules.
            </div>
        </div>
    </div>
</section>
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
        <h3>@binary_size Binary</h3>
        <p>No dependencies, no node_modules. Just a single, tiny, statically linked binary ready to run.</p>
    </div>
    <div class="card">
        <div class="icon">🛠️</div>
        <h3>Deterministic</h3>
        <p>Guaranteed consistent output across all builds. No race conditions, just predictable and stable generation every time.</p>
    </div>
    <div class="card">
        <div class="icon">🔄</div>
        <h3>Partial Hydration</h3>
        <p>Smart change detection only re-renders what is necessary, keeping developer feedback loops under 50ms.</p>
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

html as ecosystem do
<section id="ecosystem" class="ecosystem-container">
    <div class="container">
        <h2>Modular Ecosystem</h2>
        <p class="description" style="margin-bottom: 1rem;">
            @title_web isn't a silo. It's a <strong>high-performance core</strong> that generates clean, modern scaffolding ready for any stack.
        </p>
        <p style="color: var(--text-dim); max-width: 750px; margin: 0 auto;">
            Render content at sub-millisecond speeds with <strong>V</strong>, while letting <strong>Bun</strong> or <strong>Vite</strong> handle the heavy lifting of the modern JavaScript ecosystem.
        </p>

        <!-- Main Integration Flow -->
        <div class="integration-grid">
            <div class="integration-item">
                <div class="tech-tag">Static Generator</div>
                <div class="tech-name">@title_web</div>
            </div>
            <div class="integration-connector">+</div>
            <div class="integration-item">
                <div class="tech-tag">Runtime / Bundler</div>
                <div class="tech-name">Bun & Vite</div>
            </div>
            <div class="integration-connector">+</div>
            <div class="integration-item">
                <div class="tech-tag">UI / Logic</div>
                <div class="tech-name">React / Alpine</div>
            </div>
        </div>

        <!-- Tech Cloud -->
        <div class="tech-cloud">
            <span class="tech-pill">Tailwind CSS</span>
            <span class="tech-pill">PostCSS</span>
            <span class="tech-pill">Shadcn/ui</span>
            <span class="tech-pill">Framer Motion</span>
            <span class="tech-pill">Lucide Icons</span>
            <span class="tech-pill">TypeScript</span>
            <span class="tech-pill">Svelte</span>
            <span class="tech-pill">GSAP</span>
            <span class="tech-pill">Zustand</span>
        </div>

        <!-- Terminal Scaffolding Prompt -->
        <div class="terminal-hint">
            <span class="terminal-comment">// Spin up a Vite-ready workspace</span>
            <span class="terminal-command">$ mustela init --preset vite</span>
        </div>
    </div>
</section>
end

html as dsl do
<section id="dsl" class="code-section">
    <h2>Hybrid Content Power</h2>
    <p>A seamless transition from metadata to content that feels like writing a script, not just a document.</p>
    @html[dsl_article]

    <h3>Modular Templating</h3>
    <p>This is where you define the structure. @title_web utilizes a stateful DSL, allowing you to compose HTML components with zero rendering overhead.</p>
    @html[dsl_theme]
</div>
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
<span class="mu-keyword">end</span><br>

<span class="header"># Mixing Markdown & @title_web</span>
This is standard Markdown text.<br>

<span class="mu-keyword">html do</span>
<span class="mu-tag">&lt;div class="special-callout"&gt;</span>
  <span class="mu-tag">&lt;h4&gt;</span>@title_web Insight<span class="mu-tag">&lt;/h4&gt;</span>
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
  title: <span class="mu-string">@title_web</span>
  index: <span class="mu-string">main</span>
<span class="mu-keyword">end</span><br>

<span class="mu-keyword">html as main do</span>
<span class="mu-tag">&lt;!DOCTYPE html&gt;</span>
<span class="mu-tag">&lt;html lang="</span><span class="mu-at">&commat;lang</span><span class="mu-tag">"&gt;</span>
<span class="mu-at">&commat;html[head]</span>
<span class="mu-at">&commat;html[body]</span>
<span class="mu-tag">&lt;/html&gt;</span>
<span class="mu-keyword">end</span><br>

<span class="mu-keyword">html as head do</span>
<span class="mu-tag">&lt;head&gt;</span>
    <span class="mu-tag">&lt;meta charset="UTF-8"&gt;</span>
    <span class="mu-tag">&lt;title&gt;</span><span class="mu-at">&commat;title</span><span class="mu-tag">&lt;/title&gt;</span>
    <span class="mu-at">&commat;html[style]</span>
<span class="mu-tag">&lt;/head&gt;</span>
<span class="mu-keyword">end</span><br>

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

html as licensing do
<section id="licensing" style="padding-bottom: 2rem;">
    <div class="container">
        <h2>Free for Everyone</h2>
        <p class="section-intro">@title_web is built to empower creators. Whether you are building a personal diary or a high-traffic commercial platform, the engine is yours to use.</p>
    </div>

    <div class="grid" style="margin: 4rem 0;">
        <div class="card">
            <div class="icon">🏢</div>
            <h3>Commercial Usage</h3>
            <p>Included. You can use @title_web to build and host commercial websites, client projects, or internal corporate tools without any licensing fees.</p>
        </div>
        <div class="card">
            <div class="icon">📄</div>
            <h3>Freeware Model</h3>
            <p>The binary is free to download and distribute. The source code remains private to ensure the project stays focused and performant.</p>
        </div>
    </div>
</section>

<section style="padding: 8rem 0; text-align: center; background: radial-gradient(circle at center, #161b22 0%, #0d1117 80%); border-bottom: 0;">
    <div class="container">
        <h2 style="font-size: 3rem; margin-bottom: 1rem;">Experience the speed.</h2>
        <p style="color: var(--text-dim); font-size: 1.2rem; max-width: 600px; margin: 0 auto 3rem;">
            Stop waiting for your builds. Download @title_web and transform your workflow today.
        </p>
        
        <div style="display: flex; justify-content: center; gap: 1.5rem; flex-wrap: wrap;">
            <a href="@url_get_started" class="btn primary" style="font-size: 1.2rem; padding: 1.2rem 2.5rem; box-shadow: 0 0 20px var(--accent-glow);">
                Get Started Now
            </a>
        </div>
        
        <p style="margin-top: 2rem; font-family: var(--mono-font); font-size: 0.8rem; color: var(--text-dim);">
            Current version: <span style="color: var(--accent);">@version</span>
        </p>
    </div>
</section>
end
