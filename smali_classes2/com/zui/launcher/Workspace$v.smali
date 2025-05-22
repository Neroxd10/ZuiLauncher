.class Lcom/zui/launcher/Workspace$v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Workspace;->onDrop(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

.field final synthetic b:Lcom/zui/launcher/CellLayout;

.field final synthetic c:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/widget/LauncherAppWidgetHostView;Lcom/zui/launcher/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$v;->c:Lcom/zui/launcher/Workspace;

    iput-object p2, p0, Lcom/zui/launcher/Workspace$v;->a:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    iput-object p3, p0, Lcom/zui/launcher/Workspace$v;->b:Lcom/zui/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace$v;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->isPageInTransition()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Workspace$v;->c:Lcom/zui/launcher/Workspace;

    iget-object v0, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Workspace$v;->a:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    iget-object p0, p0, Lcom/zui/launcher/Workspace$v;->b:Lcom/zui/launcher/CellLayout;

    invoke-static {v0, p0}, Lcom/zui/launcher/AppWidgetResizeFrame;->showForWidget(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;Lcom/zui/launcher/CellLayout;)V

    :cond_0
    return-void
.end method
