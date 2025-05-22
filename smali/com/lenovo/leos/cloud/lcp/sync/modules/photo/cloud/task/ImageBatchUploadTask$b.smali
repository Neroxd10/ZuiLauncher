.class Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;->pagedUpload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$b;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$b;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$b;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$b;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    const v2, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;F)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$b;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$b;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-static {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;->f(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$b;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$b;->b:Ljava/util/Map;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-static {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;->g(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V

    return-void
.end method
