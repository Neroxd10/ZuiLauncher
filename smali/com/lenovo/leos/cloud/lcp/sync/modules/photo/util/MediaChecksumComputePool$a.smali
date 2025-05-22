.class Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/MediaChecksumComputePool$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/MediaChecksumComputePool;->compute(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/MediaChecksumComputePool;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/MediaChecksumComputePool;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/MediaChecksumComputePool$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/MediaChecksumComputePool;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/MediaChecksumComputePool$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "MediaChecksumComputePool"

    const-string v3, "start compute one"

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/MediaChecksumComputePool$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/MediaChecksumComputePool$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/MediaChecksumComputePool;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/MediaChecksumComputePool;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/MediaChecksumComputePool;)Z

    move-result p0

    invoke-static {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/MediaChecksumUtil;->computeChecksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish compute one use:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
