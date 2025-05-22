.class public Lcom/zui/launcher/LayoutInfo;
.super Lcom/zui/launcher/ItemInfo;
.source ""


# instance fields
.field public contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/LayoutInfo;->contents:Ljava/util/ArrayList;

    const/4 v0, 0x5

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    return-void
.end method


# virtual methods
.method public add(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LayoutInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LayoutInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getInfoAt(I)Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LayoutInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/WorkspaceItemInfo;

    return-object p0
.end method

.method public remove(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LayoutInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAll()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LayoutInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
