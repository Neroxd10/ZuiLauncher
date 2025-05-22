.class Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;->prepareUpload()V

    const/4 p0, 0x0

    return-object p0
.end method
