.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CONTACT_CHECK:I = 0x2

.field public static final NEVER_CHECK:I = 0x0

.field public static final NEW_VERSION_CHECK:I = 0x1

.field public static final PHOTO_CHECK:I = 0x4

.field public static final SMS_CHECK:I = 0x3


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;->c:Landroid/content/Context;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/CheckFactory;->getContactCheckInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/CheckFactory;->getSmsCheckAutoInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck;

    return-void
.end method

.method private a(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;)Z
    .locals 0

    if-eqz p1, :cond_1

    iget p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opAdd:I

    if-nez p0, :cond_0

    iget p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opUpdate:I

    if-nez p0, :cond_0

    iget p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opDelete:I

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;)Z
    .locals 0

    if-eqz p1, :cond_1

    iget p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opAdd:I

    if-nez p0, :cond_0

    iget p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opUpdate:I

    if-nez p0, :cond_0

    iget p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opDelete:I

    if-eqz p0, :cond_1

    :cond_0
    iget-boolean p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;->newTimeSum:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;)Z
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opAdd:I

    if-nez v1, :cond_0

    iget v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opUpdate:I

    if-nez v1, :cond_0

    iget v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opDelete:I

    if-eqz v1, :cond_1

    :cond_0
    move v1, p0

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;->sameVersion:Z

    if-eqz v1, :cond_2

    iget p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opDelete:I

    const/16 v1, 0x32

    if-ge p1, v1, :cond_2

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    return p0
.end method


# virtual methods
.method public check(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck;->check()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    if-eqz p1, :cond_2

    iget v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opAdd:I

    if-nez v0, :cond_1

    iget v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opUpdate:I

    if-nez v0, :cond_1

    iget p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opDelete:I

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public checkForContactAutoBackup()Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck;->check()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;->c(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;)Z

    move-result p0

    return p0
.end method

.method public checkForContactBackup()Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck;->check()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;)Z

    move-result p0

    return p0
.end method

.method public checkForSmsAutoBackup()Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck;->check()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupRemindManager;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;)Z

    move-result p0

    return p0
.end method
