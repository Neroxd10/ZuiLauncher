.class Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->m(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$d;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$d;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$d;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$d;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->h(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)I

    move-result p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->isResultNetErr(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network error,result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
