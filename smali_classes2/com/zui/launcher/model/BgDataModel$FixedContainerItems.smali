.class public Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/model/BgDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedContainerItems"
.end annotation


# instance fields
.field public final containerId:I

.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;->containerId:I

    iput-object p2, p0, Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/zui/launcher/ItemInfo;)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;->containerId:I

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget-object p0, p0, Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;
    .locals 3

    new-instance v0, Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;

    iget v1, p0, Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;->containerId:I

    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;->clone()Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;

    move-result-object p0

    return-object p0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/zui/launcher/model/r;

    invoke-direct {v0, p0}, Lcom/zui/launcher/model/r;-><init>(Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
