defmodule Tunedmodel.MixProject do
  use Mix.Project

  def project do
    [
      app: :tunedmodel,
      version: "0.1.0",
      elixir: "~> 1.19",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "Tunedmodel",
      source_url: "https://github.com/tunedmodel/tunedmodel"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Opinionated, end-to-end framework for shipping fine-tuned language models."
  end

  defp package do
    [
      licenses: ["MIT"],
      files: ~w(lib mix.exs README.md LICENSE),
      links: %{
        "GitHub" => "https://github.com/tunedmodel/tunedmodel"
      }
    ]
  end
end
