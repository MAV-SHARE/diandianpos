# diandianpos official website

Two dependency-free, responsive static pages for the diandianpos iPad POS app:

- `dist/index.html`: official product website and support contact.
- `dist/privacy/index.html`: Traditional Chinese and English privacy policy.

Contact: mavdegreemavdegree@gmail.com

Serve `dist/` as the website root. All asset and navigation links are relative so the same pages can be hosted under a subdirectory. No external fonts, analytics, scripts or marketing cookies are included.

Privacy wording reviewed against the local ipos365 app at commit e43fc6e7 on 2026-09-19. Update the policy whenever data handling changes. The visual order example on the homepage is illustrative, not an app screenshot. This repository contains website assets only.

The App Store marketing URL should point to the homepage, the support URL to `/#support`, and the privacy policy URL to `/privacy/`. App Store privacy disclosures must reflect the actual submitted binary and support practices. The website name does not change the iOS bundle identifier or signing configuration.
