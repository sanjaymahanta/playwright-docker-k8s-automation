import { test, expect } from '@playwright/test';

test('Basic Docker Test - Headless Mode', async ({ page }) => {
  // 1. Ek simple, light-weight website par jao
  await page.goto('https://example.com');

  // 2. Page ka title verify karo
  await expect(page).toHaveTitle(/Example Domain/);
  
  // 3. Success message print karo taaki terminal mein dikhe
  console.log("🚀 Test Successfully Passed inside Docker Container!");
});