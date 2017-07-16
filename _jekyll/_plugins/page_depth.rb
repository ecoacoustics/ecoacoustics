
# documents are collections, and collections include also posts
Jekyll::Hooks.register [:site], :pre_render do |meta, payload|

    #puts meta.pages.inspect
    #puts meta.documents.inspect

    meta.pages.each { |p| fragment(p) }
    meta.documents.each { |p| fragment(p) }
    
end

def fragment(obj) 
    #puts "Processing #{obj.inspect}"
    fragments = obj.url.split("/")

    #last = fragments[-1]
    #last = File.basename(last,File.extname(last))
    #fragments[-1] = last

    fragments = fragments.reject{ |x| x.empty? }

    obj.data ||= {}

    obj.data['fragments'] = fragments

    obj.data['depth'] = fragments.length
end