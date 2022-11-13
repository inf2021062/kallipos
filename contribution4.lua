function Image(img)
    if img.classes:find('contribution4',1) then
      local f = io.open("contribution4/" .. img.src, 'r')
      local doc = pandoc.read(f:read('*a'))
      f:close()
      local contribution = pandoc.utils.stringify(doc.meta.contribution) or "Epigraph has not been set"
      local student = pandoc.utils.stringify(doc.meta.student) or "Student has not been set"
      local id = pandoc.utils.stringify(doc.meta.id) or "Student ID has not been set"
      local credentials = " Student: " .. student .. " (" .. id .. ")"
      local text = "\n\n _" .. contribution4 .. "_ \n\n"
      return pandoc.RawInline('markdown',text .. credentials)
    end
end
