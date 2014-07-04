module EntriesHelper
  def sentence_count(text)
    tokenizer = Punkt::SentenceTokenizer.new(text)
    result    = tokenizer.sentences_from_text(text, :output => :sentences_text)
    result.reject { |s| s.length <= 1 }.size
  end

  def entry_date(e)
    e.created_at.strftime("%A, %B %e %Y")
  end
end
