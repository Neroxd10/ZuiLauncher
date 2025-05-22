.class Lcom/zui/launcher/LauncherModel$w;
.super Lcom/zui/launcher/model/BaseModelUpdateTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->updateAndBindWorkspaceItem(Ljava/util/function/Supplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherModel;Ljava/util/function/Supplier;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/LauncherModel$w;->f:Ljava/util/function/Supplier;

    invoke-direct {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/LauncherModel$w;->f:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/launcher/model/ModelWriter;->updateItemInDatabase(Lcom/zui/launcher/ItemInfo;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lcom/zui/launcher/model/BaseModelUpdateTask;->bindUpdatedWorkspaceItems(Ljava/util/ArrayList;)V

    return-void
.end method
