mixin PROJECT_ACTIVITY_LOG {
  static const String projectActivityLogTitle = "Project Activity Log";
  static const String activityLogTitle = "Activity Log";
  static const String leadDetailsTitle = "Lead Info";
  static const String taskInfoTitle = "Task Info";
  static const String activityAccount = "Project";
  static const String accountTitle = "Account Info";
  static const String profileTitle = "Profile";
  static const String milestone = "Milestone";
  static const String task = "Task";
  static const String taskType = "Task Type";
  static const String dateOfWork = "Date Of Work";
  static const String duration = "Duration";
  static const String difficultiesLevel = "Difficulties level";
  static const String taskDescription = "Description of Task";
  static const String modification = "Modification of existing work ";
  static const String highDiff = "High difficulties reason";
  static const String assistFrom = "Assist From";
  static const String website = "Website";
  static const String accountInfoDetails = "Account Info Details";
  static const String contactInfoDetails = "Contact Info Details";
  static const String endTime = "End Date And Time";
  static const String notNull = "N/A";

  static const String accountInactive =
      "Your account is inactive. Please contact with the admin to active your account.";
  static const String internetConnection =
      "No Internet Available. Please check your internet connection.";
  static const String internetLoading =
      'Please check your internet connection. Some contacts can not be loaded because of internet connection.';
  static const String crmLeadAddTitle = "Lead Info";
  static const String crmActivityLogTitle = "CRM Activity Log";
  static const String leadCaption = "Caption";
  static const String contactPersion = "Contact Person";
  static const String leadSource = "Lead Source";
  static const String leadStatus = "Lead Status";
  static const String crmActiveTaskname = "CRM Activity Task Name";
  static const String crmStartDateandTime = "Start Date And Time";
  static const String crmRelatedTo = "Related to";
  static const String description = "Description";
  static const String assignedTo = "Assigned to";
  static const String endDateTime = "End Date And Time";
  static const String status = "Status";
  static const String crmTaskInfoCheckboxText =
      "Want to select other's Leads / Opportunities?";
  static const String opportunityAmount = "Opportunity Amount";
  static const String primaryAcdount = "Primary Account";
  static const String primaryProductLine = "Primary Product Line";
  static const String referredBy = "Referred By";
  static const String assigneTo = "Assign To";
  // Activity add log all field name
  static const String channelPartner = "Channel Partner";
  static const String taskAssignedPerson = "Task(Assigned Person)";
  static const String youHavenoLogsInTheDay = "Work in the day of(02-Oct-2022)";
  static const String descriptionOfTask = "Description of Task";
  static const String modificationOfExistingWork =
      "Modification of existing work ";
  static const String existingLogDate = "Existing Log(Date)";
  static const String crmMeetAddinfogAddInfoTitle = "Meeting Info";
  static const String crmMeetingAddInfoSubject = "Subject";
  static const String crmMeetingAddInfoAgenda = "Agenda";
  static const String crmMeetingAddInfoAttendees = "Attendees";
  static const String crmMeetingAddInfoDuration = "Duration (Like 01:30)";
  static const String crmMeetingAddInfoLocation = "Location";
  static const String crmCallLogTitle = "Call Log";
  static const String registrationEmail = "Email";
  static const String companyOrganizationName = "Company / Organization Name";
  static const String crmCallLogSubject = "Subject";
  static const String crmCallLogStartDate = "Start Date And Time";
  static const String crmCallLogRelated = "Related to";
  static const String crmCallLogWantToSelect =
      "Want to select other's Lead's/ Opportunity";
  static const String crmCallLogStatus = "Status";
  static const String crmCallLogCallMedia = "Call Media";
  static const String crmCallLogAssignedTo = "Assigned to";
  static const String crmCallLogDuration = "Duration (Like 01:30)";
  static const String crmCallLogDescription = "Description";
  static const String crmContactInfo = "Contact Info";
  static const String fullName = "Full Name";
  static const String contactNo = "Contact No";
  static const String emailAddress = "Email Addess";
  static const String socialLinks = "Social Links";
  static const String repoLebel = "Repository";
  static const String meetingTypeLebel = "Meeting Type";
  static const String loading = "uploading...";

  static const String userFirstName = "User’s first name";
  static const String userMiddleName = "User’s Middle name";
  static const String userLastName = "User’s last name";
  static const String designation = "Designation";
  static const String dOB = "Date of Birth";
  static const String mobileNumber = "Mobile Number ";
  static const String lastActivities = "Last Activities";
  static const String accessLog = "Access Log";
  static const String serverTime = "Server Time";

  static const List<Map<String, String>> crmTaskInfoTableFieldValue = [
    {
      "Subjec": "Nowshin",
      "Accounts": "1235",
      "Start Date": "12-6-22 12:00",
      "Status": "Done",
      "Action": "1",
    },
    {
      "Subjec": "Shafiq",
      "Accounts": "12233",
      "Start Date": "12-6-22 12:00",
      "Status": "Done",
      "Action": "1",
    },
  ];
  static const List<Map<String, String>> projectActivityTableFieldValue = [
    {"Project": "AAAAAA", "Work Date & Duration": "1", "Action": "Yes"},
    {"Project": "AAAAAA", "Work Date & Duration": "1", "Action": "Yes"},
  ];
  static const List<String> crmMeetingIfoTableFeildName = [
    "Subject",
    "Account Name",
    "Start Date",
    "Status",
    "Action"
  ];

  static const List<Map<String, String>> crmMeetingIfoTableFeildValue = [
    {
      "Subject": "AAAAAA",
      "Account Name": "Account",
      "Start Date": "Yes",
      "Status": "On progress",
      "Action": "Yes",
    },
  ];

  static const List<String> crmContactInfoTableFieldName = [
    "Name",
    "Account Name",
    "Phone/Email",
    "Updated Date",
    "Assigned to",
    "Action"
  ];
  static const List<Map<String, String>> crmContactInfoTableFeildValue = [
    {
      "Name": "AAAAAA",
      "Account Name": "Account",
      "Phone/Email": "AAAA@gmaul.com",
      "Updated Date": "111",
      "Assigned to": "bbbbb",
      "Action": "Yes",
    },
  ];

  static const List<Map<String, String>> crmActivityLogTableFieldValue = [
    {
      "Project": "AAAAAA",
      "Milestone": "One",
      "Task Type": "Yes",
      "Ticket": "Ticket one",
      "Work Date": "Yesterday",
      "Work Duration": "Yes",
      "Action": "Yes"
    },
    {
      "Project": "BBBBB",
      "Milestone": "TWO",
      "Task Type": "Yes",
      "Ticket": "Ticket two",
      "Work Date": "Today",
      "Work Duration": "Yes",
      "Action": "Yes"
    },
  ];

  /// lead extended page variable and their value
  static const String expectedCloseDate = "Expected Close Date";
  static const String primaryCompetitor = "Primary Competitor";
  static const String competitorStrength = "Competitor Strength";
  static const String competitorWeakness = "Competitor Weakness";
  static const String secondCompetitor = "Second Competitor";
  static const String probability = "Probability (%)";
  static const String opportunityStatusman = "Opportunity Status";
  static const String procurementTypeman = "Procurement Type";
  static const String whyCustomerWishToPurchase =
      "Why Customer wish to Purchase";
  static const String costMinimization = " Cost Minimization";
  static const String increaseBrandImage = "Increase Brand Image";
  static const String competitiveAdvantage = "Competitive Advantage";
  static const String companyImage = "Company Image";
  static const String existingBusinessAdvantage = "Existing Business Advantage";
  static const String personalRelation = "Personal Relation ";
  static const String leadPrice = "Price";
  static const String supportAvailability = "Support Availability";
  static const String uniqueProduct = "Unique Product";
  static List<String> whyCustomerWishtoPurchase = ["cost", "brand"];
  static List<String> whyCustomerWishtoPurchaseValue = ["cost", "brand"];
  static List<String> CompetitiveAdvantageList = [
    "Company Image",
    "Existing Business Advantage",
    "Personal Relation",
    "Price",
    "Support Availability",
    "Unique Product",
  ];

  ///Existing Business Advantage,Personal Relation
  static List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "Company Image",
    },
    {
      "id": 1,
      "value": false,
      "title": "Existing Business Advantage",
    },
    {
      "id": 2,
      "value": false,
      "title": "Personal Relation ",
    },
    {
      "id": 3,
      "value": false,
      "title": "Price",
    },
    {
      "id": 4,
      "value": false,
      "title": "Support Availability",
    },
    {
      "id": 5,
      "value": false,
      "title": "Unique Product",
    },
  ];
  static List checkListItems2 = [
    {
      "id": 0,
      "value": false,
      "title": "cost",
    },
    {
      "id": 1,
      "value": false,
      "title": "brand",
    },
  ];
  static const String lostWith = "Lost with (Winner Account)";
  static const String closeWinDate = "Close Win/Lost Date ";
  static const String causeOfLostDetails = "Cause of Lost (Details)";
  static const String winningStatement = "Winning Statement";
  static const String closeWinLostDate = "Close Win/Lost Date ";
  static const String procurementOtmName = "Name ";
  static const String procurementOtmRole = "Role";
  static const String billingAddress = "Billing Address";
  static const String moreInformation = "More Information";
}
