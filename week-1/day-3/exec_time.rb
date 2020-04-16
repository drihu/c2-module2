def exec_time(proc)
  start = Time.now
  proc.call
  finish = Time.now
  finish - start
end
