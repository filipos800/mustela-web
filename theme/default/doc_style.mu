html as doc_style do
<style>
:root {
    --bg-color: #0d1117;
    --card-bg: #161b22;
    --text-main: #c9d1d9;
    --text-dim: #8b949e;
    --accent: #58a6ff;
    --accent-glow: rgba(88, 166, 255, 0.3);
    --mono-font: 'JetBrains Mono', monospace;
}

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    background-color: var(--bg-color);
    color: var(--text-main);
    font-family: 'Inter', sans-serif;
    line-height: 1.6;
}

.container {
    max-width: 1000px;
    margin: 0 auto;
    padding: 0 2rem;
}

.site-footer {
    padding: 3rem 0;
    text-align: center;
    color: var(--text-dim);
    font-size: 1.0rem;
    border-top: 1px solid #30363d;
  }
</style>
end