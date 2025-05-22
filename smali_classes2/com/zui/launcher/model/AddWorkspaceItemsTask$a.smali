.class Lcom/zui/launcher/model/AddWorkspaceItemsTask$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherModel$CallbackTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/model/AddWorkspaceItemsTask;->execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/zui/launcher/util/IntArray;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lcom/zui/launcher/model/AddWorkspaceItemsTask;


# direct methods
.method constructor <init>(Lcom/zui/launcher/model/AddWorkspaceItemsTask;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/zui/launcher/util/IntArray;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/model/AddWorkspaceItemsTask$a;->e:Lcom/zui/launcher/model/AddWorkspaceItemsTask;

    iput-object p2, p0, Lcom/zui/launcher/model/AddWorkspaceItemsTask$a;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/zui/launcher/model/AddWorkspaceItemsTask$a;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/zui/launcher/model/AddWorkspaceItemsTask$a;->c:Lcom/zui/launcher/util/IntArray;

    iput-object p5, p0, Lcom/zui/launcher/model/AddWorkspaceItemsTask$a;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/zui/launcher/model/AddWorkspaceItemsTask$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/model/AddWorkspaceItemsTask$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget-object v1, p0, Lcom/zui/launcher/model/AddWorkspaceItemsTask$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/ItemInfo;

    iget v5, v4, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-ne v5, v0, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/zui/launcher/model/AddWorkspaceItemsTask$a;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zui/launcher/model/AddWorkspaceItemsTask$a;->c:Lcom/zui/launcher/util/IntArray;

    iget-object v5, p0, Lcom/zui/launcher/model/AddWorkspaceItemsTask$a;->d:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/zui/launcher/model/AddWorkspaceItemsTask$a;->e:Lcom/zui/launcher/model/AddWorkspaceItemsTask;

    iget-boolean v6, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->mForceExecute:Z

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindAppsAdded(Lcom/zui/launcher/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method
