-- Create grants table for storing EU funds data
CREATE TABLE grants (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  title TEXT NOT NULL,
  dates TEXT,
  for_who TEXT,
  program TEXT,
  description TEXT,
  category TEXT,
  funding_amount TEXT,
  url TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Add indexes for common search fields
CREATE INDEX idx_grants_title ON grants (title);
CREATE INDEX idx_grants_category ON grants (category);
CREATE INDEX idx_grants_program ON grants (program);