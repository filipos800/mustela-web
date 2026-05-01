html as main_style do
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

  .hero {
    padding: 8rem 0 4rem;
    text-align: center;
  }

  .badge {
    display: inline-block;
    padding: 0.25rem 0.75rem;
    background: var(--accent-glow);
    color: var(--accent);
    border-radius: 20px;
    font-size: 0.8rem;
    font-weight: 600;
    margin-bottom: 1rem;
  }

  h1 {
    font-size: 4.5rem;
    font-weight: 800;
    letter-spacing: -2px;
    margin-bottom: 0.5rem;
  }

  h1 span {
    color: var(--accent);
  }

  .tagline {
    font-size: 1.5rem;
    color: var(--text-dim);
    margin-bottom: 2rem;
  }

  .description {
    max-width: 600px;
    margin: 0 auto 3rem;
    font-size: 1.1rem;
  }

  .btn {
    text-decoration: none;
    padding: 0.8rem 1.5rem;
    border-radius: 8px;
    font-weight: 600;
    transition: all 0.3s ease;
    display: inline-block;
    margin: 0 0.5rem;
  }

  .btn.primary {
    background: var(--accent);
    color: #fff;
    border: 1px solid var(--accent);
  }

  .btn.secondary {
    border: 1px solid var(--text-dim);
    color: var(--text-main);
    background: transparent;
  }

  .btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 5px 15px var(--accent-glow);
  }

  .grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 1.5rem;
    margin: 4rem 0;
  }

  .card {
    background: var(--card-bg);
    padding: 2rem;
    border-radius: 12px;
    border: 1px solid #30363d;
    transition: transform 0.2s ease, border-color 0.2s ease;
  }

  .card:hover {
    transform: translateY(-5px);
    border-color: var(--accent);
  }

  .card .icon {
    font-size: 2rem;
    margin-bottom: 1rem;
    text-align: center;
  }

  .card h3 {
    margin-bottom: 0.5rem;
  }

  .card p {
    color: var(--text-dim);
    font-size: 0.9rem;
  }

  .benchmarks {
    margin: 6rem 0;
  }

  h2 {
    font-size: 2rem;
    margin-bottom: 1.5rem;
    text-align: center;
  }

  h3 {
    font-size: 1.7rem;
    margin-bottom: 1.5rem;
    text-align: center;
  }

  .stats-table-wrapper {
    background: var(--card-bg);
    border-radius: 12px;
    overflow: hidden;
    border: 1px solid #30363d;
  }

  .stats-table {
    width: 100%;
    border-collapse: collapse;
    text-align: left;
  }

  .stats-table th,
  .stats-table td {
    padding: 1rem 1.5rem;
    border-bottom: 1px solid #30363d;
  }

  .stats-table th {
    background: #21262d;
    color: var(--text-dim);
    font-size: 0.75rem;
    text-transform: uppercase;
  }

  .highlight {
    color: #39d353;
    font-family: var(--mono-font);
    font-weight: 600;
  }

  blockquote {
    margin-top: 2rem;
    text-align: center;
    font-style: italic;
    color: var(--text-dim);
    padding: 0 2rem;
  }

  .code-window {
    background: #010409;
    border-radius: 10px;
    border: 1px solid #30363d;
    margin-top: 2rem;
  }

  .code-header {
    background: #161b22;
    padding: 0.75rem 1rem;
    display: flex;
    align-items: center;
    gap: 8px;
  }

  .code-section p, .section-intro{
      text-align: center;
  }

  .code-section h3 {
      margin-top: 4rem;
  }

  .dot {
    width: 12px;
    height: 12px;
    border-radius: 50%;
  }

  .red {
    background: #ff5f56;
  }

  .yellow {
    background: #ffbd2e;
  }

  .green {
    background: #27c93f;
  }

  .file-name {
    margin-left: 10px;
    font-size: 0.8rem;
    color: var(--text-dim);
    font-family: var(--mono-font);
  }

  pre {
    padding: 1.5rem;
    overflow-x: auto;
    font-family: var(--mono-font);
    font-size: 0.9rem;
  }

  .keyword {
    color: #ff7b72;
  }

  .header {
    color: #79c0ff;
  }

  .mu-keyword {
    color: #ff7b72;
    font-weight: bold;
  }

  /* meta, html, as, do, end */
  .mu-at {
    color: #79c0ff;
  }

  /* , Hub, en */
  .mu-string {
    color: #a5d6ff;
  }

  /* hodnoty za dvojtečkou */
  .mu-tag {
    color: #7ee787;
  }

  /* standardní HTML tagy */
  .mu-comment {
    color: #8b949e;
    font-style: italic;
  }

  .blueprint {
    background: #0d1117;
    border: 1px dashed var(--text-dim);
    padding: 2rem;
    display: inline-block;
    border-radius: 8px;
    margin-top: 2rem;
    color: var(--accent);
  }

  .site-footer {
    padding: 3rem 0;
    text-align: center;
    color: var(--text-dim);
    font-size: 1.0rem;
    border-top: 1px solid #30363d;
  }

  .logo-minimal-container {
    display: flex;
    justify-content: center;
    margin-top: 2rem;
    margin-bottom: -1rem;
  }

  .logo-minimal {
    font-family: var(--mono-font);
    font-size: 1rem;
    line-height: 1.2;
    color: #f06c21;
    /* Jemnější oranžová ladící s GitHub dark mode */
    font-weight: 400;
    user-select: none;
    opacity: 0.9;
    /* Efekt jemného rozsvícení při najetí myší */
    transition: opacity 0.3s ease, color 0.3s ease;
  }

  .logo-minimal:hover {
    opacity: 1;
    color: var(--accent);
  }

  @media (max-width: 768px) {
    .logo-minimal {
      font-size: 0.6rem;
      /* Aby se linka na mobilu nezalomila */
    }
  }

  @media (max-width: 768px) {
    h1 {
      font-size: 3rem;
    }
  }

  .architecture-3d-section {
    padding: 6rem 0;
  }

  .pipeline-dashboard {
    display: grid;
    grid-template-columns: 300px 1fr;
    background: #010409;
    border: 1px solid #30363d;
    border-radius: 12px;
    overflow: hidden;
    margin-top: 2rem;
  }

  .pipeline-info {
    background: #161b22;
    padding: 2rem;
    border-right: 1px solid #30363d;
  }

  .info-block {
    margin-bottom: 2rem;
  }

  .info-block .label {
    display: block;
    font-size: 0.7rem;
    color: #8b949e;
    text-transform: uppercase;
    letter-spacing: 1px;
  }

  .info-block .status {
    display: block;
    font-family: var(--mono-font);
    font-weight: bold;
    font-size: 1.1rem;
    margin-bottom: 0.5rem;
  }

  .info-block .status.highlight {
    color: #f78166;
  }

  .info-block p {
    font-size: 0.85rem;
    color: #8b949e;
    line-height: 1.4;
  }

  #architecture-canvas-container {
    position: relative;
    background: radial-gradient(circle at center, #0d1117 0%, #010409 100%);
  }

  .canvas-header {
    position: absolute;
    top: 0;
    width: 100%;
    padding: 10px 20px;
    display: flex;
    justify-content: space-between;
    font-family: var(--mono-font);
    font-size: 0.65rem;
    z-index: 10;
  }

  .live-indicator::before {
    content: "";
    display: inline-block;
    width: 8px;
    height: 8px;
    background: #39d353;
    border-radius: 50%;
    margin-right: 8px;
    animation: blink 1.5s infinite;
  }

  #architecture-canvas {
    width: 100%;
    height: 500px;
  }

  @keyframes blink {
    0% {
      opacity: 1;
    }

    50% {
      opacity: 0.3;
    }

    100% {
      opacity: 1;
    }
  }

  @html[style_ecosystem]

  @media (max-width: 900px) {
      .pipeline-dashboard {
          grid-template-columns: 1fr;
      }

      .pipeline-info {
          border-right: none;
          border-bottom: 1px solid #30363d;
      }
  }
