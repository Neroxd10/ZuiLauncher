.class Lcom/zui/launcher/LauncherStateManager$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private final a:Landroid/animation/AnimatorSet;

.field final synthetic b:Lcom/zui/launcher/LauncherStateManager;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/LauncherStateManager;Landroid/animation/AnimatorSet;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/launcher/LauncherStateManager$e;->b:Lcom/zui/launcher/LauncherStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean p1, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p1, :cond_0

    const-string p1, "b/133009122"

    const-string v0, "StartAnimRunnable"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p2, p0, Lcom/zui/launcher/LauncherStateManager$e;->a:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager$e;->b:Lcom/zui/launcher/LauncherStateManager;

    invoke-static {v0}, Lcom/zui/launcher/LauncherStateManager;->b(Lcom/zui/launcher/LauncherStateManager;)Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->a(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherStateManager$e;->a:Landroid/animation/AnimatorSet;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run animation intercept---------state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/LauncherStateManager$e;->b:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager$e;->b:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherState;->SPRING_LOADED:Lcom/zui/launcher/LauncherState;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager$e;->b:Lcom/zui/launcher/LauncherStateManager;

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
