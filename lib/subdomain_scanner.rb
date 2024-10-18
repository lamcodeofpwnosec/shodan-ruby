class SubdomainScanner
  def initialize(shodan_client)
    @shodan_client = shodan_client
  end

  # Fungsi untuk melakukan pemindaian subdomain berdasarkan domain
  def scan_subdomains(domain)
    query = "hostname:#{domain}"
    results = @shodan_client.search(query)

    if results['matches']
      subdomains = results['matches'].map do |match|
        {
          ip: match['ip_str'],
          hostnames: match['hostnames']
        }
      end
      return subdomains
    else
      return []
    end
  end
end
