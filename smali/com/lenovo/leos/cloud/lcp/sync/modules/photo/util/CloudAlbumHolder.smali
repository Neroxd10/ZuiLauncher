.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/CloudAlbumHolder;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCurrentAlbum()V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/CloudAlbumHolder;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->imagesList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public static getCurrentAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/CloudAlbumHolder;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;-><init>()V

    :cond_0
    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/CloudAlbumHolder;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    return-object v0
.end method

.method public static setCurrentAlbum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)V
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;-><init>()V

    :cond_0
    sput-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/CloudAlbumHolder;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    return-void
.end method
