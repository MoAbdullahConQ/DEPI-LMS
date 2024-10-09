import 'package:depi_lms/Features/Authentication/presentation/views/login_view.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/register_one_view.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/register_three_view.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/register_two_view.dart';
import 'package:depi_lms/Features/CompanyManagementMinistry/presentation/views/add_company_to_ministry_view.dart';
import 'package:depi_lms/Features/CompanyManagementMinistry/presentation/views/companies_ministry_view.dart';
import 'package:depi_lms/Features/Home/presentation/views/home_company_view.dart';
import 'package:depi_lms/Features/Home/presentation/views/home_ministry_view.dart';
import 'package:depi_lms/Features/Splash/presentation/views/splash_view.dart';
import 'package:depi_lms/Features/Home/presentation/views/home_student_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/attached_tasks_files_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/details_tasks_student_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/received_tasks_group_track_company_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/review_details_student_tasks_group_track_company_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/review_student_tasks_group_track_company_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/select_student_tasks_group_track_company_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/sending_receiveing_tasks_group_track_company_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/sending_tasks_group_track_company_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/tasks_done_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/tasks_student_view.dart';
import 'package:depi_lms/Features/TracksCourses/presentation/views/add_sub_topic_track_ministry_view.dart';
import 'package:depi_lms/Features/TracksCourses/presentation/views/add_topic_tracks_ministry_view.dart';
import 'package:depi_lms/Features/TracksCourses/presentation/views/add_tracks_ministry_view.dart';
import 'package:depi_lms/Features/TracksCourses/presentation/views/courses_student_view.dart';
import 'package:depi_lms/Features/TracksCourses/presentation/views/details_course_student_view.dart';
import 'package:depi_lms/Features/TracksCourses/presentation/views/groups_track_compony_view.dart';
import 'package:depi_lms/Features/TracksCourses/presentation/views/only_group_track_company.dart';
import 'package:depi_lms/Features/TracksCourses/presentation/views/recording_technical_courses_student_view.dart';
import 'package:depi_lms/Features/TracksCourses/presentation/views/sub_topic_tracks_ministry_view.dart';
import 'package:depi_lms/Features/TracksCourses/presentation/views/topic_tracks_ministry_view.dart';
import 'package:depi_lms/Features/TracksCourses/presentation/views/tracks_company_view.dart';
import 'package:depi_lms/Features/TracksCourses/presentation/views/widgets/tracks_ministry_view_body.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kLoginView = '/loginView';
  static const kRegisterOneView = '/registerOneView';
  static const kRegisterTwoView = '/registerTwoView';
  static const kRegisterThreeView = '/registerThreeView';

//Home Feature
  static const kHomeStudentView = '/homeStudentView';
  static const kHomeMinistryView = '/homeMinistryView';
  static const kHomeCompanyView = '/homeCompanyView';

//Tasks Feature
//Tasks student
  static const kTasksStudentView = '/tasksStudentView';
  static const kTasksDoneView = '/tasksDoneView';
  static const kDetailsTasksStudentView = '/detailsTasksStudentView';
  static const kAttachedTasksFilesView = '/attachedTasksFilesView';
  //Tasks company
  static const kSendingReceiveingTasksGroupTrackCompanyView =
      '/sendingReceiveingTasksGroupTrackCompanyView';
  static const kSendingTasksGroupTrackCompanyView =
      '/sendingTasksGroupTrackCompanyView';
  static const kSelectStudentTasksGroupTrackCompanyView =
      '/selectStudentTasksGroupTrackCompanyView';
  static const kReceivedTasksGroupTrackCompanyView =
      '/receivedTasksGroupTrackCompanyView';
  static const kReviewStudentTasksGroupTrackCompanyView =
      '/reviewStudentTasksGroupTrackCompanyView';
  static const kReviewDetailsStudentTasksGroupTrackCompanyView =
      '/reviewDetailsStudentTasksGroupTrackCompanyView';

//CompanyManagementMinistry
  static const kCompaniesMinistryView = '/companiesMinistryView';
  static const kAddCompanyToMinistryView = '/addCompanyToMinistryView';

  // tracks Minstry & Company
  // tracks Minstry
  static const kTracksMinistryView = '/tracksMinistryView';
  static const kAddTracksMinistryView = '/addTracksMinistryView';
  static const kTopicTracksMinistryView = '/topicTracksMinistryView';
  static const kAddTopicTracksMinistryView = '/addTopicTracksMinistryView';
  static const kSubTopicTracksMinistryView = '/subTopicTracksMinistryView';
  static const kAddSubTopicTrackMinistryView = '/addSubTopicTrackMinistryView';
  // tracks Company
  static const kTracksCompanyView = '/tracksCompanyView';
  static const kGroupsTrackComponyView = '/groupsTrackComponyView';
  static const kOnlyGroupTrackCompany = '/onlyGroupTrackCompany';

  static const kCoursesStudentView = '/coursesStudentView';
  static const kDetailsCourseStudentView = '/detailsCourseStudentView';
  static const kRecordingTechnicalCoursesStudentView = '/recordingTechnicalCoursesStudentView';

  static final routers = GoRouter(
    routes: [
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) => const SplashView(),
      // ),
      // GoRoute(
      //   path: kLoginView,
      //   builder: (context, state) => const LoginView(),
      // ),
      // GoRoute(
      //   path: kRegisterOneView,
      //   builder: (context, state) => const RegisterOneView(),
      // ),
      // GoRoute(
      //   path: kRegisterTwoView,
      //   builder: (context, state) => const RegisterTwoView(),
      // ),
      // GoRoute(
      //   path: kRegisterThreeView,
      //   builder: (context, state) => const RegisterThreeView(),
      // ),

//Home Feature
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeStudentView(),
      ),
      GoRoute(
        path: kHomeMinistryView,
        builder: (context, state) => const HomeMinistryView(),
      ),
      GoRoute(
        path: kHomeCompanyView,
        builder: (context, state) => const HomeCompanyView(),
      ),

