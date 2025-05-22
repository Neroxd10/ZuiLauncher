.class public Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field private b:Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;

.field private c:J

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;JLcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard$TimeoutCallBackListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->d:Z

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->e:I

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->f:I

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->c:J

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-TimeoutGuard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->b:Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;

    invoke-virtual {p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->setTimeoutThreshold(J)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->b:Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;

    invoke-virtual {p0, p4}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->setTimeoutListener(Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard$TimeoutCallBackListener;)V

    return-void
.end method


# virtual methods
.method public getDelegatedListener()Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    return-object p0
.end method

.method public onFinish(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->b:Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->stop()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V

    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->b:Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->checkin()V

    long-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->e:I

    if-ge v1, v0, :cond_0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->e:I

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->b:Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->start()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->d:Z

    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->b:Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->checkin()V

    long-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->f:I

    if-ge v1, v0, :cond_0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->f:I

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onSubProgress(JJLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
