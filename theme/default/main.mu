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

    <!-- Fonty pro moderní vzhled -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;800&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet">

    @html[style]
</head>
end

html as body do
<body>
    @html[header]
    @html[hub]
    @html[footer]

    <script type="module" src="/src/js/main.js"></script>
</body>
end
