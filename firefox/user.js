// Custom Firefox preferences
//user_pref("", );

// Disable pocket integration
user_pref("extensions.pocket.enabled", false);
// Remove warning when accessing about:config
user_pref("browser.aboutConfig.showWarning", false);
// Set default theme to dark
user_pref("extensions.activeThemeID", "firefox-compact-dark@mozilla.org");
// Enable WebRender
user_pref("gfx.webrender.enabled", true);
user_pref("gfx.webrender.all", true);

// Enable customChrome.css
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("browser.tabs.drawInTitlebar", true);
