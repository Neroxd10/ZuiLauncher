.class Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

.field private b:I

.field public c:Z

.field final synthetic d:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$g;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$g;->b:I

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$g;->c:Z

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$g;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$g;->c:Z

    return p0
.end method

.method public onFinish(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 0

    iget-object p5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$g;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;

    invoke-virtual {p5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result p5

    if-eqz p5, :cond_0

    return-void

    :cond_0
    cmp-long p5, p1, p3

    if-nez p5, :cond_1

    const/4 p5, 0x1

    iput-boolean p5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$g;->c:Z

    :cond_1
    const/high16 p5, 0x3f800000    # 1.0f

    long-to-float p1, p1

    mul-float/2addr p5, p1

    long-to-float p2, p3

    div-float/2addr p5, p2

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p5, p3

    float-to-int p3, p5

    iget p4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$g;->b:I

    if-ge p4, p3, :cond_2

    iput p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$g;->b:I

    iget-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$g;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$g;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    const p4, 0x3f7d70a4    # 0.99f

    mul-float/2addr p1, p4

    div-float/2addr p1, p2

    invoke-virtual {p3, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->broadcastProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;F)V

    :cond_2
    return-void
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
