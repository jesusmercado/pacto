module Contracts
  class FilePreProcessor
    def process(file_string)
      erb = ERB.new file_string
      erb_result = erb.result binding
      if ENV["DEBUG_CONTRACTS"]
        puts "[DEBUG] Processed contract: #{erb_result.inspect}"
      end
      erb_result
    end
  end
end