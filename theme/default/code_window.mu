html as code_window do
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

.code-window pre {
    padding: 1.5rem;
    overflow-x: auto;
    font-family: var(--mono-font);
    font-size: 0.9rem;
}
end