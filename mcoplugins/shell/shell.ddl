metadata :name        => "Shell Command",
         :description => "Remote execution of bash commands",
         :author      => "R.I.Pienaar",
         :license     => "ASL 2.0",
         :version     => "3.1.2",
         :url         => "http://projects.puppetlabs.com/projects/mcollective-plugins/wiki",
         :timeout     => 300

["execute"].each do |act|
  action act, :description => "#{act.capitalize} a command" do
    display :always

    input :cmd,
          :prompt      => "Command",
          :description => "The name of the command to #{act}",
          :type        => :string,
          :validation  => '^.+$',
          :optional    => false,
          :maxlength   => 300
    input :operate,
          :prompt      => "*Operate",
          :description => "Do a Shell run",
          :type        => :string,
          :validation  => 'true',
          :optional    => false,
          :maxlength   => 10

    output :output,
           :description => "Command Output",
           :display_as  => "Output"

    output :error,
           :description => "Command Error",
           :display_as  => "Error"

    output :exitcode,
           :description => "Exit code of the shell process",
           :display_as  => "Exit Code"
    output :stdout,
           :description => "Exit code of the shell process",
           :display_as  => "Stdout"
  end
end
