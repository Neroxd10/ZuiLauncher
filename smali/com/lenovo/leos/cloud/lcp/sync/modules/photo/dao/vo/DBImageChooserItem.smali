.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;
.source ""


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "image_chooser_item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHOICE_TYPE_CHECKED:Ljava/lang/String; = "checked"

.field public static final CHOICE_TYPE_IGNORE:Ljava/lang/String; = "ignore"

.field public static final CHOICE_TYPE_UNCHECKED:Ljava/lang/String; = "unchecked"


# instance fields
.field public choiceType:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "choice_type"
    .end annotation
.end field

.field public imageChooser:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "imageChooser"
    .end annotation
.end field

.field public imageId:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "image_id"
        unique = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;->imageChooser:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;

    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;->imageId:J

    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;->choiceType:Ljava/lang/String;

    return-void
.end method

.method public static convertFrom(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, p0, v3, v4, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;JLjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;
    .locals 4

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;->imageChooser:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;->imageId:J

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;->choiceType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;JLjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;->clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;

    move-result-object p0

    return-object p0
.end method
