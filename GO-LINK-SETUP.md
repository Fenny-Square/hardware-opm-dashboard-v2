# Setting Up go/opm-template

This guide will help you create a go link for your Hardware OPM Dashboard.

## Steps to Create the go/ Link

### 1. Access the go/ Management System

The go link management page should now be open in your browser at: `http://go/go`

If not, open it manually: http://go/go

### 2. Create a New go/ Link

1. Click **"Create New Link"** or **"Add Link"**
2. Fill in the form:

   **Short Name:** `opm-template`
   
   **Destination URL:** 
   - If already deployed to GitHub Pages:
     ```
     https://YOUR-USERNAME.github.io/hardware-opm-dashboard/
     ```
   
   - If not yet deployed (temporary):
     ```
     https://github.com/YOUR-USERNAME/hardware-opm-dashboard
     ```

   **Description:** 
   ```
   Hardware OPM Dashboard Template - Interactive program management dashboard 
   with timeline, milestones, build tracking, and automated reporting
   ```

   **Tags/Keywords:** 
   ```
   hardware, opm, dashboard, program-management, template
   ```

   **Owner:** Your LDAP username

3. Click **"Create"** or **"Save"**

### 3. Test Your go/ Link

Once created, test it:
```
http://go/opm-template
```

This should redirect to your dashboard!

## Alternative go/ Link Names

If `opm-template` is taken, try:
- `go/hw-opm-template`
- `go/hardware-opm-dash`
- `go/opm-dashboard`
- `go/hw-program-dash`
- `go/hardware-dashboard-template`

## After Deployment to GitHub Pages

Once you've deployed to GitHub Pages:

1. **Update the go/ link destination** to point to your live site:
   ```
   https://YOUR-USERNAME.github.io/hardware-opm-dashboard/
   ```

2. **Share with your team:**
   ```
   Check out the new Hardware OPM Dashboard template: go/opm-template
   ```

## Quick Deploy to GitHub Pages

If you haven't deployed yet:

```bash
# 1. Create GitHub repository at github.com/new

# 2. Push your code
cd ~/hardware-opm-dashboard
git remote add origin https://github.com/YOUR-USERNAME/hardware-opm-dashboard.git
git push -u origin main

# 3. Enable GitHub Pages
# Go to: Settings → Pages
# Source: main branch, /docs folder
# Click Save

# 4. Wait 2-3 minutes, then access at:
# https://YOUR-USERNAME.github.io/hardware-opm-dashboard/

# 5. Update your go/ link to point to the live URL
```

## Sharing Your Dashboard

Once the go/ link is set up, share it:

### In Slack:
```
📊 New Hardware OPM Dashboard Template available!
Check it out: go/opm-template

Features:
✅ Interactive timeline with Gantt charts
✅ Milestone tracking
✅ Build schedule management
✅ Automated weekly reports
✅ Issue templates for bugs, design tasks, and tests
```

### In Email:
```
Subject: New Hardware OPM Dashboard Template

Hi team,

I've created a new Hardware OPM Dashboard template that you can use 
for your hardware programs. It's based on GitHub Pages and includes:

- Interactive program timeline
- Milestone and build tracking
- Automated status reports
- Issue templates
- Documentation templates (PRD, BOM, test plans)

Check it out: go/opm-template

The full repository with setup instructions is available at:
https://github.com/YOUR-USERNAME/hardware-opm-dashboard

Feel free to fork it for your projects!
```

## Troubleshooting

### go/ link not working?
- Make sure you're on the Block network or VPN
- Check that the link was created successfully at go/go
- Verify the destination URL is correct

### Want to change the destination?
1. Go to go/go
2. Search for "opm-template"
3. Click "Edit"
4. Update the destination URL
5. Save

### Want to transfer ownership?
1. Go to go/go
2. Find your link
3. Click "Edit"
4. Change the owner field
5. Save

## Additional Resources

- **Dashboard Documentation:** See README.md in this repository
- **Quick Start Guide:** See QUICKSTART.md
- **Detailed Setup:** See SETUP.md
- **go/ System Help:** go/go-help (if available)

---

**Your go/ link:** `go/opm-template`  
**Dashboard Location:** `~/hardware-opm-dashboard`  
**GitHub Pages:** `https://YOUR-USERNAME.github.io/hardware-opm-dashboard/`
