.class public Lcom/zui/launcher/FolderInfo;
.super Lcom/zui/launcher/ItemInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/FolderInfo$FolderListener;
    }
.end annotation


# static fields
.field public static final FLAG_ITEMS_SORTED:I = 0x1

.field public static final FLAG_MULTI_PAGE_ANIMATION:I = 0x4

.field public static final FLAG_WORK_FOLDER:I = 0x2

.field public static final NO_FLAGS:I


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

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/FolderInfo$FolderListener;",
            ">;"
        }
    .end annotation
.end field

.field public isRecommend:Z

.field public options:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/FolderInfo;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/FolderInfo;->isRecommend:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public add(Lcom/zui/launcher/WorkspaceItemInfo;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/zui/launcher/Utilities;->boundToRange(III)I

    move-result p2

    iget-object v0, p0, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/FolderInfo;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/FolderInfo;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/FolderInfo$FolderListener;

    invoke-interface {v0, p1, p2}, Lcom/zui/launcher/FolderInfo$FolderListener;->onAdd(Lcom/zui/launcher/WorkspaceItemInfo;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/zui/launcher/FolderInfo;->itemsChanged(Z)V

    return-void
.end method

.method public add(Lcom/zui/launcher/WorkspaceItemInfo;Z)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/zui/launcher/FolderInfo;->add(Lcom/zui/launcher/WorkspaceItemInfo;IZ)V

    return-void
.end method

.method public addListener(Lcom/zui/launcher/FolderInfo$FolderListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/FolderInfo;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public hasOption(I)Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/FolderInfo;->options:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public itemsChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/FolderInfo;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/FolderInfo;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/zui/launcher/FolderInfo$FolderListener;->onItemsChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAddToDatabase(Lcom/zui/launcher/util/ContentWriter;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zui/launcher/ItemInfo;->onAddToDatabase(Lcom/zui/launcher/util/ContentWriter;)V

    iget-object v0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object p1

    iget p0, p0, Lcom/zui/launcher/FolderInfo;->options:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "options"

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    return-void
.end method

.method public prepareAutoUpdate()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/FolderInfo;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/FolderInfo;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/FolderInfo$FolderListener;

    invoke-interface {v1}, Lcom/zui/launcher/FolderInfo$FolderListener;->prepareAutoUpdate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Lcom/zui/launcher/WorkspaceItemInfo;Z)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/FolderInfo;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/FolderInfo;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/zui/launcher/FolderInfo$FolderListener;->onRemove(Lcom/zui/launcher/WorkspaceItemInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/zui/launcher/FolderInfo;->itemsChanged(Z)V

    return-void
.end method

.method public removeAll()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/FolderInfo;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/FolderInfo;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/FolderInfo$FolderListener;

    invoke-interface {v1}, Lcom/zui/launcher/FolderInfo$FolderListener;->onRemoveAll()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAll(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/FolderInfo;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/FolderInfo;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/FolderInfo$FolderListener;

    invoke-interface {v2, v0}, Lcom/zui/launcher/FolderInfo$FolderListener;->onRemove(Lcom/zui/launcher/WorkspaceItemInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/zui/launcher/FolderInfo;->itemsChanged(Z)V

    return-void
.end method

.method public removeListener(Lcom/zui/launcher/FolderInfo$FolderListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/FolderInfo;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOption(IZLcom/zui/launcher/model/ModelWriter;)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/FolderInfo;->options:I

    if-eqz p2, :cond_0

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v0

    :goto_0
    iput p1, p0, Lcom/zui/launcher/FolderInfo;->options:I

    if-eqz p3, :cond_1

    iget p1, p0, Lcom/zui/launcher/FolderInfo;->options:I

    if-eq v0, p1, :cond_1

    invoke-virtual {p3, p0}, Lcom/zui/launcher/model/ModelWriter;->updateItemInDatabase(Lcom/zui/launcher/ItemInfo;)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/FolderInfo;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/FolderInfo;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/zui/launcher/FolderInfo$FolderListener;->onTitleChanged(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
