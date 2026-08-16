import pandas as pd
from pathlib import Path

BASE = Path("Datasets")

def test_customer_key_is_unique():
    df = pd.read_csv(BASE / "customers.csv")
    assert df["customer_id"].is_unique

def test_order_key_is_unique():
    df = pd.read_csv(BASE / "orders_new.csv")
    assert df["order_id"].is_unique

def test_order_customer_ids_are_present():
    customers = pd.read_csv(BASE / "customers.csv", usecols=["customer_id"])
    orders = pd.read_csv(BASE / "orders_new.csv", usecols=["customer_id"])
    valid = set(customers["customer_id"].dropna())
    assert orders["customer_id"].dropna().isin(valid).all()

def test_order_dates_parse():
    df = pd.read_csv(BASE / "orders_new.csv", usecols=["order_date"])
    parsed = pd.to_datetime(df["order_date"], errors="coerce")
    assert parsed.notna().all()
