.class Lcom/zui/launcher/Workspace$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Workspace;->F0([ILcom/zui/launcher/CellLayout;Lcom/zui/launcher/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$c;->a:Lcom/zui/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace$c;->a:Lcom/zui/launcher/Workspace;

    iget-object v0, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/zui/launcher/XDockView;->mAnimatorSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Workspace$c;->a:Lcom/zui/launcher/Workspace;

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/zui/launcher/Workspace$c$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/Workspace$c$a;-><init>(Lcom/zui/launcher/Workspace$c;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/XDockView;->postCallBackAfterAnimators(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
