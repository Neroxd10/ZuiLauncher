.class Lcom/zui/launcher/fenlei/FenLeiPanelView$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/fenlei/FenLeiPanelView;->executeOnePageAdd(Ljava/util/ArrayList;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/zui/launcher/fenlei/FenLeiPanelView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/fenlei/FenLeiPanelView;Ljava/util/ArrayList;II)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    iput-object p2, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->a:Ljava/util/ArrayList;

    iput p3, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->b:I

    iput p4, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {v0}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->c(Lcom/zui/launcher/fenlei/FenLeiPanelView;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {v0}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->c(Lcom/zui/launcher/fenlei/FenLeiPanelView;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {v0}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->c(Lcom/zui/launcher/fenlei/FenLeiPanelView;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {v1}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a(Lcom/zui/launcher/fenlei/FenLeiPanelView;)I

    move-result v1

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/Launcher;->moveItemAllToFolder(ILjava/util/ArrayList;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->getContent()Lcom/zui/launcher/folder/FolderPagedView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->getContentAreaWidth()I

    move-result v0

    iget-object v3, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {v3}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->c(Lcom/zui/launcher/fenlei/FenLeiPanelView;)Lcom/zui/launcher/Launcher;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {v4}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a(Lcom/zui/launcher/fenlei/FenLeiPanelView;)I

    move-result v4

    iget-object v5, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5, v2}, Lcom/zui/launcher/Launcher;->moveItemToFolder(ILjava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    iget v3, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->b:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v0, v3

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    iget-object v3, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v2, v1}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->animItemsToPosition(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->b:I

    iget v1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->c:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-virtual {v0}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->hideWithAnimate()V

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {v0}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->c(Lcom/zui/launcher/fenlei/FenLeiPanelView;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/category/AllAppsCategory;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/category/AllAppsCategory;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {p0}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->c(Lcom/zui/launcher/fenlei/FenLeiPanelView;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/category/AllAppsCategory;->showToastThird(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
