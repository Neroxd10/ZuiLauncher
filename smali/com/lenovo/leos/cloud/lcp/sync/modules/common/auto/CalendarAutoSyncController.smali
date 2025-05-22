.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncController;
.super Ljava/lang/Object;
.source ""


# static fields
.field static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doSync(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 3

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;

    move-result-object v0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-interface {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->setProgressListenter(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;->sync([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;)V

    return-void
.end method

.method public static getLastSyncTime()J
    .locals 3

    const-string v0, "LAST_CALENDAR_SYNC_TIME"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static setIsAutoSync(Z)V
    .locals 0

    sput-boolean p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/CalendarAutoSyncController;->a:Z

    return-void
.end method
