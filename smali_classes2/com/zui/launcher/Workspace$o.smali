.class Lcom/zui/launcher/Workspace$o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Workspace;->R(IILjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/CellLayout;

.field final synthetic b:Z

.field final synthetic c:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/CellLayout;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$o;->c:Lcom/zui/launcher/Workspace;

    iput-object p2, p0, Lcom/zui/launcher/Workspace$o;->a:Lcom/zui/launcher/CellLayout;

    iput-boolean p3, p0, Lcom/zui/launcher/Workspace$o;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace$o;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/Workspace$o;->c:Lcom/zui/launcher/Workspace;

    iget-object v0, v0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace$o;->c:Lcom/zui/launcher/Workspace;

    iget-object v0, v0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/IntArray;->removeValue(I)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace$o;->c:Lcom/zui/launcher/Workspace;

    iget-object v1, p0, Lcom/zui/launcher/Workspace$o;->a:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/zui/launcher/Workspace$o;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Workspace$o;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->stripEmptyScreens()V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Workspace$o;->c:Lcom/zui/launcher/Workspace;

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->showPageIndicatorAtCurrentScroll()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/Workspace$o;->a:Lcom/zui/launcher/CellLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method
