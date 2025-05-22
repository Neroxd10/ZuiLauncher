.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsMetadataManagerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsMetadataManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAutoBackup()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;
    .locals 10

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;-><init>()V

    const-string v1, "CHECK_SMS_BACKED"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;->backuped:Z

    const-string v1, "CHECK_SMS_LAST_AUTO_BACKED_TIME"

    const-wide/16 v3, 0x0

    invoke-static {v1, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "thread_id is not null and address is not null and (sms.type != 3) and date > ?"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v7, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsMetadataManagerImpl;->getSmsCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    iput v8, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opAdd:I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    new-array v7, v1, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sum(date) From sms where date>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "--"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-virtual {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsMetadataManagerImpl;->getAutobackupCheckCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    move-wide v5, v3

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    const-string v2, "CHECK_SMS_SUMTIME"

    invoke-static {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v5, v2

    if-eqz v2, :cond_1

    const-string v2, "TEMP_CHECK_SMS_SUMTIME"

    invoke-static {v2, v5, v6}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveLong(Ljava/lang/String;J)V

    iput-boolean v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;->newTimeSum:Z

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method public checkBackup()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;
    .locals 7

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;-><init>()V

    const-string v1, "CHECK_SMS_BACKED"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;->backuped:Z

    const-string v1, "CHECK_SMS_LAST_BACKED_TIME"

    const-wide/16 v3, 0x0

    invoke-static {v1, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Ljava/lang/String;J)J

    move-result-wide v3

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const-string v2, "thread_id is not null and address is not null and (sms.type != 3) and date > ?"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v5, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsMetadataManagerImpl;->getSmsCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opAdd:I

    iput-boolean v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;->newTimeSum:Z

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public getAutobackupCheckCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->SMS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getSmsCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->SMS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->SMS_FIELDS:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
