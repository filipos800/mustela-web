meta do
  title:       Metadata Reference
  index:       document
  doc_section: DSL Reference
  description: Learn how to manage global settings, page metadata, and template variables in Mustela.
  keywords:    mustela, configuration, metadata, dsl, vlang, static site generator
end

# ⚙️ Configuration & Metadata

html do
<div style="border-left: 4px solid @mustela_orange; padding: 1rem 1.5rem; background: #161b22; margin: 2rem 0;">
  <div style="margin: 0; color: #f5f5f5;">
  <strong>Quick Summary:</strong>
    <ul>
        <li><code>config</code> = settings for the whole site.</li>
        <li><code>meta</code> = data for one specific page.</li>
        <li><code>@variable</code> = how you call data inside <code>html do</code> blocks.</li>
    </ul>
  </div>
</div>
end

Mustela uses a structured approach to manage site-wide settings and page-specific data. This is handled through two main blocks: `config` (global) and meta (`local`).

## 1. Global Configuration Reference (`config/mustela.mu`)

The `config` block is the control panel of your project. It contains a fixed set of variables that govern the build system and default metadata. **You cannot add custom keys to this block.**

### Website Identity & Metadata

These variables are available in templates via the `@` prefix (e.g., `@title`) and serve as fallbacks for the entire site.

