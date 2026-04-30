import { defineConfig } from 'vite';
import { viteStaticCopy } from 'vite-plugin-static-copy';

export default defineConfig({
  root: 'vite_dev',
  build: {
    outDir: '../dist',
    emptyOutDir: true,
  },
  plugins: [
    {
      name: 'watch-mustela',
      configureServer(server) {
        // server.watcher.add('./vite_dev/*.html');
        server.watcher.add('./vite_dev/**/*.{html,xml,json}');
        server.watcher.on('change', () => {
          server.ws.send({ type: 'full-reload', path: '*' });
        });
      }
    },
    viteStaticCopy({
      targets: [
        {
          src: ['sitemap.xml', 'feed.xml', 'articles.json'],
          dest: './'
        }
      ]
    })
  ]
});
