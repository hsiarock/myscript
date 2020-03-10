

#curl -i \
#-H "Accept: application/json" \
#-H "Content-Type:application/json" \
#-X POST --data "$(generate_post_data)" "https://xxx:xxxxx@xxxx-www.xxxxx.com/xxxxx/xxxx/xxxx"

curl -i -H "Content-Type:application/json" -X POST "http://localhost:9092/employees/101/Harry/Potter"