.class public Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ProxyUploadListener"
.end annotation


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;->c:I

    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;->b:J

    return-void
.end method

.method private a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;->b:J

    const-string p0, "taskId"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p1
.end method


# virtual methods
.method public onFinish(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V

    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 8

    long-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;->c:I

    if-le v0, v1, :cond_0

    invoke-direct {p0, p5}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-wide v3, p1

    move-wide v5, p3

    invoke-interface/range {v2 .. v7}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;->c:I

    :cond_0
    return-void
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 6

    invoke-direct {p0, p5}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onSubProgress(JJLandroid/os/Bundle;)V

    return-void
.end method