//Tasks Feature
      GoRoute(
        path: kTasksStudentView,
        builder: (context, state) => const TasksStudentView(),
      ),
      GoRoute(
          path: kTasksDoneView,
          builder: (context, state) {
            final itemCount = state.uri.queryParameters['itemCount'];
            final titleAppBar = state.uri.queryParameters['titleAppBar'];

            return TasksDoneView(
              itemCount: itemCount != null ? int.tryParse(itemCount) ?? 0 : 0,
              titleAppBar: titleAppBar ?? '',
            );
          }),
      GoRoute(
          path: kDetailsTasksStudentView,
          builder: (context, state) {
            final taskName = state.uri.queryParameters['taskName'];
            final startDate = state.uri.queryParameters['startDate'];
            final deadline = state.uri.queryParameters['deadline'];

            return DetailsTasksStudentView(
              taskName: taskName ?? '',
              startDate: startDate ?? '',
              deadline: deadline ?? '',
            );
          }),
      GoRoute(
          path: kAttachedTasksFilesView,
          builder: (context, state) {
            final taskName = state.uri.queryParameters['taskName'];

            return AttachedTasksFilesView(
              taskName: taskName ?? '',
            );
          }),

      GoRoute(
          path: kSendingReceiveingTasksGroupTrackCompanyView,
          builder: (context, state) {
            return const SendingReceiveingTasksGroupTrackCompanyView();
          }),
      GoRoute(
          path: kSendingTasksGroupTrackCompanyView,
          builder: (context, state) {
            return const SendingTasksGroupTrackCompanyView();
          }),
      GoRoute(
          path: kSelectStudentTasksGroupTrackCompanyView,
          builder: (context, state) {
            return const SelectStudentTasksGroupTrackCompanyView();
          }),
      GoRoute(
          path: kReceivedTasksGroupTrackCompanyView,
          builder: (context, state) {
            return const ReceivedTasksGroupTrackCompanyView();
          }),
      GoRoute(
          path: kReviewStudentTasksGroupTrackCompanyView,
          builder: (context, state) {
            final taskName = state.uri.queryParameters['taskName'];

            return ReviewStudentTasksGroupTrackCompanyView(
                taskName: taskName ?? '');
          }),
      GoRoute(
          path: kReviewDetailsStudentTasksGroupTrackCompanyView,
          builder: (context, state) {
            return const ReviewDetailsStudentTasksGroupTrackCompanyView();
          }),

//Company Management Ministry
      GoRoute(
          path: kCompaniesMinistryView,
          builder: (context, state) {
            return const CompaniesMinistryView();
          }),
      GoRoute(
          path: kAddCompanyToMinistryView,
          builder: (context, state) {
            return const AddCompanyToMinistryView();
          }),

// Tracks Minstry & Company & Student Feature
// Tracks TracksMinistry
      GoRoute(
          path: kTracksMinistryView,
          builder: (context, state) {
            return const TracksMinistryViewBody();
          }),
      GoRoute(
          path: kAddTracksMinistryView,
          builder: (context, state) {
            return const AddTracksMinistryView();
          }),
      GoRoute(
          path: kTopicTracksMinistryView,
          builder: (context, state) {
            return const TopicTracksMinistryView();
          }),
      GoRoute(
          path: kAddTopicTracksMinistryView,
          builder: (context, state) {
            return const AddTopicTracksMinistryView();
          }),
      GoRoute(
          path: kSubTopicTracksMinistryView,
          builder: (context, state) {
            return const SubTopicTracksMinistryView();
          }),
      GoRoute(
          path: kAddSubTopicTrackMinistryView,
          builder: (context, state) {
            return const AddSubTopicTrackMinistryView();
          }),
// Tracks TracksCompany
      GoRoute(
          path: kTracksCompanyView,
          builder: (context, state) {
            return const TracksCompanyView();
          }),
      GoRoute(
          path: kGroupsTrackComponyView,
          builder: (context, state) {
            return const GroupsTrackComponyView();
          }),
      GoRoute(
          path: kOnlyGroupTrackCompany,
          builder: (context, state) {
            return const OnlyGroupTrackCompany();
          }),
// Tracks CoursesStudent
      GoRoute(
          path: kCoursesStudentView,
          builder: (context, state) {
            return const CoursesStudentView();
          }),
      GoRoute(
          path: kDetailsCourseStudentView,
          builder: (context, state) {
            return const DetailsCourseStudentView();
          }),
      GoRoute(
          path: kRecordingTechnicalCoursesStudentView,
          builder: (context, state) {
            return const RecordingTechnicalCoursesStudentView();
          }),
    ],
  );
}
