const String imageUrl = "https://ebs.oss.net.bd/users/upload/";
const String baseUrl = "https://api-k8s.oss.net.bd/api/ebs-service/";
const String oauth2BaseUrl =
    "https://idp.oss.net.bd/auth/realms/dev/protocol/openid-connect/token";
const String clientSecret = "3e3175a4-d91f-47a7-90ad-fa07586c47b4";
const String clientId = "ebs-client";

const userInfoUrl = "${baseUrl}crm-api/user-info";
const contactUrl = "${ebsBaseUrl}get_contacts?date=";
const colleagueUrl = "${baseUrl}crm-api/get-list";

const String accessTokenUrl =
    "https://idp.oss.net.bd/auth/realms/dev/protocol/openid-connect/token";
const String uatAccessTokenUrl =
    "https://idp.oss.net.bd/auth/realms/test/protocol/openid-connect/token";
const userDetails = "${baseUrl}crm-api/user-details";
const String clientIdForAuthUrl = "cha-client";
const String clientSecretForAuthUrl = "06811bee-461e-4f47-bf72-3d41d21a03af";
const String emailApiUrl =
    "https://api-k8s.oss.net.bd/api/broker-service/otp/email";
const String sendSmsUrl =
    "https://micro-api.land.gov.bd/api/broker-service/otp/send_otp";

const String ebsBaseUrl =
    "https://insightdb.oss.net.bd/api/api-bank/data-hub/ebs-client101/";

const String uatEBSBaseUrl =
    "https://uat-insightdb.oss.net.bd/api/api-bank/data-hub/ebs-client101/";
const String ebsOauth2BaseUrl =
    "https://idp.oss.net.bd/auth/realms/dev/protocol/openid-connect/token";
const String ebsClientSecret = "da4ce8b3-e39c-4642-ae82-38102c2b3d10";
const String ebsClientId = "ebs-client101";
const leadSourceUrl = "${ebsBaseUrl}ebs_leads_source";
const ebsUserInfoUrl = "${ebsBaseUrl}ebs_users_info";
const ebsLeadStatusUrl = "${ebsBaseUrl}ebs_lead_status";
const ebsProductLineUrl = "${ebsBaseUrl}ebs_lead_product_line";
const ebsProjectTaskUrl = "${ebsBaseUrl}ebs_project_task?milestone_id=";
const ebsProjectTaskType = "${ebsBaseUrl}ebs_project_task_type";

const crmTaskRelatedTo = "${ebsBaseUrl}ebs_crm_task_related_to";
const crmCallLogRelatedTo = "${ebsBaseUrl}crm_calls_related_to";

const crmCallLogStatus = "${ebsBaseUrl}crm_call_log_status";
const crmMeetingStatus = "${ebsBaseUrl}crm_meeting_status";

const ebsActivityLogList = "${ebsBaseUrl}ebs_activity_log_list?user_id=";
const ebscrmTaskListUrl = "${ebsBaseUrl}ebs_crm_task_list?user_id=";
const ebscrmLeadListUrl = "${ebsBaseUrl}ebs_crm_lead_list?user_id=";

const ebscrmCallLogListUrl = "${ebsBaseUrl}ebs_crm_call_log_list?user_id=";
const meetingListUrl = "${ebsBaseUrl}ebs_crm_meeting?user_id=";
const crmActivityLogListUrl = "${ebsBaseUrl}ebs_crm_activity_log_list?user_id=";
const ebsAllAccounts = "${ebsBaseUrl}ebs_all_accounts";

const ebsProjectName = "${ebsBaseUrl}ebs_project_name?user_id=";
const ebsMilestonName = "${ebsBaseUrl}milestone_names?project_id=";
const ebsProjectWorkInTheDayOf =
    "${ebsBaseUrl}ebs_activity_list_by_dt?created_by=";
const ebsCRMProjectWorkInTheDayOf =
    "${ebsBaseUrl}crm_activity_list_by_dt?created_by=";
const crmTaskType = "${ebsBaseUrl}crm_task_type";
const crmTaskStatus = "${ebsBaseUrl}ebs_crm_task_status";
const uatUserInfoUrl = "${ebsBaseUrl}uat_user_info?user_email=";
const ebsActivityLogAssistFrom =
    "${ebsBaseUrl}ebs_activity_log_assign_from?user_id=";

const crmActivityLogAssignedPerson = "${ebsBaseUrl}crm_task_assigned_person";
const leadOpportunityStatusUrl = "${ebsBaseUrl}ebs_crm_lead_opportunity_status";
const leadLeadProcurementTypeUrl = "${ebsBaseUrl}ebs_crm_lead_procurement_type";
const leadLeadRoleUrl = "${ebsBaseUrl}ebs_crm_procurement_role";

const String postUserName = "ebs_app";
const String postPassword = "ebs.api";
const String postClientId = "ebs_app";
const postUrlBase = "https://uat-crm.oss.net.bd/api/";
const postLiveUrlBase = "https://ebs.oss.net.bd/api/";
const authorization = "${postUrlBase}get-token";
const getOTPUrl = "${postUrlBase}request/get-otp";
const verifyOTPUrl = "${postUrlBase}request/verify-otp";
const postProjectActivityUrl =
    "${postLiveUrlBase}request/saveorupdate-project-activity-log";
const postCRMActivityURl = "${postUrlBase}request/crm_activity_log_submit";
const leadPostUrl = "${postUrlBase}request/crm_lead_submit";
const meetingPostUrl = "${postUrlBase}request/crm_meeting_submit";
const crmTaskPostUrl = "${postUrlBase}request/crm_task_submit";
const crmCallLogPostUrl = "${postUrlBase}request/crm_call_log_submit";
const crmAllContacts = "${ebsBaseUrl}crm_all_contacts";
const crmAllLeads = "${ebsBaseUrl}crm_all_leads?user_id=";
const crmMeetingAttendees = "${ebsBaseUrl}crm_attendees";
