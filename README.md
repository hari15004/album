# Memory Album (Supabase version)

Files: `index.html` (page), `config.js` (keys), `supabase-setup.sql` (database)

## Setup (lagbhag 10 min)
1. supabase.com pe free account -> **New project**.
2. **SQL Editor** -> `supabase-setup.sql` ka content paste -> **Run**.
3. **Authentication > Users > Add user** -> apna email + password, "Auto confirm" on.
4. **Authentication > Sign In / Providers > Email** -> **"Allow new users to sign up" OFF** karo (zaroori, warna koi bhi login karke upload kar sakta hai).
5. **Project Settings > API** -> `Project URL` aur `anon public` key `config.js` me paste karo.
   (service_role key kabhi mat daalna / share karna.)
6. `index.html` browser me kholke test karo.
7. Deploy: netlify.com/drop pe poora folder drag-drop -> link milega -> us link ka QR banao aur frame pe lagao.

## Use
- Page ke sabse neeche **Admin** -> login -> neeche **+** (Photos / Music / Cover) aur **Edit** (delete) dikhenge.
- Baaki sabko sirf album aur player dikhega.
- Photos upload se pehle auto compress hoti hain. Gaane jaise hain waise upload hote hain (free plan: 50 MB per file, 1 GB total).
