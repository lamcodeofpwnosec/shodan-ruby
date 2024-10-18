require_relative '../lib/shodan_client'
require_relative '../lib/subdomain_scanner'
require_relative '../config/config'

# Inisialisasi Shodan Client dengan API Key
shodan_client = ShodanClient.new(SHODAN_API_KEY)
scanner = SubdomainScanner.new(shodan_client)

# Masukkan domain yang ingin di-scan
domain = 'example.com' # Ganti dengan domain target

# Jalankan scan subdomain
subdomains = scanner.scan_subdomains(domain)

# Tampilkan hasil pemindaian subdomain
puts "Hasil Pemindaian Subdomain untuk #{domain}:"
subdomains.each do |subdomain|
  puts "IP: #{subdomain[:ip]}, Hostname: #{subdomain[:hostnames].join(', ')}"
end
