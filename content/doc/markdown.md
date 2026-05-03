meta do
  title:  Markdown & Hybrid Mode
  index:  document
  doc_section: "DSL Reference"
  description: Full reference of supported Markdown features and the unique Hybrid Mode that allows mixing logic with prose.
  keywords: markdown, hybrid mode, static site generator, mustela dsl, documentation
end

# ✍️ Markdown & Hybrid Mode

Mustela’s Markdown engine is built for one thing: **Extreme Throughput.** 

To achieve our benchmark of 9,000+ pages per second, we use a linear, single-pass parser. It supports all essential formatting while introducing a unique "Hybrid Mode" that lets you escape Markdown and enter the world of dynamic HTML.

## 1. Supported Markdown Features

Our parser follows the standard Markdown philosophy but is optimized for technical documentation and speed.

html do
@html[table_markdown_features]

@html[pro_tip_start]
<strong>Mustela uses a non-recursive list parser.</strong> If you try to nest a list, the engine will automatically break out of the current group and start a fresh list. This design choice eliminates recursive overhead, contributing to our extreme parsing speeds.
@html[pro_tip_end]
end

## 2. Optimization Trade-offs

To maintain our **9,000+ pages/sec** benchmark, we deliberately omitted features that require expensive backtracking or recursive lookups.

html do
@html[table_markdown_optimization]
end

## 3. The Hybrid Content Power

This is the "Killer Feature" of Mustela. We break the wall between static content and dynamic templating. Unlike traditional generators where a file is *either* data or content, a Mustela file is a **living stream**.

### Why it's a Game Changer:

-   **Self-Contained Articles:** Everything a page needs (logic, variables, and content) stays in one `.md` file.
-   **Contextual Logic:** You can inject custom layouts or CSS classes only for specific articles without touching the global theme.
-   **Ruby-ish Flow:** Writing in Mustela feels like writing a high-level script.

## 4. Grand Finale: Mixed Mode Example

Below is a demonstration of how **Metadata**, **Markdown**, and **HTML Blocks** coexist in a single file. This is the intended "Mustela Workflow."

html do
@html[file_markdown_grand_finale]
@html[markdown_handling_characters]
end

## 5. Technical Rendering Specs

Mustela follows a "What You See Is What You Get" philosophy with a focus on performance and semantic correctness. Here is exactly how the engine transforms your Markdown into HTML.

### 5.1 Images

Mustela automatically differentiates between decorative images and descriptive figures. We also include `loading="lazy"` by default to boost your PageSpeed score.

**With Caption:** `![The Mustela logo](logo.png)`

```html
<figure>
  <img src="logo.png" alt="The Mustela logo" loading="lazy">
  <figcaption>The Mustela logo</figcaption>
</figure>
```

**Decorative (No alt):** ![](logo.png)

```html
<img src="logo.png" alt="" loading="lazy">
```

### 5.2 Links

Mustela handles empty labels gracefully by using the URL as the display text.

html do
<p><strong>Standard:</strong> <code>[@title_web](@base_url)</code><p>
<pre><code class="language-html">&lt;a href="@base_url"&gt;@title_web&lt;/a&gt;</code></pre>

<p><strong>Auto-link:</strong> <code>[](@base_url)</code></p>
<pre><code class="language-html">&lt;a href="@base_url"&gt;@base_url&lt;/a&gt;</code></pre>
end

### 5.3 Code

Syntax highlighting is prepared via CSS classes, keeping the HTML output clean and fast.

#### Code Blocks: `\`\`\`mu`

```html
<pre>
  <code class="language-mu">
    /* Your code here */
  </code>
</pre>
```

#### Code Spans `\``:

```html
<code>code</code>
```

### 5.4 The List Logic

As mentioned in the **Pro Tip**, Mustela does not support nesting. Instead, it groups consecutive items of the same type. If you switch types or break the order, Mustela starts a new group.

#### Markdown Input:

```md
1. faa
2. fee
- foo
3. fii
```

#### HTML Output:

```html
<ol>
  <li value="1">faa</li>
  <li value="2">fee</li>
</ol>
<ul>
  <li>foo</li>
</ul>
<ol>
  <li value="3">fii</li>
</ol>
```

---

html do
@html[note_orange_start]
<strong>Congratulations!</strong> You've mastered the Mustela DSL. Ready to deploy? Check out the <a href="/doc/structure.html" style="color: #58a6ff;">Project Structure & Workflow</a> guide.
@html[note_end]
end
