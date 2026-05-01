html as document do
<!DOCTYPE html>
<html lang="@lang">
@html[doc_head]
@html[doc_body]
</html>
end

html as doc_head do
<head>
    @html[meta]
    @html[doc_style]
</head>
end

html as doc_body do
<body>
    @view
    @html[footer]

    @html[scripts]
</body>
end
