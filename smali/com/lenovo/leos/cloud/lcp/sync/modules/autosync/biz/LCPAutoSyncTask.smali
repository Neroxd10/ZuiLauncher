.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$g;
    }
.end annotation


# static fields
.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;

.field private c:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;

.field private d:Z

.field e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->g:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->e:Ljava/util/Set;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->a:Landroid/content/Context;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;

    return-void
.end method

.method private A(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->e:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->z(Landroid/content/Context;)V

    return-void
.end method

.method public static clearProgressListener()V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method static synthetic d(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->j(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic e(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->i(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic f(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;)Z
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->u()Z

    move-result p0

    return p0
.end method

.method static synthetic g()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->g:Ljava/util/Map;

    return-object v0
.end method

.method public static getIntance()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->h:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;-><init>()V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->h:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;

    :cond_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->h:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic h(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->f:Ljava/lang/String;

    return-object p0
.end method

.method private i(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->resetLastestLocalChange()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;

    move-result-object p1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    invoke-interface {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->setProgressListenter(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$e;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$e;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;)V

    invoke-interface {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->setProblemResolver(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-interface {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->sync([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;)V

    return-void
.end method

.method private j(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;

    move-result-object p1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    invoke-interface {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->setProgressListenter(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-interface {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->backup([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;)V

    return-void
.end method

.method private k(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$g;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LCPAutoSyncTask"

    const-string v1, "\u65e5\u5386\u7b26\u5408\u6240\u6709\u81ea\u52a8\u540c\u6b65\u6761\u4ef6\uff0c\u51c6\u5907\u540c\u6b65"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$b;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private l(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$g;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LCPAutoSyncTask"

    const-string v1, "\u8054\u7cfb\u4eba\u7b26\u5408\u6240\u6709\u81ea\u52a8\u5907\u4efd\u6761\u4ef6\uff0c\u51c6\u5907\u540c\u6b65"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$d;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$d;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private m(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$g;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LCPAutoSyncTask"

    const-string v1, "\u77ed\u4fe1\u7b26\u5408\u6240\u6709\u81ea\u52a8\u5907\u4efd\u6761\u4ef6\uff0c\u51c6\u5907\u5907\u4efd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$c;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$c;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private n()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p0, "LAST_CALENDAR_AUTO_BACKUP_TIME"

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    const-string p0, "CALENDAR_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Ljava/lang/String;I)I

    move-result p0

    int-to-long v3, p0

    cmp-long p0, v0, v3

    if-lez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private o()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p0, "LAST_CONTACT_AUTO_BACKUP_TIME"

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    const-string p0, "CONTACT_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Ljava/lang/String;I)I

    move-result p0

    int-to-long v3, p0

    cmp-long p0, v0, v3

    if-lez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private p()Z
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/CrcAdlerUtil;->crc32([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->f:Ljava/lang/String;

    const-string v0, "CALENDAR_CRC"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    :try_start_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/utils/CalendarUtil;->getCalendarVersion()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 v1, -0x2

    const-string v2, "local_version"

    invoke-static {v2, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Ljava/lang/String;I)I

    move-result v1

    if-eq p0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_2
    return v0
.end method

.method public static put(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->g:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "taskId not null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private q()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p0, "LAST_SMS_AUTO_BACKUP_TIME"

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    const-string p0, "SMS_AUTO_SYNC_INTERNAL_SERVER_CONFIG"

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Ljava/lang/String;I)I

    move-result p0

    int-to-long v3, p0

    cmp-long p0, v0, v3

    if-lez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private r()Ljava/lang/String;
    .locals 4

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;-><init>()V

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;->queryCalendars()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->get_id()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getCalendarColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getCalendarAccessLevel()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getOwnerAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getVisible()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getMaxReminder()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getCalendarTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/CrcAdlerUtil;->crc32([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, "LCPAutoSyncTask"

    const-string v0, "No calendars."

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private s()Ljava/lang/String;
    .locals 5

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;-><init>()V

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;->queryEvents()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->get_id()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getEventLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDtStart()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDtEnd()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDuration()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getHasAttendeeData()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getAccessLevel()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getAvailability()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getEventTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getAllDay()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getrRule()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getCalendarId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getAttendees()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getReminders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/CrcAdlerUtil;->crc32([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private t()Z
    .locals 5

    const-string v0, "LCPAutoSyncTask"

    const-string v1, "\u5f00\u59cb\u68c0\u67e5\u8054\u7cfb\u4eba\u81ea\u52a8\u5907\u4efd\u6761\u4ef6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CONTACT_IS_AUTO_SYNC_SERVER_CONFIG"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "\u670d\u52a1\u5668\u81ea\u52a8\u5907\u4efd\u914d\u7f6e-\u8054\u7cfb\u4eba\u81ea\u52a8\u5907\u4efd\u5f00\u5173-\u5173\u95ed\uff0c \u68c0\u67e5\u5931\u8d25\u9000\u51fa"

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v1, "ONLINE_CONTACT_AUTO_BACKUP_KEY"

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->getEnum(Ljava/lang/Integer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    const-string p0, "\u5e94\u7528\u7a0b\u5e8f\u8bbe\u7f6e-\u7f51\u7edc\u7b56\u7565\uff0c\u4e0d\u5141\u8bb8\u4efb\u4f55\u7f51\u7edc\u60c5\u51b5\u4e0b\u81ea\u52a8\u5907\u4efd\u8054\u7cfb\u4eba\uff0c\u68c0\u67e5\u5931\u8d25\u9000\u51fa"

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->a:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/Networks;->isConnectionByNetworkStrategy(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "\u5f53\u524d\u8054\u7cfb\u4eba\u81ea\u52a8\u5907\u4efd\u7f51\u7edc\u7b56\u7565\u4e0d\u9002\u7528\u4e8e\u5f53\u524d\u5b9e\u9645\u7f51\u7edc\uff0c\u68c0\u67e5\u5931\u8d25\u9000\u51fa"

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->o()Z

    move-result v1

    if-nez v1, :cond_4

    const-string p0, "\u8ddd\u4e0a\u6b21\u5907\u4efd\u8054\u7cfb\u4eba\u6210\u529f\u540e\u65f6\u95f4\u6ca1\u6709\u8d85\u8fc7\u670d\u52a1\u5668\u81ea\u52a8\u5907\u4efd\u914d\u7f6e\u7684\u95f4\u9694\u65f6\u95f4\uff0c\u68c0\u67e5\u5931\u8d25\u9000\u51fa"

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->x()I

    move-result v1

    const/16 v4, 0xa

    if-ge v1, v4, :cond_5

    const-string p0, "\u672c\u5730\u8054\u7cfb\u4eba\u6570\u91cf\u5c0f\u4e8e10\u4e2a\uff0c\u68c0\u67e5\u5931\u8d25\u9000\u51fa"

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;->checkForContactAutoBackup()Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "\u4e0a\u6b21\u8054\u7cfb\u4eba\u5907\u4efd\u540e\uff0c\u672c\u5730\u6ca1\u6709\u4fee\u6539\uff0c \u68c0\u67e5\u5931\u8d25\u9000\u51fa"

    goto :goto_0

    :cond_6
    return v3
.end method

.method private u()Z
    .locals 2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;->CONTACT_PHOTO:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;->exist(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;->get(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;)Z

    move-result p0

    return p0
.end method

.method private v()Z
    .locals 5

    const-string v0, "LCPAutoSyncTask"

    const-string v1, "\u5f00\u59cb\u68c0\u67e5\u77ed\u4fe1\u81ea\u52a8\u5907\u4efd\u6761\u4ef6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SMS_IS_AUTO_SYNC_SERVER_CONFIG"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "\u670d\u52a1\u5668\u81ea\u52a8\u5907\u4efd\u914d\u7f6e-\u77ed\u4fe1\u81ea\u52a8\u5907\u4efd\u5f00\u5173-\u5173\u95ed\uff0c \u68c0\u67e5\u5931\u8d25\u9000\u51fa"

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v1, "ONLINE_SMS_AUTO_BACKUP_KEY"

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->getEnum(Ljava/lang/Integer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    const-string p0, "\u5e94\u7528\u7a0b\u5e8f\u8bbe\u7f6e-\u7f51\u7edc\u7b56\u7565\uff0c\u4e0d\u5141\u8bb8\u4efb\u4f55\u7f51\u7edc\u60c5\u51b5\u4e0b\u81ea\u52a8\u5907\u4efd\u77ed\u4fe1\uff0c\u68c0\u67e5\u5931\u8d25\u9000\u51fa"

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->a:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/Networks;->isConnectionByNetworkStrategy(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "\u5f53\u524d\u77ed\u4fe1\u81ea\u52a8\u5907\u4efd\u7f51\u7edc\u7b56\u7565\u4e0d\u9002\u7528\u4e8e\u5f53\u524d\u5b9e\u9645\u7f51\u7edc\uff0c\u68c0\u67e5\u5931\u8d25\u9000\u51fa"

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->q()Z

    move-result v1

    if-nez v1, :cond_4

    const-string p0, "\u8ddd\u4e0a\u6b21\u5907\u4efd\u77ed\u4fe1\u6210\u529f\u540e\u65f6\u95f4\u6ca1\u6709\u8d85\u8fc7\u670d\u52a1\u5668\u81ea\u52a8\u5907\u4efd\u914d\u7f6e\u7684\u95f4\u9694\u65f6\u95f4\uff0c\u68c0\u67e5\u5931\u8d25\u9000\u51fa"

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;->checkForSmsAutoBackup()Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "\u4e0a\u6b21\u77ed\u4fe1\u5907\u4efd\u540e\uff0c\u672c\u5730\u6ca1\u6709\u4fee\u6539\uff0c \u68c0\u67e5\u5931\u8d25\u9000\u51fa"

    goto :goto_0

    :cond_5
    return v3
.end method

.method private w()Z
    .locals 5

    const-string v0, "LCPAutoSyncTask"

    const-string v1, "\u5f00\u59cb\u68c0\u67e5\u65e5\u5386\u81ea\u52a8\u540c\u6b65\u6761\u4ef6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CALENDAR_IS_AUTO_SYNC_SERVER_CONFIG"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "\u670d\u52a1\u5668\u81ea\u52a8\u5907\u4efd\u914d\u7f6e-\u65e5\u5386\u81ea\u52a8\u540c\u6b65\u5f00\u5173-\u5173\u95ed\uff0c \u68c0\u67e5\u5931\u8d25\u9000\u51fa"

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v1, "ONLINE_CALENDAR_AUTO_SYNC_KEY"

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->getEnum(Ljava/lang/Integer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    const-string p0, "\u5e94\u7528\u7a0b\u5e8f\u8bbe\u7f6e-\u7f51\u7edc\u7b56\u7565\uff0c\u4e0d\u5141\u8bb8\u4efb\u4f55\u7f51\u7edc\u60c5\u51b5\u4e0b\u81ea\u52a8\u540c\u6b65\u65e5\u5386\uff0c\u68c0\u67e5\u5931\u8d25\u9000\u51fa"

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->a:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/Networks;->isConnectionByNetworkStrategy(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "\u5f53\u524d\u65e5\u5386\u81ea\u52a8\u540c\u6b65\u7f51\u7edc\u7b56\u7565\u4e0d\u9002\u7528\u4e8e\u5f53\u524d\u5b9e\u9645\u7f51\u7edc\uff0c\u68c0\u67e5\u5931\u8d25\u9000\u51fa"

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->n()Z

    move-result v1

    if-nez v1, :cond_4

    const-string p0, "\u8ddd\u4e0a\u6b21\u540c\u6b65\u65e5\u5386\u6210\u529f\u540e\u65f6\u95f4\u6ca1\u6709\u8d85\u8fc7\u670d\u52a1\u5668\u81ea\u52a8\u5907\u4efd\u914d\u7f6e\u7684\u95f4\u9694\u65f6\u95f4\uff0c\u68c0\u67e5\u5931\u8d25\u9000\u51fa"

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->p()Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "\u4e0a\u6b21\u65e5\u5386\u540c\u6b65\u540e\uff0c\u672c\u5730\u6ca1\u6709\u4fee\u6539\uff0c \u68c0\u67e5\u5931\u8d25\u9000\u51fa"

    goto :goto_0

    :cond_5
    return v3
.end method

.method private x()I
    .locals 0

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;-><init>()V

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryLocalContactNumber()I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private y()V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$a;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private z(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;

    move-result-object p1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$h;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    invoke-interface {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->setProgressListenter(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-interface {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->sync([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;)V

    return-void
.end method


# virtual methods
.method protected buildRunTask()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$g;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->l(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->m(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->k(Ljava/util/Map;)V

    return-object v0
.end method

.method public execute()V
    .locals 1

    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->startCheckAndBackup()Z

    return-void
.end method

.method protected sequenceRunTaskMap(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$g;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->d:Z

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$g;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$g;->a()V

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->A(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public startCheckAndBackup()Z
    .locals 5

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;->get(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;)Z

    move-result v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;->get(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;)Z

    move-result v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;->get(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "LCPAutoSyncTask"

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    const-string p0, "\u5e94\u7528\u7a0b\u5e8f\u8bbe\u7f6e\u2014\u81ea\u52a8\u5907\u4efd\u603b\u5f00\u5173\u5173\u95ed\uff0c\u9000\u51fa\u81ea\u52a8\u5907\u4efd"

    :goto_0
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->isUserLogin()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "PsAuthenServiceL\u68c0\u67e5\u5f53\u524d\u7528\u6237\u4e0d\u5728\u7ebf\uff0c\u9000\u51fa\u81ea\u52a8\u5907\u4efd"

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->y()V

    const/4 p0, 0x1

    return p0
.end method
