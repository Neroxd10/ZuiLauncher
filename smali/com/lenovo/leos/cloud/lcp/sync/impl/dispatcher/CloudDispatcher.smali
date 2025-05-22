.class public Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/CloudDispatcher;
.super Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;-><init>()V

    return-void
.end method

.method private c(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    .locals 0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;-><init>()V

    goto/16 :goto_0

    :cond_0
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CALLLOG:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;-><init>()V

    goto/16 :goto_0

    :cond_1
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;-><init>()V

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SETTING:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;-><init>()V

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->newBackupTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    move-result-object p0

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;-><init>()V

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->DOC:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocBackupTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocBackupTask;-><init>()V

    goto :goto_0

    :cond_7
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->PHOTO:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;-><init>()V

    goto :goto_0

    :cond_8
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->PROFILE:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileBackupTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileBackupTask;-><init>()V

    goto :goto_0

    :cond_9
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private d(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    .locals 0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;-><init>()V

    goto/16 :goto_0

    :cond_0
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->CALLLOG:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogRestoreTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogRestoreTask;-><init>()V

    goto/16 :goto_0

    :cond_1
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;-><init>()V

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->SETTING:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;-><init>()V

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->newRestoreTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    move-result-object p0

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;-><init>()V

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->PHOTO:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;-><init>()V

    goto :goto_0

    :cond_7
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->DOC:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocRestoreTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocRestoreTask;-><init>()V

    goto :goto_0

    :cond_8
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->PROFILE:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;-><init>()V

    goto :goto_0

    :cond_9
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private e(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    .locals 0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/CloudDispatcher$a;->a:[I

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->newSyncTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;-><init>()V

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected bridge synthetic dispatchTask(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/CloudDispatcher;->dispatchTask(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    move-result-object p0

    return-object p0
.end method

.method protected dispatchTask(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    .locals 2

    instance-of v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/CloudDispatcher;->c(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/CloudDispatcher;->d(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    move-result-object v0

    :cond_1
    instance-of v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/CloudDispatcher;->e(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getCount(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)I
    .locals 1

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;->getValue()I

    move-result p0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactUtil;->doQueryCloudContactNumber()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->doQuerySmsCloudCount()I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsUtil;->doQueryMmsCloudCount()I

    move-result p0

    return p0

    :cond_2
    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_3

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/CalllogUtils;->doQueryCloudCalllogNumber()I

    move-result p0

    return p0

    :cond_3
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->doQueryCloudCount()I

    move-result p0

    return p0

    :cond_4
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;-><init>()V

    throw p0
.end method
