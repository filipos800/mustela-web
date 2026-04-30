meta do
  title:     Hub
  title_web: Mustela
  index: main
end

html as main do
<!DOCTYPE html>
<html lang="@lang">
@html[head]
@html[body]
</html>
end

html as head do
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@title | @title_web</title>

    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">

    @html[style]
</head>
end

html as body do
<body>
    <div class="app">
        <main>
            @view
        </main>
    </div>

    <script type="module" src="/src/js/main.js"></script>
</body>
end
