.class Lcom/zui/launcher/folder/FolderPagedView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/FolderPagedView;->realTimeReorderAfterRemove(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:F

.field final synthetic c:I

.field final synthetic d:Lcom/zui/launcher/folder/FolderPagedView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/FolderPagedView;Landroid/view/View;FI)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderPagedView$b;->d:Lcom/zui/launcher/folder/FolderPagedView;

    iput-object p2, p0, Lcom/zui/launcher/folder/FolderPagedView$b;->a:Landroid/view/View;

    iput p3, p0, Lcom/zui/launcher/folder/FolderPagedView$b;->b:F

    iput p4, p0, Lcom/zui/launcher/folder/FolderPagedView$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderPagedView$b;->d:Lcom/zui/launcher/folder/FolderPagedView;

    iget-object v0, v0, Lcom/zui/launcher/folder/FolderPagedView;->q:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderPagedView$b;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderPagedView$b;->a:Landroid/view/View;

    iget v1, p0, Lcom/zui/launcher/folder/FolderPagedView$b;->b:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderPagedView$b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderPagedView$b;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderPagedView$b;->d:Lcom/zui/launcher/folder/FolderPagedView;

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderPagedView$b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    iget p0, p0, Lcom/zui/launcher/folder/FolderPagedView$b;->c:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/zui/launcher/folder/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;I)V

    return-void
.end method
