import { defineConfig } from 'vite';
import { viteStaticCopy } from 'vite-plugin-static-copy';
import { resolve } from 'path';
import { readdirSync } from 'fs';

const getHtmlEntries = () => {
  const root = resolve(__dirname, 'vite_dev');
  try {
    const files = readdirSync(root);
    const entries = {};
    files.forEach(file => {
      if (file.endsWith('.html')) {
        const name = file.replace('.html', '');
        entries[name] = resolve(root, file);
      }
    });
    return entries;
  } catch (e) {
    return {};
  }
};

export default defineConfig({
  root: 'vite_dev',
  build: {
    outDir: '../dist',
    emptyOutDir: true,
    rollupOptions: {
      input: getHtmlEntries()
    }
  },
  server: {
    watch: {
      ignored: ['**/vite_dev/**/*.html']
    }
  },
  plugins: [
    {
      name: 'watch-mustela',
      configureServer(server) {
        server.watcher.add('./vite_dev/**/*.{html,xml,json}');
        
        let timer;
        server.watcher.on('change', () => {
          clearTimeout(timer);
          timer = setTimeout(() => {
            server.ws.send({ type: 'full-reload', path: '*' });
          }, 100); 
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
    }),
  ]
});
