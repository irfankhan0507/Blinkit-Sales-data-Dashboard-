import pandas as pd

# Load the dataset
df = pd.read_excel("BlinkIT Grocery Data.xlsx")

# Clean column names
df.columns = df.columns.str.strip().str.replace(" ", "_").str.lower()

# Create calculated fields
df['total_sales'] = df['sales']
df['gross_margin'] = df['sales'] * 0.20
df['net_sales'] = df['total_sales'] - df['gross_margin']

# Drop rows with null values
df.dropna(inplace=True)

# Save to CSV
df.to_csv("Cleaned_BlinkIT_Data.csv", index=False)

print("✅ Cleaned file saved successfully!")
