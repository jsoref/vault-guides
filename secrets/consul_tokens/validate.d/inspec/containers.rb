containers = %w(
  vault0
  consul0
  consul-client0
)

# Check on existence of containers
containers.each do |container_name|
  describe docker_container(container_name) do
    it { should exist }
    it { should be_running }
  end
end
