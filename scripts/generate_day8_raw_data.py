import csv
import json
import random
from datetime import date, timedelta
from pathlib import Path

output_dir = Path("datasets")
output_dir.mkdir(exist_ok=True)

random.seed(42)

categories = [
    "Dairy",
    "Bakery",
    "Beverages",
    "Snacks",
    "Frozen",
    "Household",
    "Health",
    "Pantry"
]

products = []

for i in range(1, 101):
    product_id = f"P{i:03d}"
    category = random.choice(categories)

    product = {
        "product_id": product_id,
        "product_name": f"{category} Product {i}",
        "category": category,
        "unit_price": round(random.uniform(2.00, 150.00), 2)
    }

    products.append(product)

with open(output_dir / "products_api.ndjson", "w", encoding="utf-8") as file:
    for product in products:
        file.write(json.dumps(product) + "\n")

promotions = []
start_base = date(2026, 1, 1)

for i in range(1, 51):
    product = random.choice(products)
    start_date = start_base + timedelta(days=random.randint(0, 60))
    end_date = start_date + timedelta(days=random.randint(3, 14))

    promotion = {
        "promo_id": f"PR{i:03d}",
        "product_id": product["product_id"],
        "discount_percentage": random.choice([5, 10, 15, 20, 25, 30]),
        "start_date": start_date.isoformat(),
        "end_date": end_date.isoformat()
    }

    promotions.append(promotion)

with open(output_dir / "promotions.ndjson", "w", encoding="utf-8") as file:
    for promotion in promotions:
        file.write(json.dumps(promotion) + "\n")

customers = [f"C{i:04d}" for i in range(1, 301)]

sales_rows = []

for i in range(1, 1001):
    product = random.choice(products)
    sale_date = start_base + timedelta(days=random.randint(0, 90))
    quantity = random.randint(1, 5)
    sales_amount = round(quantity * product["unit_price"], 2)

    sales_rows.append({
        "sale_id": f"S{i:05d}",
        "customer_id": random.choice(customers),
        "product_id": product["product_id"],
        "sale_date": sale_date.isoformat(),
        "quantity": quantity,
        "sales_amount": sales_amount
    })

with open(output_dir / "sales.csv", "w", newline="", encoding="utf-8") as file:
    writer = csv.DictWriter(
        file,
        fieldnames=[
            "sale_id",
            "customer_id",
            "product_id",
            "sale_date",
            "quantity",
            "sales_amount"
        ]
    )

    writer.writeheader()
    writer.writerows(sales_rows)

print("Raw data files generated successfully.")
print("Created:")
print("- datasets/sales.csv with 1000 rows")
print("- datasets/promotions.ndjson with 50 records")
print("- datasets/products_api.ndjson with 100 records")