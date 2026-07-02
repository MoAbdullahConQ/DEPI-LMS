# DEPI LMS

![Platform](https://img.shields.io/badge/platform-Flutter-02569B?logo=flutter&logoColor=white)
![Language](https://img.shields.io/badge/language-Dart-0175C2?logo=dart&logoColor=white)
![Routing](https://img.shields.io/badge/routing-go__router-orange)
![License](https://img.shields.io/badge/license-MIT-green)

A multi-role Learning Management System (LMS) built with Flutter for the **Digital Egypt Pioneers Initiative (DEPI)** program. The app serves three distinct user roles — **Ministry**, **Company** (training provider), and **Student** — each with its own tailored home screen and workflows for managing tracks, tasks, announcements, and complaints.

Built as a team project: Flutter UI/frontend (this repo), with a Node.js backend and UI/UX design handled by teammates.

## Demo

<a href="https://youtu.be/PBGANh69oek">
  <img src="https://img.youtube.com/vi/PBGANh69oek/maxresdefault.jpg" width="600">
</a>

*Click the thumbnail above to watch the app in action or click here* ▶️ [Watch the demo](https://youtu.be/PBGANh69oek)

## Features

The app is organized around three role-based experiences, each with its own navigation and screens:

**🎓 Student**
- Browse enrolled tracks and courses, with course/topic detail views
- View and submit tasks, track completed/pending assignments, download attached task files
- Watch recorded technical course sessions
- Receive and view announcements
- Submit and track complaints
- Account and app settings

**🏢 Company (training provider)**
- Manage tracks and student groups per track
- Assign and review tasks: send assignments, review student submissions in detail, track attendance
- Send and receive announcements
- Submit and manage complaints
- View enrolled students for the company

**🏛️ Ministry (admin)**
- Manage companies participating in the program (add/list companies)
- Create and manage tracks, topics, and sub-topics
- Publish announcements to companies/students, with detail views
- Review and respond to complaints raised by companies/students
- Ministry-level settings

**Shared**
- Role-based authentication flow (multi-step registration + login)
- Splash screen
- Custom curved bottom navigation per role

## Tech Stack

| | |
|---|---|
| **Framework** | Flutter |
| **Language** | Dart |
| **Routing** | `go_router` (centralized `AppRouter` with named routes per feature/role) |
| **UI** | `google_fonts` (Poppins), `font_awesome_flutter`, `percent_indicator`, `curved_navigation_bar` |

> The backend was implemented with **Node.js** and **MongoDB**.

## Project Structure

```
DEPI-LMS/
├── lib/
│   ├── main.dart                     # App entry point
│   ├── constant.dart                 # Shared constants
│   ├── core/utils/
│   │   ├── app_router.dart           # Centralized go_router routes for all roles/features
│   │   ├── assets.dart
│   │   └── styles.dart
│   └── Features/
│       ├── Authentication/           # Login, multi-step registration
│       ├── Home/                     # Role-specific home screens (Student/Company/Ministry)
│       ├── TracksCourses/            # Tracks, topics, sub-topics, courses per role
│       ├── Tasks/                    # Assignments, submissions, review, attendance, materials
│       ├── Announcement/             # Create/send/receive announcements per role
│       ├── Complaints/               # Submit/review complaints per role
│       ├── CompanyManagementMinistry/# Ministry: manage participating companies
│       ├── StudentsCompany/          # Company: view enrolled students
│       ├── Setting/                  # Account & app settings
│       └── Splash/                   # Splash screen
└── assets/images/
```

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Android Studio / VS Code with the Flutter extension

### Setup

```bash
git clone https://github.com/MoAbdullahConQ/DEPI-LMS.git
cd DEPI-LMS
flutter pub get
flutter run
```

## Author

**Muhammed Abdullah**
- GitHub: [@MoAbdullahConQ](https://github.com/MoAbdullahConQ)
- LinkedIn: [muhammed-bn-abdullah](https://linkedin.com/in/muhammed-bn-abdullah)
- Email: muhammed.abdullah.01155849512@gmail.com

## License

This project is licensed under the [MIT License](LICENSE).
