.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x402c60e5481be850L


# instance fields
.field public backuped:Z

.field public newTimeSum:Z

.field public sameVersion:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;->backuped:Z

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;->newTimeSum:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;->sameVersion:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; backuped:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;->backuped:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
