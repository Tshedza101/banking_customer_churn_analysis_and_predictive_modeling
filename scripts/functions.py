import matplotlib.pyplot as plt
import seaborn as sns

# functions: categories sanity check
def categorical_sanity_check(df, column, valid_values):
    invalid = df[~df[column].isin(valid_values)]
    return invalid[column].value_counts()
#============================================================================

# data type checking
def validate_dtypes(df, expected_dtypes: dict):
    mismatches = {}
    for col, dtype in expected_dtypes.items():
        if col in df.columns and df[col].dtype != dtype:
            mismatches[col] = (df[col].dtype, dtype)
    return mismatches

#============================================================================

# Null Values Checker
def missing_value_report(df):
    return (
        df.isnull()
          .sum()
          .to_frame("missing_count")
          .assign(missing_pct=lambda x: x.missing_count / len(df))
          .query("missing_count > 0")
    )

#============================================================================

# Outlier Detection and Distribution
def plot_distribution(df, col):
    sns.histplot(df[col], kde=True)
    plt.title(f"Distribution of {col}")
    plt.show()

def plot_boxplot(df, col):
    sns.boxplot(x=df[col])
    plt.title(f"Outliers in {col}")
    plt.show()
