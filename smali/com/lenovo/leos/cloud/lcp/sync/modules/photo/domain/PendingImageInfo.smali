.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/PendingImageInfo;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;
.source ""


# static fields
.field private static final serialVersionUID:J = -0x4f54933d0afbfd3bL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isBackuped()Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