</style>
end




html as style_ecosystem do
  .ecosystem-container {
      padding-top: 6rem;
      text-align: center;
  }

  .integration-grid {
      display: flex;
      justify-content: center;
      align-items: center;
      gap: 1.5rem;
      margin: 3rem 0;
  }

  .integration-item {
      background: var(--card-bg);
      padding: 1.5rem 2rem;
      border-radius: 12px;
      border: 1px solid #30363d;
      min-width: 180px;
      transition: border-color 0.3s ease;
  }

  .integration-item:hover {
      border-color: var(--accent);
  }

  .tech-tag {
      font-size: 0.65rem;
      text-transform: uppercase;
      color: var(--text-dim);
      letter-spacing: 1px;
      margin-bottom: 0.5rem;
  }

  .tech-name {
      font-weight: 800;
      color: --var(--accent);
      font-size: 1.2rem;
  }

  .integration-connector {
      font-size: 1.8rem;
      color: var(--text-dim);
      font-weight: 300;
  }

  /* Tech Cloud Pills */
  .tech-cloud {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 0.75rem;
      max-width: 850px;
      margin: 3rem auto;
  }

  .tech-pill {
      background: #0d1117;
      border: 1px solid #30363d;
      padding: 0.6rem 1.2rem;
      border-radius: 8px;
      font-size: 0.85rem;
      font-family: var(--mono-font);
      color: var(--text-main);
      transition: all 0.2s ease;
      cursor: default;
  }

  .tech-pill:hover {
      border-color: var(--accent);
      background: var(--accent-glow);
      transform: translateY(-3px);
      color: #fff;
  }

  .terminal-hint {
      margin-top: 4rem;
      font-family: var(--mono-font);
      background: #010409;
      display: inline-block;
      padding: 1rem 2rem;
      border-radius: 8px;
      border: 1px solid #30363d;
  }

  .terminal-comment { color: var(--text-dim); margin-bottom: 0.5rem; display: block; font-size: 0.8rem; }
  .terminal-command { color: var(--mustela-green); font-weight: bold; }

  .terminal-command::after {
    content: "_";
    animation: cursor-blink 1s infinite;
    color: var(--mustela-green);
  }

  @keyframes cursor-blink {
    0%, 100% { opacity: 1; }
    50% { opacity: 0; }
  }

  @media (max-width: 768px) {
      .integration-grid { flex-direction: column; gap: 1rem; }
      .integration-connector { transform: rotate(90deg); margin: 0.5rem 0; }
  }
end
