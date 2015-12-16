FactoryGirl.define do

  factory :user do
    name 'student1300'
    role_id 1
    password 'student1300'
    password_confirmation 'student1300'
    email 'a@a.com'
  end

  factory :feedback_setting do
    support_mail 'sgandhi4@ncsu.edu'
    max_attachments '1'
    max_attachment_size '2048'
    wrong_retries '5'
    wait_duration '5'
    wait_duration_increment '5'
    support_team 'a@a.com,b@b.com'
  end

  factory :feedback_attachment_setting do
    file_type 'application/x-ruby'
  end

  factory :role do
    id 1
    name 'Student'
    cache '---
        :credentials: !ruby/object:Credentials
          actions:
            content_pages:
              view_default: true
              view: true
              list: false
            roles:
              list: false
            permissions:
              list: false
            auth:
              login: true
              logout: true
              login_failed: true
            menu_items:
              link: true
              list: false
            site_controllers:
              list: false
            controller_actions:
              list: false
            system_settings:
              list: false
            users:
              list: false
              keys: true
            admin:
              list_instructors: false
              list_administrators: false
              list_super_administrators: false
            course:
              list_folders: false
              add_ta: false
              destroy_course: false
              edit_course: false
              new_course: false
              new_folder: false
              remove_ta: false
              update_course: false
              view_teaching_assistants: false
              create_course: false
              list: false
            suggestion:
              create: true
              new: true
            questionnaire:
              list: false
              create_questionnaire: false
              edit_questionnaire: false
              copy_questionnaire: false
              save_questionnaire: false
              new_quiz: true
              create_quiz_questionnaire: true
              update_quiz: true
              edit_quiz: true
              view_quiz: true
            participants:
              add_student: false
              edit_team_members: false
              list_students: false
              list_courses: false
              list_assignments: false
              change_handle: true
            assignment:
              list: false
            institution:
              list: false
            student_task:
              list: true
            profile:
              edit: true
            survey_response:
              create: true
              submit: true
            team:
              list: false
              list_assignments: false
            teams_users:
              list: false
            course_evaluation:
              list: true
            survey_deployment:
              list: false
            statistics:
              list_surveys: false
            impersonate:
              start: false
              impersonate: true
            review_mapping:
              list: false
              assign_reviewer_dynamically: true
              release_reservation: true
              show_available_submissions: true
              assign_metareviewer_dynamically: true
              add_self_reviewer: true
              assign_quiz_dynamically: true
            tree_display:
              list: false
              drill: false
              goto_questionnaires: false
              goto_author_feedbacks: false
              goto_review_rubrics: false
              goto_global_survey: false
              goto_surveys: false
              goto_course_evaluations: false
              goto_courses: false
              goto_assignments: false
              goto_teammate_reviews: false
              goto_metareview_rubrics: false
              goto_teammatereview_rubrics: false
            grades:
              view_my_scores: true
            sign_up_sheet:
              signup_topics: true
              signup: true
              delete_signup: true
              team_details: true
            leaderboard:
              index: true
            review_files:
              show_code_file: true
              show_code_file_diff: true
              show_all_submitted_files: true
              submit_comment: true
              submit_review_file: true
            popup:
              automated_metareview_details_popup: true
            advice:
              edit_advice: false
              save_advice: false
            response:
              delete: false
            analytic:
              assignment_list: false
              course_list: false
              get_graph_data_bundle: false
              graph_data_type_list: false
              index: false
              init: false
              render_sample: false
              team_list: false
            advertise_for_partner:
              remove: true
            versions:
              revert: true
          controllers:
            content_pages: false
            controller_actions: false
            auth: false
            markup_styles: false
            menu_items: false
            permissions: false
            roles: false
            site_controllers: false
            system_settings: false
            users: true
            roles_permissions: false
            admin: false
            course: false
            assignment: false
            questionnaire: false
            participants: false
            reports: true
            institution: false
            student_task: true
            profile: true
            survey_response: true
            team: false
            teams_users: false
            import_file: false
            course_evaluation: true
            participant_choices: false
            survey_deployment: false
            statistics: false
            impersonate: false
            review_mapping: false
            grades: false
            tree_display: false
            student_team: true
            invitation: true
            survey: false
            password_retrieval: true
            submitted_content: true
            eula: true
            student_review: true
            publishing: true
            export_file: false
            response: true
            popup: false
            sign_up_sheet: false
            suggestion: false
            leaderboard: true
            delete_object: false
            assessment360: false
            review_files: true
            advertise_for_partners: true
            join_team_requests: true
            advertise_for_partner: true
            automated_metareviews: true
            advice: false
            analytic: false
            versions: true
            student_quiz: true
          pages:
            home: true
            expired: true
            notfound: true
            denied: true
            contact_us: true
            site_admin: false
            adminpage: false
            credits: true
            wiki: true
          permission_ids:
          - 8
          - 4
          - 3
          role_id: 1
          role_ids:
          - 1
          updated_at: 2015-06-11 15:23:43.000000000 Z
        :menu: !ruby/object:Menu
          by_id:
            1: &1 !ruby/object:Menu::Node
              content_page_id: 1
              controller_action_id:
              id: 1
              label: Home
              name: home
              parent:
              parent_id:
              site_controller_id:
              url: "/home"
              children:
              - 50
            26: &2 !ruby/object:Menu::Node
              content_page_id:
              controller_action_id: 33
              id: 26
              label: Assignments
              name: student_task
              parent:
              parent_id:
              site_controller_id: 23
              url: "/student_task/list"
            30: &3 !ruby/object:Menu::Node
              content_page_id:
              controller_action_id: 42
              id: 30
              label: Course Evaluation
              name: Course Evaluation
              parent:
              parent_id:
              site_controller_id: 31
              url: "/course_evaluation/list"
            27: &4 !ruby/object:Menu::Node
              content_page_id:
              controller_action_id: 36
              id: 27
              label: Profile
              name: profile
              parent:
              parent_id:
              site_controller_id: 26
              url: "/profile/edit"
            2: &5 !ruby/object:Menu::Node
              content_page_id: 6
              controller_action_id:
              id: 2
              label: Contact Us
              name: contact_us
              parent:
              parent_id:
              site_controller_id:
              url: "/contact_us"
              children:
              - 14
            50: &6 !ruby/object:Menu::Node
              content_page_id:
              controller_action_id: 78
              id: 50
              label: Leaderboard
              name: leaderboard
              parent:
              parent_id: 1
              site_controller_id: 54
              url: "/leaderboard/index"
            14: &7 !ruby/object:Menu::Node
              content_page_id: 10
              controller_action_id:
              id: 14
              label: Credits &amp; Licence
              name: credits
              parent:
              parent_id: 2
              site_controller_id:
              url: "/credits"
          by_name:
            home: *1
            student_task: *2
            Course Evaluation: *3
            profile: *4
            contact_us: *5
            leaderboard: *6
            credits: *7
          crumbs:
          - 1
          root: &8 !ruby/object:Menu::Node
            parent:
            children:
            - 1
            - 26
            - 30
            - 27
            - 2
          selected:
            1: *1
          vector:
          - *8
          - *1
        '

  end

end