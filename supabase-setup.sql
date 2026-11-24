-- Supabase > SQL Editor me poora paste karke Run karo

create table if not exists public.items (
  id uuid primary key default gen_random_uuid(),
  kind text not null check (kind in ('photo','song','cover')),
  name text,
  path text not null,
  url text not null,
  created_at timestamptz not null default now()
);

alter table public.items enable row level security;

grant usage on schema public to anon, authenticated;
grant select on public.items to anon, authenticated;
grant insert, delete on public.items to authenticated;

create policy "public read"  on public.items for select using (true);
create policy "admin insert" on public.items for insert to authenticated with check (true);
create policy "admin delete" on public.items for delete to authenticated using (true);

insert into storage.buckets (id, name, public) values ('album','album',true)
on conflict (id) do nothing;

create policy "album read"   on storage.objects for select using (bucket_id = 'album');
create policy "album insert" on storage.objects for insert to authenticated with check (bucket_id = 'album');
create policy "album delete" on storage.objects for delete to authenticated using (bucket_id = 'album');
