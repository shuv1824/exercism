defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna_to_rna_map = %{
      "G" => "C",
      "C" => "G",
      "T" => "A",
      "A" => "U"
    }

    dna
    |> to_string
    |> String.graphemes
    |> Enum.map(fn(ch) -> dna_to_rna_map[ch] end)
    |> Enum.join("")
    |> to_charlist
  end
end
