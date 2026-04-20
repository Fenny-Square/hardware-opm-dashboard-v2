# 🔧 Hardware OPM Dashboard

A comprehensive GitHub-based dashboard and project management system for Hardware Operations Program Managers.

## 🌟 Features

- **📊 Interactive Timeline**: Gantt chart visualization of program phases
- **🎯 Milestone Tracking**: Visual milestone cards with status indicators
- **📅 Build Schedule**: Detailed build phase tracking
- **🧪 Testing Schedule**: Organized testing plans and status
- **📈 Program Health Metrics**: Real-time statistics and KPIs
- **🐛 Issue Templates**: Standardized templates for bugs, design tasks, and test requests
- **🤖 Automated Reports**: Weekly status reports generated automatically
- **📱 Responsive Design**: Works on desktop, tablet, and mobile

## 🚀 Quick Start

### 1. Clone or Fork This Repository

```bash
git clone https://github.com/your-org/hardware-opm-dashboard.git
cd hardware-opm-dashboard
```

### 2. Enable GitHub Pages

1. Go to **Settings** → **Pages**
2. Under **Source**, select:
   - Branch: `main`
   - Folder: `/docs`
3. Click **Save**
4. Your dashboard will be available at: `https://your-org.github.io/hardware-opm-dashboard/`

### 3. Customize Your Dashboard

Edit `docs/index.html` to update:
- Program timeline dates
- Milestone information
- Build schedule
- Testing plans
- Your organization/project details

### 4. Set Up Issue Templates

The repository includes three issue templates:
- **Hardware Bug** (`.github/ISSUE_TEMPLATE/hardware-bug.md`)
- **Design Task** (`.github/ISSUE_TEMPLATE/design-task.md`)
- **Test Request** (`.github/ISSUE_TEMPLATE/test-request.md`)

These will automatically appear when creating new issues.

### 5. Configure Automated Reports

The weekly report workflow (`.github/workflows/weekly-report.yml`) runs every Monday at 9 AM UTC.

To customize:
- Edit the cron schedule
- Modify the report format
- Add integrations (Slack, email, etc.)

## 📁 Repository Structure

```
hardware-opm-dashboard/
├── .github/
│   ├── ISSUE_TEMPLATE/
│   │   ├── hardware-bug.md
│   │   ├── design-task.md
│   │   └── test-request.md
│   └── workflows/
│       ├── weekly-report.yml
│       └── deploy-pages.yml
├── docs/                          # GitHub Pages site
│   ├── index.html                 # Main dashboard
│   ├── assets/
│   │   ├── css/
│   │   │   └── style.css
│   │   └── js/
│   ├── bom/                       # Bill of Materials
│   ├── specs/                     # Specifications
│   └── test-reports/              # Test results
├── hardware/                      # Hardware design files
│   ├── schematics/
│   ├── pcb/
│   ├── cad/
│   └── gerbers/
├── firmware/                      # Embedded software
├── test/                          # Test plans and results
│   ├── test-plans/
│   └── test-results/
├── manufacturing/                 # Production documentation
│   ├── assembly/
│   └── test-procedures/
└── README.md
```

## 🎨 Customization Guide

### Update Timeline

Edit the Mermaid gantt chart in `docs/index.html`:

```javascript
gantt
    title Your Hardware Development Timeline
    dateFormat YYYY-MM-DD
    
    section Your Phase
    Your Task    :2024-01-01, 30d
```

### Change Color Scheme

Edit CSS variables in `docs/assets/css/style.css`:

```css
:root {
    --primary-color: #2563eb;
    --secondary-color: #64748b;
    /* ... customize colors ... */
}
```

### Add New Sections

Add new sections to `docs/index.html`:

```html
<section id="your-section" class="section">
    <h2>Your Section Title</h2>
    <!-- Your content -->
</section>
```

## 🔗 Integration Options

### Jira Integration

Link GitHub issues to Jira tickets:
- Reference Jira tickets in issue descriptions: `PROJ-123`
- Use GitHub Actions to sync status

### Slack Notifications

Add Slack webhook to workflows:

```yaml
- name: Notify Slack
  uses: slackapi/slack-github-action@v1
  with:
    webhook-url: ${{ secrets.SLACK_WEBHOOK }}
```

### Email Reports

Use GitHub Actions to send email reports:

```yaml
- name: Send Email
  uses: dawidd6/action-send-mail@v3
  with:
    server_address: smtp.gmail.com
    server_port: 465
    username: ${{ secrets.EMAIL_USERNAME }}
    password: ${{ secrets.EMAIL_PASSWORD }}
```

## 📊 Using GitHub Projects

Create a Project Board for visual tracking:

1. Go to **Projects** → **New Project**
2. Choose **Board** or **Table** view
3. Add custom fields:
   - Build Phase (Proto, EVT, DVT, PVT)
   - Priority (Critical, High, Medium, Low)
   - Hardware Component
   - Test Status

## 🏷️ Recommended Labels

Create these labels for better organization:

- `hardware` - Hardware-related issues
- `firmware` - Firmware/software issues
- `design` - Design tasks
- `testing` - Test requests
- `bug` - Bugs and defects
- `critical` - Critical priority
- `blocked` - Blocked issues
- `proto` - Prototype phase
- `evt` - EVT phase
- `dvt` - DVT phase
- `pvt` - PVT phase

## 📈 Best Practices

1. **Keep Timeline Updated**: Review and update the timeline weekly
2. **Use Milestones**: Group related issues under GitHub Milestones
3. **Tag Releases**: Tag hardware revisions (e.g., `hw-rev-1.2`)
4. **Document Decisions**: Use GitHub Discussions for design decisions
5. **Link Issues**: Cross-reference related issues and PRs
6. **Regular Reviews**: Schedule weekly dashboard reviews with the team

## 🛠️ Advanced Features

### Hardware Revision Tracking

Use Git tags for hardware versions:

```bash
git tag -a hw-rev-1.0 -m "Hardware Revision 1.0 - Proto"
git push origin hw-rev-1.0
```

### BOM Management

Store BOMs in `docs/bom/` and track versions:
- `bom-proto-v1.xlsx`
- `bom-evt-v1.xlsx`
- `bom-dvt-v1.xlsx`

### Test Result Tracking

Store test reports in `docs/test-reports/`:
- `electrical-test-results.pdf`
- `environmental-test-summary.md`
- `reliability-test-data.csv`

## 🤝 Contributing

1. Create a feature branch
2. Make your changes
3. Submit a pull request
4. Tag relevant team members for review

## 📝 License

This project is open source and available under the MIT License.

## 🆘 Support

For questions or issues:
- Create an issue in this repository
- Contact the program manager
- Check the [Wiki](../../wiki) for documentation

## 🎯 Roadmap

- [ ] Add automated test result parsing
- [ ] Integrate with lab equipment APIs
- [ ] Add cost tracking dashboard
- [ ] Create mobile app companion
- [ ] Add AI-powered risk analysis

---

**Made with ❤️ for Hardware OPMs**
