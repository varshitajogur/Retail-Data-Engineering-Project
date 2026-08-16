import time
from pyspark.sql import SparkSession

spark = SparkSession.builder.appName("RetailBenchmark").getOrCreate()

base = "../Datasets/"
start = time.perf_counter()

customers = spark.read.option("header", True).option("inferSchema", True).csv(base+"customers.csv")
orders = spark.read.option("header", True).option("inferSchema", True).csv(base+"orders_new.csv")
items = spark.read.option("header", True).option("inferSchema", True).csv(base+"order_items.csv")

rows_in = customers.count() + orders.count() + items.count()

# Materialise a simple join workload.
result = orders.join(customers.select("customer_id"), "customer_id", "left")
rows_out = result.count()

runtime = time.perf_counter() - start
print("input_rows=", rows_in)
print("output_rows=", rows_out)
print("runtime_seconds=", round(runtime, 4))
print("throughput_rows_per_second=", round(rows_out/runtime, 2) if runtime else None)
