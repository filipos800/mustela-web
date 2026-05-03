html as doc_style do
<style>
    :root {
        /* Barevná paleta */
        --bg-main: #0d1117;
        --bg-sidebar: #090c10;
        --surface: #27303f;
        --border: #30363d;
        --text-primary: #f5f5f5;
        --text-secondary: #8b949e;
        --accent: #58a6ff;
        --accent-glow: rgba(88, 166, 255, 0.15);
        --code-bg: #010409;
        
        /* Typografie */
        --font-main: 'Inter', sans-serif;
        --font-display: 'Urbanist', sans-serif;
        --font-mono: 'JetBrains Mono', monospace;
    }

    * { box-sizing: border-box; margin: 0; padding: 0; }

    body {
        background-color: var(--bg-main);
        color: var(--text-primary);
        font-family: var(--font-main);
        line-height: 1.6;
        -webkit-font-smoothing: antialiased;
    }

    /* Layout */
    .layout-wrapper {
        display: flex;
        min-height: 10vh;
    }

    /* Sidebar */
    .sidebar {
        width: 280px;
        min-width: 240px;
        flex-shrink: 0;
        background: var(--bg-sidebar);
        border-right: 1px solid var(--border);
        padding: 2rem 1.5rem;
        position: sticky;
        top: 0;
        height: 100vh;
        overflow-y: auto;
    }

    .logo {
        font-family: var(--font-display);
        font-size: 1.8rem;
        font-weight: 800;
        text-decoration: none;
        color: #fff;
        display: block;
        margin-bottom: 0.5rem;
    }

    .logo span { color: var(--accent); }

    .version-tag {
        font-family: var(--font-mono);
        font-size: 0.75rem;
        color: var(--accent);
        background: var(--surface);
        padding: 2px 8px;
        border-radius: 4px;
        display: inline-block;
        margin-bottom: 2rem;
    }

    .nav-group { margin-bottom: 2rem; }
    .group-title {
        display: block;
        font-size: 0.75rem;
        text-transform: uppercase;
        color: var(--text-secondary);
        font-weight: 700;
        letter-spacing: 0.05em;
        margin-bottom: 0.75rem;
    }

    .sidebar-nav a {
        display: block;
        color: var(--text-secondary);
        text-decoration: none;
        padding: 0.4rem 0;
        transition: color 0.2s;
        font-size: 0.95rem;
    }

    .sidebar-nav a:hover { color: var(--accent); }

    /* Main Content */
    .content-container {
        flex: 1;
        max-width: 850px;
        padding: 3rem 4rem;
        margin: 0 auto;
        min-width: 0;
    }

    .breadcrumb {
        font-size: 0.85rem;
        color: var(--text-secondary);
        margin-bottom: 2rem;
    }

    .breadcrumb .active { color: var(--text-primary); }

    /* Markdown Styling */
    .markdown-content {
        overflow-wrap: break-word;
    }

    .markdown-content h1 { font-size: 2.5rem; margin-bottom: 1.5rem; font-family: var(--font-display); }
    .markdown-content h2 { font-size: 1.8rem; margin: 2rem 0 1rem; border-bottom: 1px solid var(--border); padding-bottom: 0.5rem; }
    .markdown-content h3 { margin: 2rem 0 1rem; }
    .markdown-content h4 { margin: 2rem 0 1rem; }
    .markdown-content p { margin-bottom: 1.2rem; font-size: 1.05rem; color: #d1d5db; }
    
    li code {
        background: var(--surface);
    }

    .markdown-content code {
        font-family: var(--font-mono);
        
        border-radius: 4px;
        font-size: 0.9rem;
        color: #e6edf3;
    }

    .markdown-content :not(pre) > code {
        padding: 2px 6px;
        background: var(--surface);
    }

    .markdown-content h2 code {
        font-size: 1.6rem;
    }

    .markdown-content pre {
        background: var(--code-bg);
        border: 1px solid var(--border);
        padding: 1.5rem;
        border-radius: 8px;
        overflow-x: auto;
        margin: 1.5rem 0;
    }

    .markdown-content .code-window pre {
        background: none;
        border: none;
        margin: 0;
    }

    /* Footer */
    .doc-footer {
        margin-top: 5rem;
        padding-top: 2rem;
        border-top: 1px solid var(--border);
        color: var(--text-secondary);
        font-size: 0.85rem;
    }

    .markdown-content hr {
        height: 1px;
        background-color: var(--border);
        border: none;
        margin: 3rem 0;
    }

    /* table */
    .table-wrapper {
        width: 100%;
        overflow-x: auto;
        margin: 2rem 0;
        border-radius: 8px;
        border: 1px solid var(--border);
    }

    .meta-table {
        width: 100%;
        border-collapse: collapse;
        text-align: left;
        font-size: 0.95rem;
        background-color: var(--bg-sidebar);
    }

    .meta-table th {
        background-color: var(--surface);
        color: var(--accent);
        padding: 1rem;
        font-weight: 600;
        border-bottom: 1px solid var(--border);
    }

    .meta-table td {
        padding: 1rem;
        border-bottom: 1px solid var(--border);
        color: var(--text-secondary);
        vertical-align: top;
    }

    .meta-table tr:last-child td {
        border-bottom: none;
    }

    .meta-table code {
        color: var(--text-primary);
        background: var(--surface);
        padding: 0.2rem 0.4rem;
        border-radius: 4px;
        font-family: var(--font-mono);
    }

    .meta-table strong {
        color: @mustela_orange;
    }

    .footer-links { margin-bottom: 1rem; }
    .footer-links a { color: var(--accent); text-decoration: none; margin-right: 1.5rem; }

    @html[code_window]
    @html[mu_style]

    /* Fix pro seznamy v dokumentaci */
    .table-wrapper ul, 
    .table-wrapper ol,
    main ul, 
    main ol {
        margin: 1rem 0;          /* Mezera nad a pod seznamem */
        padding-left: 1.5rem;    /* Dostatečný prostor pro kuličky */
        list-style-position: inside; /* Klíčová vlastnost: kuličky budou uvnitř kontejneru */
    }

    .table-wrapper li,
    main li {
        margin-bottom: 0.5rem;   /* Mezera mezi jednotlivými položkami, aby nebyly přilepené */
        line-height: 1.6;        /* Lepší čitelnost textu */
    }

    /* Pokud chceš kuličky nechat vlevo, ale zajistit, aby nebyly v ořezu: */
    ul {
        list-style-position: outside; 
        margin-left: 1rem; 
    }

    figure {
        margin: 3rem auto;
        max-width: 900px;
        display: flex;
        flex-direction: column;
        align-items: center;
        background: #0d1117;
    }

    figure img {
        max-width: 100%;
        height: auto;
        border-radius: 4px;
    }

    figure figcaption {
        margin-top: 1.5rem;
        color: #8b949e;
        font-size: 0.95rem;
        line-height: 1.5;
        text-align: center;
        max-width: 80%;
    }

    figure figcaption strong {
        color: @mustela_orange;
    }

    a {
        color: #58a6ff;
    }

    @media (max-width: 768px) {
        .layout-wrapper {
            flex-direction: column;
        }

        .sidebar {
            width: 100%;
            min-width: 0;
            height: auto;
            position: relative;
            border-right: none;
            border-bottom: 1px solid var(--border);
        }

        .content-container {
            max-width: 100%;
            padding: 1.5rem;
            margin: 0;
        }
    }

    
</style>
end