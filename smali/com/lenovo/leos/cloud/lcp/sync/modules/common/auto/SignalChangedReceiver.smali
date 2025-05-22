.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/SignalChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/SignalChangedReceiver;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 8

    const-string p0, "CalendarAutoSyncTask"

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "LAST_SCREEM_OFF_TIME"

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long p1, v4, v2

    const/4 v2, 0x0

    if-gez p1, :cond_0

    const-string p1, "CalendarAutoSyncTask"

    const-string v3, "\u5f53\u524d\u65f6\u95f4\u5c0f\u4e8e\u4e0a\u6b21\u68c0\u67e5\u65f6\u95f4\uff0c\u8bf4\u660e\u7cfb\u7edf\u65f6\u95f4\u6709\u4fee\u6539\uff0c\u9000\u51fa\u68c0\u67e5"

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "LAST_SCREEM_OFF_TIME"

    invoke-static {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveLong(Ljava/lang/String;J)V

    monitor-exit p0

    return v2

    :cond_0
    const-wide/32 v6, 0xea60

    cmp-long p1, v4, v6

    if-gez p1, :cond_1

    const-string p1, "CalendarAutoSyncTask"

    const-string v0, "2\u6b21\u89e3\u9501\u5c4f\u5e55(\u901a\u77e5)\u65f6\u95f4\u95f4\u9694\u5c0f\u4e8e60S\uff0c\u9000\u51fa\u81ea\u52a8\u5907\u4efd"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v2

    :cond_1
    const-string p1, "LAST_SCREEM_OFF_TIME"

    invoke-static {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveLong(Ljava/lang/String;J)V

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b()Z
    .locals 7

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;->LENOVO_SYNC_PACKAGE_NAME:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/SignalChangedReceiver;->a:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/SignalChangedReceiver;->a:Landroid/content/Context;

    const-string p1, "CalendarAutoSyncTask"

    const-string v0, "sdk:\u68c0\u6d4b\u5230\u7528\u6237\u89e3\u9501\u64cd\u4f5c"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncController;->a:Z

    if-nez v0, :cond_0

    const-string p0, "sdk:\u65e5\u5386\u81ea\u52a8\u540c\u6b65\u5f00\u5173\u6ca1\u6709\u6253\u5f00\uff0c\u9000\u51fa\u81ea\u52a8\u540c\u6b65"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    const-string p0, "sdk:\u7cfb\u7edf\u4e0d\u652f\u6301\u540c\u6b65\u65e5\u5386\uff0c\u9000\u51fa\u81ea\u52a8\u540c\u6b65"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/SignalChangedReceiver;->a(Landroid/content/Intent;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->isUserLogin()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p0, "sdk:\u7528\u6237\u6ca1\u6709\u767b\u5f55\uff0c\u9000\u51fa\u81ea\u52a8\u540c\u6b65"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/SignalChangedReceiver;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p0, "sdk:\u68c0\u6d4b\u5230\u6709\u4e91\u670d\u52a1\uff0c\u9000\u51fa\u81ea\u52a8\u540c\u6b65"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/SignalChangedReceiver;->a:Landroid/content/Context;

    const-string p2, "activity"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_5

    const-string p0, "sdk:\u672a\u77e5\u5f02\u5e38\u60c5\u51b5\u4e0b\u83b7\u53d6\u7684activityManager\u4e3anull\uff0c\u9000\u51fa\u81ea\u52a8\u540c\u6b65"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->getIntance()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->execute()V

    return-void
.end method
