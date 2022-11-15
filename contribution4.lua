function Image(img)
    if img.classes:find('contribution4',1) then
      local f = io.open("book/" .. img.src, 'r')
      local doc = pandoc.read(f:read('*a'))
      f:close()
      local caption = pandoc.utils.stringify(doc.meta.caption) 
      local author = pandoc.utils.stringify(doc.meta.author)
      local id = pandoc.utils.stringify(doc.meta.id) 
      
      local content = ">  _" .. caption .. "_ /n>" .. "Ονοματεπωνυμο Φοιτητη:" .. author .. "Αριθμος Μητρωου:" .. id
      return pandoc.RawInline('markdown',content)
    end
end
