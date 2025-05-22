.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/AlbumUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final KEY_NORMAL_ALBUM_ID:Ljava/lang/String; = "photonormalalbumid"

.field public static final KEY_NORMAL_ALBUM_NAME:Ljava/lang/String; = "photonormalalbumname"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Z
    .locals 2

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static clearNormalAlbum()V
    .locals 1

    const-string v0, "photonormalalbumid"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    const-string v0, "photonormalalbumname"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 2

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;-><init>()V

    const-string v1, "0"

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    const-string v1, "\u9ed8\u8ba4\u76f8\u518c"

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public static getNormalAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 3

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;-><init>()V

    const-string v1, "photonormalalbumid"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    const-string v1, "photonormalalbumname"

    const-string v2, "\u9ed8\u8ba4\u76f8\u518c"

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public static getNormalAlbum(Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;"
        }
    .end annotation

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/AlbumUtils;->getNormalAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object v0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/AlbumUtils;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/AlbumUtils;->getDefaultAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/AlbumUtils;->saveNormalAlbum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)V

    return-object p0
.end method

.method public static saveNormalAlbum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    const-string v1, "photonormalalbumid"

    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    const-string v0, "photonormalalbumname"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
