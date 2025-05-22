.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;
    }
.end annotation


# static fields
.field private static b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->k()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private e()Z
    .locals 3

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->l()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SDK_CALENDAR_LAST_LOCAL_CHECKSUM"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672c\u5730\u65e5\u7a0bchecksum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \u4e0a\u6b21\u540c\u6b65\u6210\u529f\u540e\u672c\u5730\u65e5\u7a0bchecksum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CalendarAutoSyncTask"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private f()Z
    .locals 5

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDK_LEREMINDER_LAST_LOCAL_CHECKSUM"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u672c\u5730\u63d0\u9192checksum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", \u4e0a\u6b21\u540c\u6b65\u6210\u529f\u540e\u672c\u5730\u63d0\u9192checksum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CalendarAutoSyncTask"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->k()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SDK_BIRTHDAY_LAST_LOCAL_CHECKSUM"

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672c\u5730\u751f\u65e5checksum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", \u4e0a\u6b21\u540c\u6b65\u6210\u529f\u540e\u672c\u5730\u751f\u65e5checksum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private g()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p0, "SDK_CALENDAR_LAST_CHECK_TIEM_KEY"

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    long-to-int p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8ddd\u79bb\u4e0a\u6b21\u540c\u6b65"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u5206\u949f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CalendarAutoSyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3c

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getIntance()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;

    return-object v0
.end method

.method private h()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/NetWorkUtil;->isServerReachable()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CalendarAutoSyncTask"

    const-string v1, "\u83b7\u53d6\u7f51\u7edc\u72b6\u6001\u65f6\u51fa\u9519\uff0c\u9000\u51fa\u81ea\u52a8\u540c\u6b65"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private i()Z
    .locals 3

    const-string p0, "CALENDAR_AUTO_SYNC_NETWORK_STRATEGY_CONFIG"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->getEnum(Ljava/lang/Integer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u670d\u52a1\u5668\u914d\u7f6e\u7684\u7f51\u7edc\u7b56\u7565\u662f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CalendarAutoSyncTask"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/Networks;->isConnectionByNetworkStrategy(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private j()Z
    .locals 8

    const-string p0, "CALENDAR_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Ljava/lang/String;I)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u670d\u52a1\u5668\u914d\u7f6e\u7684\u65f6\u95f4\u95f4\u9694\u662f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u5206\u949f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CalendarAutoSyncTask"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "SDK_CALENDAR_LAST_SYNC_TIME"

    const-wide/16 v6, 0x0

    invoke-static {v1, v6, v7}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    long-to-int v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8ddd\u79bb\u4e0a\u6b21\u6210\u529f\u540c\u6b65"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private k()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportUtils;->getLocalBirthDayCrc()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CalendarAutoSyncTask"

    const-string v1, "\u8ba1\u7b97\u672c\u5730\u751f\u65e5checksum\u51fa\u9519"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private l()Ljava/lang/String;
    .locals 2

    const/16 p0, 0x32

    :try_start_0
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/utils/CalendarUtil;->getLocalEventCrc(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CalendarAutoSyncTask"

    const-string v1, "\u8ba1\u7b97\u672c\u5730\u65e5\u7a0bchecksum\u51fa\u9519"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private m()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportUtils;->getLocalReminderCrc()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CalendarAutoSyncTask"

    const-string v1, "\u8ba1\u7b97\u672c\u5730\u63d0\u9192checksum\u51fa\u9519"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public checkSyncCondition()Z
    .locals 4

    const-string v0, "CALENDAR_IS_AUTO_SYNC_SERVER_CONFIG"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "CalendarAutoSyncTask"

    if-nez v0, :cond_0

    const-string p0, "\u670d\u52a1\u5668\u914d\u7f6e-\u81ea\u52a8\u540c\u6b65\u65e5\u5386\u5f00\u5173-\u5173\u95ed\uff0c \u9000\u51fa\u81ea\u52a8\u540c\u6b65"

    :goto_0
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->j()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "---\u4e0a\u6b21\u6210\u529f\u540c\u6b65\u540e\u6ca1\u6709\u8d85\u8fc7\u670d\u52a1\u7aef\u914d\u7f6e\u7684\u65f6\u95f4\u95f4\u9694, \u9000\u51fa\u81ea\u52a8\u540c\u6b65"

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->g()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->f()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "---\u4e0a\u6b21\u6210\u529f\u540c\u6b65\u540e\u672c\u5730\u6ca1\u6709\u4fee\u6539\uff0c\u9000\u51fa\u81ea\u52a8\u540c\u6b65---"

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->i()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "---\u7f51\u7edc\u8fde\u63a5\u4e0d\u7b26\u5408\u670d\u52a1\u5668\u914d\u7f6e\uff0c\u9000\u51fa\u81ea\u52a8\u540c\u6b65---"

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->h()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "---\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u9000\u51fa\u81ea\u52a8\u540c\u6b65---"

    goto :goto_0

    :cond_4
    return v1
.end method

.method public doSync(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V
    .locals 3

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;

    move-result-object v0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->setProgressListenter(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    invoke-interface {v0, v1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->setProblemResolver(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    const/4 p1, 0x0

    aput-object v1, p0, p1

    invoke-interface {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->sync([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;)V

    return-void
.end method

.method public declared-synchronized execute()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CalendarAutoSyncTask"

    const-string v1, "===>\u5f00\u59cb\u68c0\u67e5\u662f\u5426\u80fd\u81ea\u52a8\u540c\u6b65\u65e5\u5386"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "CalendarAutoSyncTask"

    const-string v1, "===>\u4e0a\u6b21\u540c\u6b65\u4efb\u52a1\u8fd8\u6ca1\u6709\u7ed3\u675f\uff0c\u9000\u51fa\u81ea\u52a8\u540c\u6b65"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;->a:Z

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$a;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncTask;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
