module MCollective
 module Agent
  class Shell<RPC::Agent

    metadata    :name        => "Shell Command",
                :description => "Remote execution of bash commands",
                :author      => "R.I.Pienaar",
                :license     => "ASL 2.0",
                :version     => "3.1.2",
                :url         => "http://projects.puppetlabs.com/projects/mcollective-plugins/wiki",
                :timeout     => 300

    action "execute" do
        validate :cmd, String

        out = []
        err = ""

        begin
          status = run("#{request[:cmd]}", :stdout => out, :stderr => err, :chomp => true)
        rescue Exception => e
          reply.fail e.to_s
        end

        reply[:exitcode] = status
        reply[:output] = out.join(" ")
        reply[:stderr] = err
        reply.fail err if status != 0
    end

  end
 end
end
