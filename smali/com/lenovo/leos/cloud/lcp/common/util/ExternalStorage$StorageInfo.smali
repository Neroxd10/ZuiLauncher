.class public Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageInfo"
.end annotation


# static fields
.field public static final DISK_TYPE_EMULATED:I = 0x1

.field public static final DISK_TYPE_REMOVABLE:I = 0x2

.field public static final DISK_TYPE_UNKNOWN:I


# instance fields
.field public availableBlocks:I

.field public availableSpace:J

.field public diskType:I

.field public rootPath:Ljava/lang/String;

.field public totalSpace:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    if-eq p0, p1, :cond_2

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public likes(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->availableBlocks:I

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->availableSpace:J

    iget-wide v4, p1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->availableSpace:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->availableBlocks:I

    if-ne v1, v2, :cond_2

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->totalSpace:J

    iget-wide p0, p1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->totalSpace:J

    cmp-long p0, v1, p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method
