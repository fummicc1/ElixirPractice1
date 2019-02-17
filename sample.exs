defmodule Sample do
    import Supervisor.Spec

    def hello(person) do
        IO.puts "Hello, #{person}. My pid is #{inspect self()}."
        receive do
            message ->
            IO.puts "Message is #{message}."
            hello(person) # メッセージを受信して、処理が完了したら自分自身を呼び出す。
        end
    end

end