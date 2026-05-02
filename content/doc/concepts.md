meta do
  title:  Core Concepts & Architecture
  index:  document
  doc_section: "Architecture"
  description: Explore Mustela's high-speed data pipeline architecture. Learn how zero-copy principles and multi-threaded I/O build 5,000 pages in under 528ms.
  keywords: static site generator, high-performance SSG, zero-copy architecture, multi-threaded pipeline, markdown parser, Mustela engine
end

# 🧠 Core Concepts & Architecture

Mustela isn't just a static site generator. It’s a **high-speed data pipeline**.

While traditional generators behave like obstacle courses — where data is constantly cloned, transformed, and cleaned up by a garbage collector — Mustela is designed as a **frictionless slide**. Once data enters the system, it moves toward the output with zero redundant movement.

## 1. The Three-Phase Pipeline

To achieve maximum throughput, Mustela splits the build process into three distinct, highly optimized stages:

### Phase 1: Parallel Ingest (Disk ➔ RAM)

We don't read files one by one. Mustela uses multi-threading to saturate your hardware's I/O bandwidth, pulling all source content into RAM simultaneously.
* **The Goal:** Eliminate I/O wait times completely.
* **The Result:** Your entire project becomes a single, unified data object living on the **Heap**.

### Phase 2: Synchronous Event-Bus Core

Once the data is in memory, a single-core event bus takes over for the actual processing.
* **Why single-core?** It provides absolute deterministic control. 
* **Zero Overhead:** By running the core logic on one thread, we eliminate the need for **mutexes** (thread-locking) and the risk of race conditions, making the engine "lock-free" and incredibly lean.

### Phase 3: Parallel Flush (RAM ➔ Disk)

As the HTML is rendered, it’s handed off to a parallelized worker pool. We 'fire' the data back to disk using 32 concurrent threads—a limit that ensures maximum write stability and saturates SSD bandwidth without overwhelming the operating system's I/O scheduler.

## 2. The Zero-Copy Principle

Mustela’s speed comes from a simple rule: **Don't touch the data unless you have to.** 

Most engines copy strings from one function to another. Mustela strictly uses **Pointer Passing**. Once your Markdown is in memory, we pass only its address (pointer). This drastically reduces CPU cycles and energy consumption, as the system never has to allocate memory for the same data twice.

## 3. Stateful DSL & Memory Recycling

Every time a generator processes a new file, it usually creates a new "environment." Mustela doesn't. We use **State Recycling**:

* The **DSL engine (Lexer/Parser)** is allocated once on the heap.
* Between files, we simply **reset its internal state** instead of destroying and recreating it.
* By reusing "warm" memory, we bypass the heavy cost of constant allocation.

## 4. Performance: The 5,000 Page Challenge

Mustela isn't just fast; it's engineered for extreme throughput.

### Test Environment:

- **CPU:** Intel(R) Core(TM) i5-8365U @ 1.60GHz (4 cores / 8 threads)
- **OS:** ChromeOS Flex (Linux Container)
- **Storage:** SSD

### Benchmark Results (Real-world content):

html do
<div class="table-wrapper">
    <table class="meta-table">
        <thead>
            <tr>
                <th>Metric</th>
                <th>Result</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>Files Processed</strong></td>
                <td>5,000 Markdown files</td>
            </tr>
            <tr>
                <td><strong>Total Build Time</strong></td>
                <td><strong>528 ms</strong> (0.5 seconds)</td>
            </tr>
            <tr>
                <td><strong>Throughput</strong></td>
                <td>~9,470 pages / second</td>
            </tr>
            <tr>
                <td><strong>Peak RAM Usage</strong></td>
                <td><strong>34.6 MB</strong></td>
            </tr>
            <tr>
                <td><strong>CPU Efficiency</strong></td>
                <td>131% (Multi-threaded I/O)</td>
            </tr>
        </tbody>
    </table>
</div>
end

html do
<div style="border-left: 4px solid #58a6ff; padding: 1rem 1.5rem; background: #161b22; margin: 2rem 0;">
  <p style="margin: 0; color: #f5f5f5;"><strong>Note:</strong> Building 5,000 pages in half a second means your site is ready before your monitor can even finish its next refresh cycle.</p>
</div>
end

### 4.1 Real-world Build Output:

```txt
--------------------------------------
  Mustela Build Finished
  Files:   5000
  Time:    528 ms (528633 µs)
--------------------------------------
        Command being timed: "mustela build"
        User time (seconds): 0.16
        System time (seconds): 0.54
        Percent of CPU this job got: 131%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.53
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 35456
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 9437
        Voluntary context switches: 15515
        Involuntary context switches: 393
        Swaps: 0
        File system inputs: 0
        File system outputs: 0
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
```

## 5. Visualizing the Flow

![**Mustela's Zero-Copy Architecture:** A high-throughput workflow showing the transition from parallel I/O ingest to a synchronous, state-recycled core, all operating on a zero-copy heap memory model.](/images/data_flow_visualization.jpg)

---

html do
<div style="border-left: 4px solid @mustela_orange; padding: 1rem 1.5rem; background: #161b22; margin: 2rem 0;">
  <p style="margin: 0; color: #f5f5f5;"><strong>Next Step:</strong> Ready to see the syntax? Head over to the <a href="/doc/metadata.html" style="color: #58a6ff;">Configuration & Metadata Reference</a>.</p>
</div>
end
