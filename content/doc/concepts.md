meta do
  title:  "Core Concepts"
  author: "Filip Vrba"
  index:  document
  doc_section: "Architecture"
end

# 🧠 Core Concepts

To master Mustela, you need to understand the philosophy behind its engine. Unlike traditional generators that rely on heavy runtimes and data cloning, Mustela is built like a high-speed data pipeline.

## 1. The "Data Slide" Pipeline
Most generators act like obstacle courses—data jumps through allocations, garbage collection, and constant cloning. Mustela treats data as a **slide**.

1.  **Parallel Ingest:** All source data is pulled into RAM simultaneously using multi-threading to saturate your I/O bandwidth.
2.  **Synchronous Core:** Once in RAM, a single-core event bus takes over. This provides absolute deterministic control with zero thread-locking (mutex) overhead.
3.  **Parallel Flush:** Generated HTML objects are fired back to the disk as fast as the hardware allows.

## 2. Zero-Copy Principle
This is the secret to Mustela's extreme throughput. Once your Markdown content is loaded into the **Heap**, it stays there. 

We do not pass data copies between functions. Instead, we pass **pointers** to memory addresses. This drastically reduces CPU cycles and energy consumption by avoiding redundant memory allocations.

## 3. Stateful DSL & Memory Recycling
The Mustela DSL (`.mu`) engine doesn't instantiate a new parser for every file. 

- It uses a structure already allocated on the heap.
- Between processing files, it simply **resets its internal state**.
- By reusing "warm" memory that is already mapped, we bypass the cost of constant allocation and deallocation, keeping peak RAM usage around **35 MB** even for 5,000 pages.

## 4. Unix-First Philosophy
Mustela is engineered for Unix-like environments (Linux, BSD, WSL). It leverages native system calls rather than relying on cross-platform abstractions that introduce latency.

A prime example is our **Watcher**, which uses native `<sys/inotify.h>`. This allows the engine to react to filesystem changes with zero-latency, making the developer feedback loop feel instantaneous.

## 5. Hybrid Content Model
Mustela breaks the wall between static content and dynamic templating. You are encouraged to mix Markdown and DSL logic.

- **Markdown:** Best for standard text and structural content.
- **HTML Blocks:** Best for layout logic and component composition.
- **Shared State:** Variables defined in `meta` blocks are accessible to both, allowing for contextual logic (e.g., changing a CSS class only for a specific article) without touching the global theme.

---

html do
<div style="border-left: 4px solid #f06c21; padding: 1rem 1.5rem; background: #161b22; margin: 2rem 0;">
  <p style="margin: 0; color: #f5f5f5;"><strong>Next Step:</strong> Ready to see the syntax? Head over to the <a href="/doc/metadata.html" style="color: #58a6ff;">Metadata Reference</a>.</p>
</div>
end
