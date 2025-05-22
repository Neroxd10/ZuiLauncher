.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->a:Landroid/content/Context;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->b:Z

    return-void
.end method


# virtual methods
.method public doQueryCloudCount()I
    .locals 0

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;-><init>()V

    throw p0
.end method

.method public doQueryLocalEventCount()I
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->b:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->getEventCount()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;-><init>()V

    throw p0
.end method

.method public newBackupTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    .locals 1

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->b:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarBackupTask;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarBackupTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public newRestoreTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    .locals 1

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->b:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public newSyncTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    .locals 1

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->b:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
