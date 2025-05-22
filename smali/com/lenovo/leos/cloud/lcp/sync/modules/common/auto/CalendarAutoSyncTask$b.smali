.class Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field private b:J

.field final synthetic c:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskResultCodeUtil;->isResultOk(I)Z

    move-result v1

    const-string v2, "CalendarAutoSyncTask"

    if-eqz v1, :cond_0

    const-string v0, "===>\u81ea\u52a8\u540c\u6b65\u65e5\u5386\u6210\u529f\uff0c\u4fdd\u5b58\u72b6\u6001"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===>\u81ea\u52a8\u540c\u6b65\u65e5\u5386\u5931\u8d25\uff0c\u539f\u56e0:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u540c\u6b65\u65e5\u5386\u4efb\u52a1\u5171\u8017\u65f6"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;->b:J

    sub-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "\u6beb\u79d2"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, ""

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDK_CALENDAR_LAST_LOCAL_CHECKSUM"

    invoke-static {v2, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u65e5\u7a0bchecksum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c \u5df2\u4fdd\u5b58\u6210\u529f"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CalendarAutoSyncTask"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "calendarSupportTaskResult"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskResultCodeUtil;->isResultOk(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "SDK_BIRTHDAY_LAST_LOCAL_CHECKSUM"

    const-string v4, "SDK_LEREMINDER_LAST_LOCAL_CHECKSUM"

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->c(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524d\u63d0\u9192checksum="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->d(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f53\u524d\u751f\u65e5checksum="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {v4, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "\u670d\u52a1\u7aef\u8fd4\u56de\u9519\u8bef\u7684resultCode"

    invoke-static {v3, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onFinish(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SDK_CALENDAR_LAST_SYNC_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveLong(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v1, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;Z)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "CalendarAutoSyncTask"

    const-string v3, "\u672a\u77e5\u9519\u8bef"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v1, :cond_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V

    :cond_1
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;Z)Z

    throw v1
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;->b:J

    const-string p0, "SDK_CALENDAR_LAST_CHECK_TIEM_KEY"

    invoke-static {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveLong(Ljava/lang/String;J)V

    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
