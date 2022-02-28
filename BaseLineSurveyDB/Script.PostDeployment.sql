/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r ./myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM $(TableName)					
--------------------------------------------------------------------------------------
*/

--section Authentication

 :r .\dbo\Scripts\Shared\insert_information_statuses.sql
 :r .\dbo\Scripts\Authentication\insert_roles_users_supervisors_employees.sql


 --section one
 :r .\dbo\Scripts\KhanaSection\insert_districts_upazilas_parises.sql
 :r .\dbo\Scripts\KhanaSection\insert_villages.sql
 :r .\dbo\Scripts\KhanaSection\insert_service_centers.sql
:r .\dbo\Scripts\KhanaSection\insert_races.sql
 :r .\dbo\Scripts\KhanaSection\insert_religions.sql
:r .\dbo\Scripts\KhanaSection\insert_paris_junction_service_centers.sql
:r .\dbo\Scripts\KhanaSection\insert_paris_service_id_with_village.sql

 --section two

 :r .\dbo\Scripts\MemberSection\Insert_disable_types.sql
 :r .\dbo\Scripts\MemberSection\insert_genders.sql
 :r .\dbo\Scripts\MemberSection\Insert_marital_statuses.sql
 :r .\dbo\Scripts\MemberSection\insert_professions.sql
 :r .\dbo\Scripts\MemberSection\insert_relationship.sql



--section three
:r .\dbo\Scripts\DiseaseSection\insert_diseases.sql
:r .\dbo\Scripts\DiseaseSection\insert_doctor_types.sql
:r .\dbo\Scripts\DiseaseSection\insert_treatment_centers.sql


--section four
:r .\dbo\Scripts\WaterAndToiletSection\insert_toilet_and_water_source_question_answers.sql

 --section five
  :r .\dbo\Scripts\VitaminSection\insert_vitamin_knowledge_question_and_answers.sql

  --section six
:r .\dbo\Scripts\EducationSection\insert_education_questions_and_options.sql
:r .\dbo\Scripts\EducationSection\Insert_drop_out_reason_codes.sql
:r .\dbo\Scripts\EducationSection\insert_education_help_types.sql
:r .\dbo\Scripts\EducationSection\insert_education_statuses.sql
:r .\dbo\Scripts\EducationSection\insert_helping_organizations.sql


--section seven
:r .\dbo\Scripts\FoodAndSaftySection\insert_foods.sql
:r .\dbo\Scripts\FoodAndSaftySection\insert_months.sql
:r .\dbo\Scripts\FoodAndSaftySection\insert_shortage_solutions.sql

--section eight
:r .\dbo\Scripts\IncomeAndExpenseSection\insert_child_parent_assest_types.sql
:r .\dbo\Scripts\IncomeAndExpenseSection\insert_crop_types.sql
:r .\dbo\Scripts\IncomeAndExpenseSection\insert_expense_sources.sql
:r .\dbo\Scripts\IncomeAndExpenseSection\insert_income_sources.sql
:r .\dbo\Scripts\IncomeAndExpenseSection\insert_land_ownership_types.sql
:r .\dbo\Scripts\IncomeAndExpenseSection\insert_trees.sql

--section nine
:r .\dbo\Scripts\ChildRightForParentSection\insert_parent_response_question_options.sql
:r .\dbo\Scripts\ChildRightForParentSection\insert_tortured_reasions.sql
:r .\dbo\Scripts\ChildRightForParentSection\insert_sleeping_places.sql


--section ten
:r .\dbo\Scripts\ChildRightForChildSection\Insert_child_right_question_options.sql

--section eleven

:r .\dbo\Scripts\SocialAndCooperativeSection\insert_defaulder_reasons.sql
:r .\dbo\Scripts\SocialAndCooperativeSection\insert_social_work_types.sql
:r .\dbo\Scripts\SocialAndCooperativeSection\insert_cooperative_lists.sql
:r .\dbo\Scripts\SocialAndCooperativeSection\insert_cooperative_questions.sql