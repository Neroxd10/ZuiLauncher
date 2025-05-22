.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;
.source ""


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "image_chooser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALBUM_TYPE_NORMAL:I = 0x0

.field public static final ALBUM_TYPE_TIMELINE:I = 0x1


# instance fields
.field public albumId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "album_id"
    .end annotation
.end field

.field public albumName:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "album_name"
    .end annotation
.end field

.field public albumType:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "album_type"
    .end annotation
.end field

.field public choiceMode:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "choice_mode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;-><init>()V

    return-void
.end method


# virtual methods
.method public buildChooserItems(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;
    .locals 6

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)V

    iget p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->choiceMode:I

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->setChooserMode(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-class v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;

    const-string v4, "imageChooser"

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->getMany(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;

    iget-object v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;->choiceType:Ljava/lang/String;

    const-string v5, "checked"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v3, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;->imageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;->choiceType:Ljava/lang/String;

    const-string v5, "unchecked"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v3, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;->imageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;->choiceType:Ljava/lang/String;

    const-string v5, "ignore"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v3, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;->imageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->setCheckList(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceMode()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_4

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->setCheckList(Ljava/util/List;)V

    :cond_4
    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->setIgnoreList(Ljava/util/List;)V

    return-object v0
.end method

.method public clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;
    .locals 2

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->albumId:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->albumId:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->albumName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->albumName:Ljava/lang/String;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->albumType:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->albumType:I

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->choiceMode:I

    iput p0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->choiceMode:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;

    move-result-object p0

    return-object p0
.end method
