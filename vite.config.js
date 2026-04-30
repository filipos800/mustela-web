import { defineConfig } from 'vite';

export default defineConfig({
  root: 'vite_dev',
  build: {
    outDir: '../dist'
  },
  plugins: [
    {
      name: 'watch-mustela',
      configureServer(server) {
        server.watcher.add('./vite_dev/*.html');
        server.watcher.on('change', () => {
          server.ws.send({ type: 'full-reload', path: '*' });
        });
      }
    }
  ]
});
