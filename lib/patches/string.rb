class String

  def to_en
    @@bing ||= BingTranslator.new
    @@bing.translate(self, :to => :en, :from => @@bing.detect(self))
  end

  def to_zh(trad = true)
    @@bing ||= BingTranslator.new
    if trad
      @@bing.translate(self, :to => :"zh-CHT", :from => @@bing.detect(self))
    else
      @@bing.translate(self, :to => :"zh-CHS", :from => @@bing.detect(self))
    end
  end
end