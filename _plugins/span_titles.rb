module Jekyll
  module SpanTitleFilter
    def span_titles(input)
      # 使用 [^>]* 确保只匹配当前标签内的属性
      # 使用 .*? 并配合非贪婪匹配，确保只在 <h2> 内部添加 span
      input.gsub(/<h2([^>]*)>(.*?)<\/h2>/m, '<h2\1><span>\2</span></h2>')
    end
  end
end

Liquid::Template.register_filter(Jekyll::SpanTitleFilter)