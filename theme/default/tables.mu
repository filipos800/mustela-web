html as benchmark_table do
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

html as table_config_variables do
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

html as table_config_variable_generators do
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

html as table_immutable_constants do
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

html as table_date_format do
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

html as table_markdown_features do
<div class="table-wrapper">
    <table class="meta-table">
        <thead>
            <tr>
                <th>Feature</th>
                <th>Support</th>
                <th>Technical Note</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>Headers</strong></td>
                <td><code>#</code> to <code>######</code></td>
                <td>Supports nested formatting (e.g. <code># **Bold** Title</code>).</td>
            </tr>
            <tr>
                <td><strong>Emphasis</strong></td>
                <td><code>*</code> and <code>**</code></td>
                <td>Fully nestable: <code>***Bold & Italic***</code> works as expected.</td>
            </tr>
            <tr>
                <td><strong>Blockquotes</strong></td>
                <td><code>&gt;</code></td>
                <td>Supports all other inline Markdown features inside.</td>
            </tr>
            <tr>
                <td><strong>Code Spans</strong></td>
                <td><code>`inline`</code></td>
                <td>Preserves backticks and raw characters.</td>
            </tr>
            <tr>
                <td><strong>Code Blocks</strong></td>
                <td><code>```</code></td>
                <td>Standard fenced blocks for code snippets.</td>
            </tr>
            <tr>
                <td><strong>Links</strong></td>
                <td><code>[text](url)</code></td>
                <td>Supports titles and internal project links.</td>
            </tr>
            <tr>
                <td><strong>Images</strong></td>
                <td><code>![alt](url)</code></td>
                <td>Renders as standard <code>&lt;img&gt;</code> tags.</td>
            </tr>
            <tr>
                <td><strong>Rules</strong></td>
                <td><code>---</code></td>
                <td>Generates a clean <code>&lt;hr&gt;</code> separator.</td>
            </tr>
            <tr>
                <td><strong>Lists</strong></td>
                <td><code>*</code> or <code>1.</code></td>
                <td>Bullet and numbered lists. <strong>Nested lists are not supported</strong> (they will break the group).</td>
            </tr>
        </tbody>
    </table>
</div>
end

html as table_markdown_optimization do
<div class="table-wrapper">
    <table class="meta-table">
        <thead>
            <tr>
                <th>Feature</th>
                <th>Status</th>
                <th>Recommendation</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>Nested Lists</strong></td>
                <td style="color: #ff7b72;">❌ Unsupported</td>
                <td>Keep your structures flat for better readability and 9,000+ p/s throughput.</td>
            </tr>
            <tr>
                <td><strong>Markdown Tables</strong></td>
                <td style="color: #ff7b72;">❌ Unsupported</td>
                <td>Use <code>html do</code> blocks. They are more flexible, accessible, and easier to style.</td>
            </tr>
            <tr>
                <td><strong>Footnotes</strong></td>
                <td style="color: #ff7b72;">❌ Unsupported</td>
                <td>Use inline links or a dedicated "References" section at the bottom of your document.</td>
            </tr>
            <tr>
                <td><strong>Task Lists</strong></td>
                <td style="color: #ff7b72;">❌ Unsupported</td>
                <td>Use standard bullet points or <code>html do</code> for custom interactive checklists.</td>
            </tr>
        </tbody>
    </table>
</div>
end