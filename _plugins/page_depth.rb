
# documents are collections, and collections include also posts
Jekyll::Hooks.register [:pages, :documents, :posts], :pre_render do |meta, payload|

    fragments = meta.relative_path.split("/")

    meta.data ||= {}

    meta.data['fragments'] = fragments

    # there's always an extra slash
    meta.data['depth'] = fragments.length - 1
end