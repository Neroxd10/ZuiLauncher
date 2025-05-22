.class Lcom/zui/launcher/Launcher$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->bindItems(Ljava/util/List;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;ILjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$i;->c:Lcom/zui/launcher/Launcher;

    iput p2, p0, Lcom/zui/launcher/Launcher$i;->a:I

    iput-object p3, p0, Lcom/zui/launcher/Launcher$i;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Launcher$i;->c:Lcom/zui/launcher/Launcher;

    iget-object v1, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;Z)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher$i;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseDraggingActivity;->fastFinishFIVIfNeeded()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher$i;->c:Lcom/zui/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/BaseDraggingActivity;->setIgnoreWorkspaceView(Z)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher$i;->c:Lcom/zui/launcher/Launcher;

    iget-object v0, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v1, p0, Lcom/zui/launcher/Launcher$i;->a:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    iget-object v0, p0, Lcom/zui/launcher/Launcher$i;->c:Lcom/zui/launcher/Launcher;

    iget-object v0, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget-object p0, p0, Lcom/zui/launcher/Launcher$i;->b:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
