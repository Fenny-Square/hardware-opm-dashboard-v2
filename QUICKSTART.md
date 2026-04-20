# 🚀 Quick Start Guide

Get your Hardware OPM Dashboard running in 5 minutes!

## What You've Got

✅ **Interactive Dashboard** - Timeline, milestones, build schedule, testing tracker  
✅ **Issue Templates** - Standardized bug reports, design tasks, test requests  
✅ **Automated Reports** - Weekly status reports generated automatically  
✅ **Documentation** - Sample PRD, BOM, and test plans  
✅ **GitHub Pages Ready** - Professional web interface  

## 5-Minute Setup

### 1. Push to GitHub (2 minutes)

```bash
cd ~/hardware-opm-dashboard

# Create a new repository on GitHub first, then:
git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPO.git
git push -u origin main
```

### 2. Enable GitHub Pages (1 minute)

1. Go to your repo → **Settings** → **Pages**
2. Source: **main** branch, **/docs** folder
3. Click **Save**
4. Wait 1-2 minutes

Your dashboard: `https://YOUR-USERNAME.github.io/YOUR-REPO/`

### 3. Customize (2 minutes)

Run the setup script:

```bash
cd ~/hardware-opm-dashboard
./setup.sh
```

Or manually edit:
- `docs/index.html` - Update project name and timeline
- `docs/specs/prd.html` - Add your requirements
- `docs/bom/latest.html` - Add your components

## What's Included

### 📊 Dashboard Features
- **Program Timeline** - Gantt chart with milestones
- **Build Schedule** - Track Proto/EVT/DVT/PVT builds
- **Testing Tracker** - Organize test plans and status
- **Health Metrics** - Real-time program statistics

### 🐛 Issue Templates
Located in `.github/ISSUE_TEMPLATE/`:
- `hardware-bug.md` - Bug reporting template
- `design-task.md` - Design work tracking
- `test-request.md` - Test request template

### 🤖 Automation
Located in `.github/workflows/`:
- `weekly-report.yml` - Auto-generates weekly status reports
- `deploy-pages.yml` - Auto-deploys dashboard updates

### 📁 Project Structure
```
hardware-opm-dashboard/
├── docs/                    # GitHub Pages site
│   ├── index.html          # Main dashboard
│   ├── assets/css/         # Styling
│   ├── bom/                # Bill of Materials
│   └── specs/              # Specifications
├── hardware/               # Design files
├── firmware/               # Embedded code
├── test/                   # Test plans & results
└── manufacturing/          # Production docs
```

## Next Steps

1. **Create Labels** - Go to Issues → Labels
   - `hardware`, `firmware`, `design`, `testing`, `bug`
   - `critical`, `proto`, `evt`, `dvt`, `pvt`

2. **Create Milestones** - Go to Issues → Milestones
   - Proto Build, EVT, DVT, PVT

3. **Create Project Board** - Go to Projects → New project
   - Columns: Backlog, To Do, In Progress, Testing, Done

4. **Create First Issue** - Test the templates
   - Issues → New issue → Choose template

5. **Invite Team** - Settings → Collaborators
   - Add team members

## View Your Dashboard

Open in browser:
```bash
open https://YOUR-USERNAME.github.io/YOUR-REPO/
```

Or locally:
```bash
cd ~/hardware-opm-dashboard/docs
open index.html
```

## Customization Tips

### Update Timeline
Edit the Mermaid gantt chart in `docs/index.html`:
```javascript
gantt
    title Your Project Timeline
    dateFormat YYYY-MM-DD
    section Your Phase
    Your Task :2024-01-01, 30d
```

### Change Colors
Edit CSS variables in `docs/assets/css/style.css`:
```css
:root {
    --primary-color: #2563eb;  /* Change this */
}
```

### Add New Pages
Create new HTML files in `docs/` and link from sidebar in `index.html`

## Common Tasks

### Update Build Schedule
Edit the table in `docs/index.html` under "Build Schedule" section

### Add BOM Items
Edit `docs/bom/latest.html` and add rows to the component table

### Create Test Plan
Copy `test/test-plans/electrical-test-plan.md` and customize

### Run Weekly Report Manually
Go to Actions → Weekly Program Status Report → Run workflow

## Troubleshooting

**Dashboard not loading?**
- Check Settings → Pages is enabled
- Wait 2-3 minutes after enabling
- Clear browser cache

**Workflows not running?**
- Check Settings → Actions → General (ensure enabled)
- View logs in Actions tab

**Need help?**
- Read [SETUP.md](SETUP.md) for detailed instructions
- Read [README.md](README.md) for full documentation
- Create an issue in your repository

## Resources

- 📚 [Full Documentation](README.md)
- 🔧 [Detailed Setup](SETUP.md)
- 🧪 [Sample Test Plan](test/test-plans/electrical-test-plan.md)
- 🎨 [Mermaid Gantt Docs](https://mermaid.js.org/syntax/gantt.html)
- 📖 [GitHub Pages Docs](https://docs.github.com/en/pages)

## Example Workflow

**Monday Morning:**
1. Review dashboard timeline
2. Check open issues
3. Update milestone progress
4. Review automated weekly report

**During Week:**
1. Create issues for new tasks/bugs
2. Update issue status
3. Link issues to milestones
4. Track on project board

**Friday:**
1. Update build schedule
2. Update test status
3. Review metrics
4. Share dashboard link with stakeholders

---

**That's it! You're ready to manage your hardware program with GitHub! 🎉**

Questions? Check the [README.md](README.md) or create an issue.
