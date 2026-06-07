import { test } from '@playwright/test';

test('Hover Demo', async ({ page }) => {

    await page.goto('https://testautomationpractice.blogspot.com/');

    const pointMe = page.locator('.dropbtn');

    await pointMe.hover();
   
 await page.locator('a:has-text("Mobiles")').click();
 const copyBtn = page.locator('button:has-text("Copy Text")');
await copyBtn.dblclick();



    await page.waitForTimeout(5000);

});