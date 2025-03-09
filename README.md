# EU Funds Scraper Database Setup

This repository contains the database setup for the EU Funds Scraper project.

## Supabase Table Setup

Follow these steps to create the required table in your Supabase project:

1. Log in to your [Supabase dashboard](https://app.supabase.io/)
2. Select your project
3. Go to the SQL Editor
4. Create a new query
5. Copy and paste the contents of the `create_grants_table.sql` file
6. Run the query

## Table Structure

The `grants` table has the following columns:

| Column | Type | Description |
|--------|------|-------------|
| `id` | UUID | Primary key, automatically generated |
| `title` | TEXT | Title of the grant |
| `dates` | TEXT | Relevant dates for the grant |
| `for_who` | TEXT | Target recipients of the grant |
| `program` | TEXT | Program name |
| `description` | TEXT | Detailed description |
| `category` | TEXT | Category of the grant |
| `funding_amount` | TEXT | Amount of funding available |
| `url` | TEXT | URL to the grant details |
| `created_at` | TIMESTAMP WITH TIME ZONE | Record creation timestamp |

## Indexes

The following indexes are created to improve query performance:

- `idx_grants_title` on the `title` column
- `idx_grants_category` on the `category` column
- `idx_grants_program` on the `program` column