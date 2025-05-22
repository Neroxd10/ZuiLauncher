.class Lcom/zui/launcher/Workspace$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Workspace;->animateWidgetDrop(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/dragndrop/DragDeleteView;Ljava/lang/Runnable;ILandroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$d;->c:Lcom/zui/launcher/Workspace;

    iput-object p2, p0, Lcom/zui/launcher/Workspace$d;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/launcher/Workspace$d;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace$d;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Workspace$d;->b:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
