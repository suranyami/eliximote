defmodule Color do
  def random_hex do
  end

  defp random_digit do
    :random.uniform(16)
    |> Hex.encode
  end
end
