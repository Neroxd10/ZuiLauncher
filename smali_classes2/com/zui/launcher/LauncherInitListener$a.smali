.class Lcom/zui/launcher/LauncherInitListener$a;
.super Lcom/zui/quickstep/util/RemoteAnimationProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherInitListener;->init(Lcom/zui/launcher/Launcher;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/os/CancellationSignal;

.field final synthetic c:Lcom/zui/launcher/Launcher;

.field final synthetic d:Lcom/zui/launcher/LauncherInitListener;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherInitListener;Landroid/os/CancellationSignal;Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherInitListener$a;->d:Lcom/zui/launcher/LauncherInitListener;

    iput-object p2, p0, Lcom/zui/launcher/LauncherInitListener$a;->b:Landroid/os/CancellationSignal;

    iput-object p3, p0, Lcom/zui/launcher/LauncherInitListener$a;->c:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Lcom/zui/quickstep/util/RemoteAnimationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/LauncherInitListener$a;->b:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iget-object v0, p0, Lcom/zui/launcher/LauncherInitListener$a;->d:Lcom/zui/launcher/LauncherInitListener;

    invoke-static {v0}, Lcom/zui/launcher/LauncherInitListener;->b(Lcom/zui/launcher/LauncherInitListener;)Lcom/zui/quickstep/util/RemoteAnimationProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherInitListener$a;->d:Lcom/zui/launcher/LauncherInitListener;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/zui/launcher/LauncherInitListener;->c(Lcom/zui/launcher/LauncherInitListener;Lcom/zui/quickstep/util/RemoteAnimationProvider;)Lcom/zui/quickstep/util/RemoteAnimationProvider;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/LauncherInitListener$a;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object p0

    iget-boolean p0, p0, Lcom/zui/launcher/LauncherState;->overviewUi:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/zui/quickstep/util/RemoteAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v2
.end method
