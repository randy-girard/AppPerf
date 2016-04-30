class TransactionsController < ApplicationController

  def index
    @transactions = @application
      .transactions
      .select("transactions.*, AVG(transaction_metrics.duration) AS average_duration")
      .joins(:transaction_metrics)
      .group("transactions.id")
      .order("AVG(transaction_metrics.duration) DESC")
  end

end