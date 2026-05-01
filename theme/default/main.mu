meta do
  title:     Hub
  title_web: Mustela
  index:     main
  version:   v1.0.0-stable
end

html as main do
<!DOCTYPE html>
<html lang="@lang">
@html[main_head]
@html[main_body]
</html>
end

html as main_head do
<head>
    @html[meta]
    @html[main_style]
</head>
end

html as main_body do
<body>
    @html[header]
    @html[hub]
    @html[footer]

    @html[scripts]
</body>
end

html as scripts do
<script type="module" src="/src/js/main.js"></script>
end

html as meta do
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
end
