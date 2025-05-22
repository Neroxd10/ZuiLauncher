.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x1748c922842216dbL


# instance fields
.field private a:I

.field public albumId:Ljava/lang/String;

.field public albumName:Ljava/lang/String;

.field private b:I

.field private c:I

.field public coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

.field private d:I

.field public imagesList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public indexImagePath:Ljava/lang/String;

.field public lastModifyTime:Ljava/lang/String;

.field public offset:I

.field public pendingCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album$a;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album$a;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->imagesList:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->pendingCount:I

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;I)I
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->b:I

    return p1
.end method

.method public static clone(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 2

    instance-of v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/TimelineAlbum;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/TimelineAlbum;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/TimelineAlbum;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->b:I

    iput p0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->b:I

    return-object v0
.end method

.method public static getAlbum(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 8

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "name"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const-string v3, "photolist"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-direct {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;-><init>()V

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->title:Ljava/lang/String;

    const-string v6, "url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->downUrl:Ljava/lang/String;

    const-string v6, "size"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->size:J

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setImagesList(Ljava/util/LinkedList;)V

    return-object v0
.end method


# virtual methods
.method public cleanAlbum()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->offset:I

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->pendingCount:I

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->c:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->imagesList:Ljava/util/LinkedList;

    return-void
.end method

.method public cleanImage()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->offset:I

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->pendingCount:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->imagesList:Ljava/util/LinkedList;

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getBackupImagesCount()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->c:I

    return p0
.end method

.method public getImagesCount()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->b:I

    return p0
.end method

.method public getImagesList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->imagesList:Ljava/util/LinkedList;

    return-object p0
.end method

.method public getRestoreImagesCount()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->d:I

    return p0
.end method

.method public getTotalImageCount()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->a:I

    return p0
.end method

.method public hasImages()Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->imagesList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/lit16 p0, p0, 0x2378

    return p0
.end method

.method public increaseBackupImagesCount()V
    .locals 1

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->c:I

    return-void
.end method

.method public increaseRestoreImagesCount()V
    .locals 1

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->d:I

    return-void
.end method

.method public isFinalPage()Z
    .locals 2

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->getImagesCount()I

    move-result v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->offset:I

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->imagesList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    add-int/2addr v1, p0

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInCurPage(I)Z
    .locals 2

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->offset:I

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->imagesList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->offset:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPageBottom()Z
    .locals 1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->hasImages()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->isFinalPage()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBackupImagesCount(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->c:I

    return-void
.end method

.method public setImagesCount(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->b:I

    return-void
.end method

.method public setImagesList(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->imagesList:Ljava/util/LinkedList;

    return-void
.end method

.method public setImagesList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->imagesList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->imagesList:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setImagesList(Ljava/util/LinkedList;)V

    return-void
.end method

.method public setRestoreImagesCount(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->d:I

    return-void
.end method

.method public setTotalImageCount(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[albumId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "albumName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lastModifyTime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "imageIndexPath:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "imagesCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->getImagesCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
