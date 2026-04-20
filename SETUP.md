# 🚀 Setup Instructions

Follow these steps to get your Hardware OPM Dashboard up and running.

## Step 1: Push to GitHub

```bash
# If you haven't already, create a new repository on GitHub
# Then push this code:

cd ~/hardware-opm-dashboard

# Add your GitHub repository as remote
git remote add origin https://github.com/YOUR-USERNAME/hardware-opm-dashboard.git

# Push to GitHub
git push -u origin main
```

## Step 2: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** (top right)
3. Click **Pages** (left sidebar)
4. Under **Source**:
   - Branch: `main`
   - Folder: `/docs`
5. Click **Save**
6. Wait 1-2 minutes for deployment
7. Your site will be available at: `https://YOUR-USERNAME.github.io/hardware-opm-dashboard/`

## Step 3: Configure Repository Settings

### Enable Issues
1. Go to **Settings** → **General**
2. Under **Features**, ensure **Issues** is checked

### Set Up Labels
Go to **Issues** → **Labels** and create:

```
hardware (color: #0052CC) - Hardware-related issues
firmware (color: #5319E7) - Firmware/software issues  
design (color: #00875A) - Design tasks
testing (color: #FF8B00) - Test requests
bug (color: #DE350B) - Bugs and defects
critical (color: #FF5630) - Critical priority
blocked (color: #6554C0) - Blocked issues
proto (color: #00B8D9) - Prototype phase
evt (color: #36B37E) - EVT phase
dvt (color: #FFAB00) - DVT phase
pvt (color: #FF991F) - PVT phase
report (color: #172B4D) - Status reports
weekly-status (color: #505F79) - Weekly status reports
```

### Set Up Milestones
Go to **Issues** → **Milestones** → **New milestone**

Create milestones for each major phase:
- Proto Build (Due: March 2024)
- EVT (Due: June 2024)
- DVT (Due: September 2024)
- PVT (Due: November 2024)

## Step 4: Create a Project Board

1. Go to **Projects** → **New project**
2. Choose **Board** view
3. Name it "Hardware Development"
4. Add columns:
   - 📋 Backlog
   - 🎯 To Do
   - 🔨 In Progress
   - 🧪 Testing
   - ✅ Done

### Add Custom Fields (Optional)
- **Build Phase**: Single select (Proto, EVT, DVT, PVT)
- **Priority**: Single select (Critical, High, Medium, Low)
- **Component**: Text
- **Test Status**: Single select (Not Started, In Progress, Passed, Failed)

## Step 5: Customize Your Dashboard

### Update Timeline
Edit `docs/index.html` and modify the Mermaid gantt chart:

```javascript
gantt
    title Your Hardware Development Timeline
    dateFormat YYYY-MM-DD
    
    section Design Phase
    Your Task    :2024-01-01, 30d
```

### Update Project Information
Search and replace in all files:
- `[Your Hardware Product]` → Your actual product name
- `your-org` → Your GitHub organization/username
- `hardware-opm-dashboard` → Your repository name

### Update Links in Sidebar
Edit `docs/index.html` and update these links:
```html
<li><a href="https://github.com/YOUR-ORG/YOUR-REPO" target="_blank">📦 GitHub Repo</a></li>
<li><a href="https://github.com/YOUR-ORG/YOUR-REPO/issues" target="_blank">🐛 Issues</a></li>
<li><a href="https://github.com/YOUR-ORG/YOUR-REPO/projects" target="_blank">📊 Project Board</a></li>
```

## Step 6: Test the Workflows

### Test Weekly Report
1. Go to **Actions** → **Weekly Program Status Report**
2. Click **Run workflow**
3. Check that an issue is created with the report

### Test GitHub Pages Deployment
1. Make a small change to `docs/index.html`
2. Commit and push
3. Go to **Actions** → **Deploy GitHub Pages**
4. Verify deployment succeeds
5. Check your site updates

## Step 7: Add Team Members

1. Go to **Settings** → **Collaborators**
2. Add team members with appropriate permissions:
   - **Admin**: Full access
   - **Write**: Can push and create issues
   - **Read**: View only

## Step 8: Set Up Notifications (Optional)

### Slack Integration
1. Create a Slack webhook
2. Add to repository secrets: **Settings** → **Secrets** → **Actions**
3. Add secret: `SLACK_WEBHOOK`
4. Modify `.github/workflows/weekly-report.yml` to include Slack notification

### Email Notifications
Configure in your GitHub profile:
- **Settings** → **Notifications**
- Choose email preferences for:
  - Issues
  - Pull requests
  - Releases

## Step 9: Create Your First Issue

Test the issue templates:
1. Go to **Issues** → **New issue**
2. Choose a template (Hardware Bug, Design Task, or Test Request)
3. Fill it out and submit
4. Assign to a milestone and add labels

## Step 10: Populate Documentation

### Add Your BOM
1. Edit `docs/bom/latest.html`
2. Replace sample data with your actual components
3. Update costs and lead times

### Add Your PRD
1. Edit `docs/specs/prd.html`
2. Fill in your product requirements
3. Add technical specifications

### Add Design Files
Place your design files in appropriate folders:
```
hardware/
├── schematics/     # Schematic PDFs or source files
├── pcb/            # PCB layout files
├── cad/            # 3D CAD models
└── gerbers/        # Gerber files for manufacturing
```

## Quick Verification Checklist

- [ ] Repository pushed to GitHub
- [ ] GitHub Pages enabled and working
- [ ] Issue templates appear when creating new issue
- [ ] Labels created
- [ ] Milestones created
- [ ] Project board created
- [ ] Weekly report workflow tested
- [ ] Dashboard customized with your project info
- [ ] Team members added
- [ ] First issue created
- [ ] Documentation populated

## Troubleshooting

### GitHub Pages Not Working
- Check that Pages is enabled in Settings
- Verify source is set to `main` branch and `/docs` folder
- Wait 2-3 minutes for initial deployment
- Check Actions tab for deployment errors

### Workflows Not Running
- Ensure Actions are enabled: **Settings** → **Actions** → **General**
- Check workflow syntax in `.github/workflows/`
- View logs in **Actions** tab

### Dashboard Not Displaying Correctly
- Clear browser cache
- Check browser console for errors
- Verify all CSS and JS files are in correct locations

## Next Steps

1. **Customize the timeline** with your actual project dates
2. **Create issues** for all known tasks and bugs
3. **Set up integrations** with Jira, Slack, or other tools
4. **Schedule regular reviews** of the dashboard with your team
5. **Update weekly** as the project progresses

## Need Help?

- Check the [README.md](README.md) for detailed documentation
- Create an issue in this repository
- Review GitHub's [Pages documentation](https://docs.github.com/en/pages)
- Review GitHub's [Actions documentation](https://docs.github.com/en/actions)

---

**You're all set! 🎉**

Your Hardware OPM Dashboard is ready to use. Share the GitHub Pages URL with your team!
