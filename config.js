/* ============================================================
   Realistic Mart: keys file.  Fill the 3 values below.
   ONLY PUBLIC keys go here. This file is visible to everyone.
   NEVER put: Razorpay Key Secret, Supabase service_role key.
   Everything else (products, colours, coupons, links...) is
   controlled from admin.html.
   ============================================================ */
window.RM_CONFIG = {
  supabaseUrl:     "https://wrzsskunlzayrhzkgfnp.supabase.co",   // e.g. https://abcdxyz.supabase.co
  supabaseAnonKey: "sb_publishable_PGT1BRIBAQR8bSPOcoCghg_tK2Vw7-b",   // Supabase > Project Settings > API > "anon public"
  razorpayKeyId:   "rzp_test_TusCjAN4XOJTkH"    // rzp_test_xxxxx or rzp_live_xxxxx (Key ID only)
};
