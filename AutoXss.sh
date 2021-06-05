#! /bin/bash

# This Tool allows for automatically find XSS vulnerabilities in a given domain.
# It takes a domain as an argument and uses tools to find XSS vulnerabilities.
# You will need these tools installed to make this script work

# waybackurls - https://github.com/tomnomnom/waybackurls
# kxss - https://github.com/Emoe/kxss
# dalfox - https://github.com/hahwul/dalfox


touch $1_url.tmp

waybackurls $1 > $1_url.tmp
cat $1_url.tmp | kxss > $1_filtered_urls.tmp
cat $1_filtered_urls.tmp | sed 's/=.*/= /' | sed 's/URL: //' > $1_xss_urls.tmp
cat $1_xss_urls.tmp | dalfox pipe

rm $1_url.tmp; rm $1_filtered_urls.tmp; rm $1_xss_urls.tmp



