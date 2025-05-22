.class Lcom/zui/launcher/util/FlingAnimation$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/util/FlingAnimation;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/util/FlingAnimation;


# direct methods
.method constructor <init>(Lcom/zui/launcher/util/FlingAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/util/FlingAnimation$b;->a:Lcom/zui/launcher/util/FlingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/util/FlingAnimation$b;->a:Lcom/zui/launcher/util/FlingAnimation;

    invoke-static {v0}, Lcom/zui/launcher/util/FlingAnimation;->a(Lcom/zui/launcher/util/FlingAnimation;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;)V

    iget-object v0, p0, Lcom/zui/launcher/util/FlingAnimation$b;->a:Lcom/zui/launcher/util/FlingAnimation;

    invoke-static {v0}, Lcom/zui/launcher/util/FlingAnimation;->b(Lcom/zui/launcher/util/FlingAnimation;)Lcom/zui/launcher/ButtonDropTarget;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/util/FlingAnimation$b;->a:Lcom/zui/launcher/util/FlingAnimation;

    iget-object p0, p0, Lcom/zui/launcher/util/FlingAnimation;->mDragObject:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/ButtonDropTarget;->completeDrop(Lcom/zui/launcher/DropTarget$DragObject;)V

    return-void
.end method
