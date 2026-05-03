meta do
  title:  "HTML Blocks"
  index:  document
  doc_section: "DSL Reference"
  description: "Master HTML Blocks in Mustela. Learn how to seamlessly inject custom HTML into your Markdown files without sacrificing build performance or data pipeline speed."
  keywords: "Mustela HTML blocks, custom HTML in Markdown, SSG components, Mustela DSL, hybrid markdown"
end

# 🧱 HTML Blocks

In Mustela, HTML blocks are where raw data meets design. While Markdown handles your content, HTML blocks define the **structure** and **logic** of your site.

html do
@html[pro_tip_start]
<strong>Variables (prefixed with <code>&commat;</code>) cannot be rendered directly in raw Markdown.</strong> For the system to know it should replace <code>&commat;author</code> with an actual name, the code must be wrapped inside an HTML block.
@html[pro_tip_end]
end

## 1. The Two Types of HTML Blocks

Mustela recognizes two ways to define HTML, each serving a different purpose in your workflow.

### 1.1 Direct Injection (`html do`)

The standard `html do` block is used directly inside your `.md` files. It acts as a portal that allows you to use variables and custom tags right in the middle of your content.

```mu
html do
<div class="author-card">
  <p>Written by: <strong>@author</strong></p>
</div>
end
```

### 1.2 Named Templates (`html as <name> do`)

Named blocks are the building blocks of your theme. Once defined (usually in your `templates/` folder), they can be summoned anywhere using the `@html[name]` syntax.

```mu
html as footer do
<footer class="site-footer">
  <p>&copy; @current_year @title</p>
</footer>
end
```

### 1.3 Local Template Definitions (Testing Only)

While named blocks (`html as name do`) are typically defined in your template files, Mustela allows you to define them directly inside a Markdown file.

> **However, this is strongly discouraged for production use.**

Defining templates inside Markdown is intended strictly for **rapid prototyping and testing**. It allows you to experiment with a new component's logic without jumping between directories.

### CLI Warnings

Mustela's engine prioritizes clarity. If you define a named block within a Markdown file, the CLI will issue a warning during the build process:

```bash
10:23:32 AM [mustela] TRANSLATE | ./content/doc/html-blocks.md
[WARNING] Local template "pro_tip_start" defined in Markdown (doc/html-blocks.md).
```

### Why you should avoid this:

- **Global Namespace Pollution:** You might accidentally overwrite a global template, leading to inconsistent behavior across your site.
- **Maintenance Debt:** Logic hidden inside content files is hard to find and update later.
- **Architectural Purity:** Keep your design in `templates/` and your stories in `content/`.
- **Recommendation:** Once your locally defined block works exactly how you want, move its definition to your global template files and remove it from the Markdown.

## 2. The "Sandwich" Pattern (Structural Wrappers)

Because Mustela processes files as a continuous data stream, you can split a single HTML element across two blocks. This allows you to "wrap" standard Markdown content inside complex HTML structures.

#### Example: Creating a Callout Box

html do
@html[file_html_blocks_01]
end

html do
@html[file_html_blocks_02]
end

## 3. Variable Injection

HTML blocks are the only place where variables are resolved. As defined in the [Metadata Reference](/doc/metadata.html#s3-scope-priorities), Mustela pulls values from local `meta`, global `config`, or system constants.

html do
@html[note_orange_start]
<strong>Key Rule:</strong> Within an HTML block, any string starting with <code>@</code> is treated as a potential variable and will be swapped for its value during the <strong>Processing Stage</strong>.
@html[note_end]
end

## 4. Technical Guardrails

To maintain its extreme performance, Mustela’s HTML parser follows a few strict rules:

- **Line-Based Parsing:** Each `html do` and `end` must reside on its own line.
- **Recursive Depth:** You can nest `@html[]` calls, but the engine limits recursion to **20 levels** to prevent infinite loops.
- **Zero Sanity Checks:** Mustela trusts you. It will output exactly what you write. If you forget to close a `<div>` in a "sandwich", the engine won't stop you—giving you total control (and total responsibility).
