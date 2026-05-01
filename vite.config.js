import { defineConfig } from 'vite';
import { viteStaticCopy } from 'vite-plugin-static-copy';
import { resolve } from 'path';
import { readdirSync } from 'fs';

const getHtmlEntries = () => {
  const root = resolve(__dirname, 'vite_dev');
  const entries = {};

  const readDir = (dir, prefix = '') => {
    const files = readdirSync(dir, { withFileTypes: true });
    files.forEach(file => {
      if (file.isDirectory()) {
        readDir(resolve(dir, file.name), `${prefix}${file.name}/`);
      } else if (file.name.endsWith('.html')) {
        const name = `${prefix}${file.name.replace('.html', '')}`;
        const entryKey = name.replace(/\/index$/, '') || 'main';
        entries[entryKey] = resolve(dir, file.name);
      }
    });
  };

  try {
    readDir(root);
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
