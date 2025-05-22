.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xcb1df280eb80381L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)I
    .locals 4

    const/4 p0, 0x0

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 v0, -0x1

    if-nez p2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return p0

    :cond_3
    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackup:I

    iget v3, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackup:I

    if-eq v2, v3, :cond_5

    if-ne v2, v1, :cond_4

    move v0, v1

    :cond_4
    return v0

    :cond_5
    iget-wide v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    iget-wide p1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    sub-long/2addr v2, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v2, p1

    if-lez p1, :cond_6

    move p0, v0

    goto :goto_0

    :cond_6
    if-gez p1, :cond_7

    move p0, v1

    :cond_7
    :goto_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;->compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)I

    move-result p0

    return p0
.end method
