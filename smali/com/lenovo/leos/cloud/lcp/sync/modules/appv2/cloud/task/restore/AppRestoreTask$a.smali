.class Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->h(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$a;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$a;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->appDownloadExecutor(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/lang/String;)I

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

    const-string v2, "Network error:result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
