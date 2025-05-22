.class Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "\u81ea\u52a8\u5907\u4efd-"

    const-string v2, "LCPAutoSyncTask"

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->d(Landroid/os/Bundle;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "-\u6210\u529f\uff0c\u4fdd\u5b58\u72b6\u6001"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "-\u5931\u8d25\uff0c\u539f\u56e0:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-string v0, "LAST_CONTACT_AUTO_BACKUP_TIME"

    invoke-static {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveLong(Ljava/lang/String;J)V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactUtil;->getServerVersion()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-string v0, "CONTACT_AUTO_SYNC_LAST_LOCAL_VERSION"

    invoke-static {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveLong(Ljava/lang/String;J)V

    return-void
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-string v0, "LAST_SMS_AUTO_BACKUP_TIME"

    invoke-static {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveLong(Ljava/lang/String;J)V

    const-string p0, "TEMP_CHECK_SMS_SUMTIME"

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string p1, "CHECK_SMS_SUMTIME"

    invoke-static {p1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveLong(Ljava/lang/String;J)V

    invoke-static {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveLong(Ljava/lang/String;J)V

    const-string p0, "LCPAutoSyncTask"

    const-string p1, "\u77ed\u4fe1\u65f6\u95f4\u603b\u548c\u5df2\u4fdd\u5b58"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->f(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->g(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->e:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;Z)Z

    :cond_0
    return-void
.end method

.method private f(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;Landroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$f;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->c(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private g(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;Landroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$f;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-string p2, "LAST_BOOKMARK_AUTO_BACKUP_TIME"

    invoke-static {p2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v0, "LAST_CALENDAR_AUTO_BACKUP_TIME"

    invoke-static {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveLong(Ljava/lang/String;J)V

    :try_start_0
    const-string p1, "local_version"

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/utils/CalendarUtil;->getCalendarVersion()I

    move-result p2

    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->h(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CALENDAR_CRC"

    invoke-static {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->b(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onFinish(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->a(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->g()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->g()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->e()V

    return-void

    :goto_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->e()V

    throw p1
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->g()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->g()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    return-void
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->g()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->g()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->g()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->g()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onSubProgress(JJLandroid/os/Bundle;)V

    return-void
.end method
