require "http/server"
require "ecr/macros"

listen_addr = "0.0.0.0"
port = 3001

server = HTTP::Server.new(listen_addr, port) do |context|
  context.response.content_type = "application/json"
  case context.request.path

  when "/system/metrics/org.graylog2.buffers.process.usage"
    ECR.embed "responses/org.graylog2.buffers.process.usage.ecr", context.response.output

  when "/system/buffers"
    ECR.embed "responses/system.buffers.ecr", context.response.output

  when "/system/journal"
    ECR.embed "responses/system.journal.ecr", context.response.output

  else
    context.response.print "{ not_found: \"#{context.request.path}\" }"
  end

  puts "#{context.request.method} - #{context.request.path}"
end

puts "Listening on http://#{listen_addr}:#{port}"
server.listen

# vi: set ft=ruby :
