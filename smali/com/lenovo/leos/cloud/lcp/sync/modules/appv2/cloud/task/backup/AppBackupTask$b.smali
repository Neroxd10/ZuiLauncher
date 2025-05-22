.class Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->e(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTaskUtil;->doCheckSumByLocalNewApp(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->parseResultCode(Ljava/lang/Exception;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->isResultNetErr(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;

    invoke-static {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->f(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;I)I

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network error,result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    return-object v0
.end method
