defmodule Eliximote.I18n do
  use Linguist.Vocabulary

  locale "en", Path.join([__DIR__, "../config/locales/en.exs"])
end
