.class Lcom/zui/launcher/fenlei/FenLeiPanelView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/fenlei/FenLeiPanelView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/zui/launcher/fenlei/FenleiListView;

.field final synthetic d:Lcom/zui/launcher/fenlei/FenLeiPanelView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/fenlei/FenLeiPanelView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/zui/launcher/fenlei/FenleiListView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    iput-object p2, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->c:Lcom/zui/launcher/fenlei/FenleiListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->setEnabled(Landroid/widget/TextView;Z)V

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->setEnabled(Landroid/widget/TextView;Z)V

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->c:Lcom/zui/launcher/fenlei/FenleiListView;

    invoke-virtual {p1}, Lcom/zui/launcher/fenlei/FenleiListView;->getAllSelectedItems()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    iget-object v2, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->c:Lcom/zui/launcher/fenlei/FenleiListView;

    invoke-virtual {v2}, Lcom/zui/launcher/fenlei/FenleiListView;->getSize()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->trackEventSelectedItems(Z)V

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {v0}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->c(Lcom/zui/launcher/fenlei/FenLeiPanelView;)Lcom/zui/launcher/Launcher;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {v3}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a(Lcom/zui/launcher/fenlei/FenLeiPanelView;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->getCurrentSize(Lcom/zui/launcher/Launcher;I)I

    move-result v0

    iget-object v2, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {v2}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->c(Lcom/zui/launcher/fenlei/FenLeiPanelView;)Lcom/zui/launcher/Launcher;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {v3}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a(Lcom/zui/launcher/fenlei/FenLeiPanelView;)I

    move-result v3

    invoke-virtual {v2, v3, p1, v0}, Lcom/zui/launcher/Launcher;->moveItemToFolder(ILjava/util/ArrayList;I)I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    rem-int/2addr v0, v3

    if-nez v0, :cond_1

    invoke-static {v4}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->c(Lcom/zui/launcher/fenlei/FenLeiPanelView;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->getContentAreaWidth()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v4, p1, v2, v0}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->animItemsToPosition(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int v2, v0, v3

    rem-int/2addr v0, v3

    if-eqz v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_2
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-virtual {v0, p1, v1, v2}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->executeOnePageAdd(Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-virtual {p1}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->hideWithAnimate()V

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {p1}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->c(Lcom/zui/launcher/fenlei/FenLeiPanelView;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/category/AllAppsCategory;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/category/AllAppsCategory;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {v0}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->c(Lcom/zui/launcher/fenlei/FenLeiPanelView;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/category/AllAppsCategory;->showToastThird(Landroid/content/Context;)V

    :cond_4
    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->c:Lcom/zui/launcher/fenlei/FenleiListView;

    invoke-virtual {p1}, Lcom/zui/launcher/fenlei/FenleiListView;->getAllUnselectedItems()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {v0}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->b(Lcom/zui/launcher/fenlei/FenLeiPanelView;)Lcom/zui/launcher/category/CategorySettings;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-static {v1}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a(Lcom/zui/launcher/fenlei/FenLeiPanelView;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/zui/launcher/category/CategorySettings;->addFolderIgnorePackages(JLjava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-virtual {p0}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->trackEventAddClick()V

    return-void
.end method
