.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CHOICE_MODE_ALL:I = 0x1

.field public static final CHOICE_MODE_BIZ:I = 0x2

.field public static final CHOICE_MODE_SINGLE:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x67f942c32d666f41L


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser$a;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser$a;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->d:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->e:Ljava/util/Set;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "albumKey must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;I)I
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    return p1
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    return-object p1
.end method

.method private c(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public addCheckList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public chooseImage(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V
    .locals 2

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    iget-wide v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    iget-wide v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public chooseImage(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;I)V
    .locals 3

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    iget-wide v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    iget-wide p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public chooseImage(Ljava/lang/Long;I)V
    .locals 1

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearChoseImages()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearUselessImages()V
    .locals 3

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->e:Ljava/util/Set;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->e:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    :goto_1
    return-void
.end method

.method public clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;
    .locals 3

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->setChooserMode(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getCheckList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->setCheckList(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getIgnoreList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->setIgnoreList(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->d:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->setPositionList(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    return-object p0
.end method

.method public getAlbumImageCount()I
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->getImagesCount()I

    move-result p0

    return p0
.end method

.method public getAlbumKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    return-object p0
.end method

.method public getAlbumTotalImageCount()I
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->getTotalImageCount()I

    move-result p0

    return p0
.end method

.method public getCheckList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    return-object p0
.end method

.method public getChoiceCount()I
    .locals 2

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->getTotalImageCount()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->e:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    :goto_0
    sub-int/2addr v0, p0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->getTotalImageCount()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->getBackupImagesCount()I

    move-result p0

    goto :goto_0
.end method

.method public getChoiceIds()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getChoiceImageIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getChoiceImagePosition(Ljava/lang/Long;)I
    .locals 1

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->d:Ljava/util/List;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChoiceMode()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    return p0
.end method

.method public getIgnoreList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->e:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getUnchoiceImageIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public isCheckedAll()Z
    .locals 4

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->getTotalImageCount()I

    move-result v0

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->getBackupImagesCount()I

    move-result p0

    add-int/2addr v3, p0

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public isCheckedPart()Z
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isChoseImage(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Z
    .locals 5

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    iget-wide v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    iget-wide v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->e:Ljava/util/Set;

    iget-wide v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    iget-wide v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result p0

    if-nez p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public setCheckList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    return-void
.end method

.method public setChooserMode(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setIgnoreList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->e:Ljava/util/Set;

    return-void
.end method

.method public setPositionList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->d:Ljava/util/List;

    return-void
.end method

.method public unChooseImage(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V
    .locals 4

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    iget-wide v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    iget-wide v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    iget-wide v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    iget-wide v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public declared-synchronized updateSuccess(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->e:Ljava/util/Set;

    iget-wide v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    iget-wide v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    iget-wide v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    iget-wide v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->c:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