html do
<div class="table-wrapper">
    <table class="meta-table">
        <thead>
            <tr>
                <th>Key</th>
                <th>Default</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><code>title</code></td>
                <td><code>Mustela</code></td>
                <td>The site name, used if a page doesn't define its own title.</td>
            </tr>
            <tr>
                <td><code>description</code></td>
                <td><code>""</code></td>
                <td>Global site description for SEO and social media.</td>
            </tr>
            <tr>
                <td><code>base_url</code></td>
                <td><code>""</code></td>
                <td>The root URL (e.g., <a href="https://site.com">https://site.com</a>), required for RSS/Sitemap links.</td>
            </tr>
            <tr>
                <td><code>lang</code></td>
                <td><code>cs</code></td>
                <td>Default language code for the HTML <code>lang</code> attribute.</td>
            </tr>
            <tr>
                <td><code>date_format</code></td>
                <td><code>DD. MM. YYYY</code></td>
                <td>Formatting for the <code>&commat;date_now</code> system variable.</td>
            </tr>
            <tr>
                <td><code>theme</code></td>
                <td><code>default</code></td>
                <td>The name of the folder in <code>themes/</code> to be used as the base template.</td>
            </tr>
            <tr>
                <td><code>author</code></td>
                <td><code>""</code></td>
                <td>The name of the project author.</td>
            </tr>
            <tr>
                <td><code>author_url</code></td>
                <td><code>""</code></td>
                <td>A link to the author's website or profile.</td>
            </tr>
            <tr>
                <td><code>id_headers</code></td>
                <td><code>false</code></td>
                <td>If <code>true</code>, Markdown headers automatically receive <code>id</code> attributes.</td>
            </tr>
            <tr>
                <td><code>index</code></td>
                <td><code>main</code></td>
                <td><strong>Template Router:</strong> Specifies which <code>html as [name] do</code> block from your template will be used as the entry point for the page.</td>
            </tr>
        </tbody>
    </table>
</div>
end

### Build Settings (Generators)

These keys determine which files Mustela generates during the compilation process (both in `build` and `watch` mode).

html do
<div class="table-wrapper">
    <table class="meta-table">
        <thead>
            <tr>
                <th>Key</th>
                <th>Default</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><code>generate_sitemap</code></td>
                <td><code>true</code></td>
                <td>Generates a <code>sitemap.xml</code> file listing all pages.</td>
            </tr>
            <tr>
                <td><code>generate_rss</code></td>
                <td><code>true</code></td>
                <td>Generates an RSS feed in <code>feed.xml</code>.</td>
            </tr>
            <tr>
                <td><code>generate_json</code></td>
                <td><code>false</code></td>
                <td>Exports the full site structure and metadata to <code>articles.json</code>.</td>
            </tr>
        </tbody>
    </table>
</div>
end

## 2. Page & Template Metadata (`meta do ... end`)

Metadata define the state of a specific context. While they are usually written at the top of a `.md` file, **they can also be applied within `.mu` template files**. Unlike the global `config` block, you are free to define any custom variables here.

### Variable Usage & Restrictions

Variables (prefixed with `@`) **cannot be rendered directly within raw Markdown text**. To display a variable's value, you must always place it inside an HTML block:

- `html do ... end`: For direct injection into the flow.
- `html as block_name do ... end`: For named templates.

### Example:

html do
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

## 3. Scope & Priorities

Mustela follows a **specific-over-general** hierarchy when resolving variables:

1. **Local Metadata:** Defined in the `.md` file (Highest priority).
2. **Global Configuration:** Defined in `config/mustela.mu`.
3. **Engine Defaults:** Factory settings built into Mustela (Fallback).

## 4. Immutable Constants

These variables are automatically generated by the Mustela engine. You can read and display them, but you cannot overwrite them.

html do
<div class="table-wrapper" style="margin-top: 1rem;">
    <table class="meta-table">
        <thead>
            <tr>
                <th>Constant</th>
                <th>System Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><code>view</code></td>
                <td><strong>Core Placeholder:</strong> The most important constant. This is where the transformed Markdown content is injected into your template.</td>
            </tr>
            <tr>
                <td><code>date_now</code></td>
                <td>Returns the current date and time formatted according to your global configuration.</td>
            </tr>
            <tr>
                <td><code>filename</code></td>
                <td>Returns the name of the current file being processed (without the extension).</td>
            </tr>
        </tbody>
    </table>
</div>
end

## 5. The Logic of `index`

The `index` variable acts as a **template router**. 

html do
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

In this example, Mustela will search your templates for a block named `html as article do`. If found, it uses that layout. If `index` is not defined, it defaults to `main`.

## 6. Syntax Rules

### Flexible Values

Mustela's parser is designed to be user-friendly. When defining values in `config` or `meta` blocks, you don't need to worry about special characters or spaces.

- **No quotes required:** You can write `title: My Awesome Website directly`.
- **Optional styling:** If you prefer using quotes for syntax highlighting or personal style (e.g., `title: "My Awesome Website"`), you can, but it has no effect on the final output.

### Deactivating Variables (Comments)

Mustela does not use a specific comment symbol inside configuration blocks. To "comment out" or deactivate a variable, simply prefix the key with any character:

```mu
meta do
    # lang: cs   <-- Ignored (system doesn't recognize the key "# lang")
    lang: en     <-- Active variable
end
```

### Data Types

All values are internally handled as **Strings**. For example, `id_headers: true` is processed as the text `"true"`.

## 7. Date Format Reference

When setting the date_format in your config, you can use the following tokens:

html do
<div class="table-wrapper">
    <table class="meta-table">
        <thead>
            <tr>
                <th>Category</th>
                <th>Tokens</th>
                <th>Output Examples</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>Era</strong></td>
                <td><code>N</code>, <code>NN</code></td>
                <td>BC AD, Before Christ, Anno Domini</td>
            </tr>
            <tr>
                <td><strong>Year</strong></td>
                <td><code>YY</code>, <code>YYYY</code></td>
                <td>70...30, 1970...2030</td>
            </tr>
            <tr>
                <td><strong>Month</strong></td>
                <td><code>M</code>, <code>MM</code>, <code>MMM</code>, <code>MMMM</code></td>
                <td>5, 05, May, May</td>
            </tr>
            <tr>
                <td><strong>Day</strong></td>
                <td><code>D</code>, <code>DD</code>, <code>Do</code></td>
                <td>2, 02, 2nd</td>
            </tr>
            <tr>
                <td><strong>Week</strong></td>
                <td><code>dd</code>, <code>ddd</code>, <code>dddd</code></td>
                <td>Sa, Sat, Saturday</td>
            </tr>
            <tr>
                <td><strong>Time</strong></td>
                <td><code>HH:mm:ss</code></td>
                <td>14:30:05 (24h format)</td>
            </tr>
            <tr>
                <td><strong>Offset</strong></td>
                <td><code>Z</code>, <code>ZZZ</code></td>
                <td>-7, -07:00</td>
            </tr>
        </tbody>
    </table>
</div>
end

html do
<div style="background: #161b22; border: 1px solid #30363d; padding: 2rem; border-radius: 12px; margin-top: 3rem;">
<h3 style="color: #58a6ff; margin-bottom: 0.5rem;">💡 Pro Tip</h3>
<p style="color: #8b949e;">Mustela's time formatting is powered by the V language. If you need specific tokens (like eras, quarters, or time zones) that are not listed above, please refer to the official documentation: <a href="https://modules.vlang.io/time.html#Time.custom_format">V Time Custom Format Documentation</a></p>
</div>
end

## 8. Header IDs (`id_headers`)

When building long-form documentation, you often need anchor links. By enabling `id_headers`, Mustela transforms your Markdown headers into linkable targets:

**Markdown:**

```md
## 1. Installation
```

**Output (if id_headers: true):**

```html
<h2 id="s1-installation">1. Installation</h2>
```
