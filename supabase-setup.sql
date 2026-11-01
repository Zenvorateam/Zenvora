-- Run once: Supabase dashboard > SQL Editor > New query > paste > Run
create table if not exists site_settings (
  id text primary key,
  data jsonb not null,
  updated_at timestamptz default now()
);
create table if not exists orders (
  id text primary key,
  data jsonb not null,
  created_at timestamptz default now()
);
alter table site_settings enable row level security;
alter table orders enable row level security;

-- everyone can READ the store settings
create policy "settings public read" on site_settings for select using (true);
-- only the logged-in admin can WRITE settings
create policy "settings admin write" on site_settings for all to authenticated using (true) with check (true);
-- customers can PLACE orders, only the admin can read/update them
create policy "orders insert" on orders for insert with check (true);
create policy "orders admin read" on orders for select to authenticated using (true);
create policy "orders admin update" on orders for update to authenticated using (true);

-- AFTER running this:
-- 1) Authentication > Users > Add user  (your admin email + password)
-- 2) Authentication > Sign In / Providers > turn OFF "Allow new users to sign up"
