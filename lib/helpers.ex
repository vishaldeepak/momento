defmodule Momento.Helpers do
  @moduledoc """
  This module holds all the various herlper methods, `floor/1`, `millisecond_factor/1` and `microsecond_factor/1`.
  """

  @doc """
  Helper to get the floor of a `float` in the form of an `integer`.

  ## Examples

      iex> Momento.Helpers.floor(5.22)
      5
  """
  @spec floor(float) :: integer
  def floor(float), do: Float.floor(float) |> round

  @doc """
  Helper to get the factor needed to get milliseconds from a given precision.

  ## Examples

      iex> Momento.Helpers.millisecond_factor(6)
      1000
  """
  @spec millisecond_factor(integer) :: integer
  def millisecond_factor(precision), do: :math.pow(10, precision - 3) |> round

  @doc """
  Helper to get the factor needed to get microseconds from a given precision.

  ## Examples

      iex> Momento.Helpers.microsecond_factor(6)
      1000000
  """
  @spec microsecond_factor(integer) :: integer
  def microsecond_factor(precision), do: :math.pow(10, precision) |> round
end
