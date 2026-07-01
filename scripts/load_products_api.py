import json
import requests

url = "https://fakestoreapi.com/products"

response = requests.get(url)

products = response.json()

print("Status Code:", response.status_code)
print("Number of products:", len(products))

# Save API response locally
with open("../datasets/products_api.json", "w", encoding="utf-8") as f:
    for product in products:
        f.write(json.dumps(product))
        f.write("\n")

print("products_api.json NDJSON created successfully!")