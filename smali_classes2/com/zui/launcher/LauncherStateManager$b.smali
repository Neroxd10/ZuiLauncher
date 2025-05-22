.class Lcom/zui/launcher/LauncherStateManager$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherStateManager;->i(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/LauncherState;

.field final synthetic b:Lcom/zui/launcher/LauncherState;

.field final synthetic c:Lcom/zui/launcher/LauncherStateManager;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherStateManager;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherStateManager$b;->c:Lcom/zui/launcher/LauncherStateManager;

    iput-object p2, p0, Lcom/zui/launcher/LauncherStateManager$b;->a:Lcom/zui/launcher/LauncherState;

    iput-object p3, p0, Lcom/zui/launcher/LauncherStateManager$b;->b:Lcom/zui/launcher/LauncherState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager$b;->a:Lcom/zui/launcher/LauncherState;

    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherStateManager$b;->c:Lcom/zui/launcher/LauncherStateManager;

    invoke-static {v1}, Lcom/zui/launcher/LauncherStateManager;->b(Lcom/zui/launcher/LauncherStateManager;)Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    move-result-object v1

    iget-wide v1, v1, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/Launcher;->applyDeskBlurSelfControl(J)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager$b;->b:Lcom/zui/launcher/LauncherState;

    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager$b;->c:Lcom/zui/launcher/LauncherStateManager;

    invoke-static {p0}, Lcom/zui/launcher/LauncherStateManager;->b(Lcom/zui/launcher/LauncherStateManager;)Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    move-result-object p0

    iget-wide v1, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/Launcher;->cancelDeskBlurSelfControl(J)V

    :cond_1
    return-void
.end method
