.class Lcom/zui/launcher/LauncherAppTransitionManagerImpl$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherAppTransitionManagerImpl;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/LauncherAppTransitionManagerImpl;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherAppTransitionManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherAppTransitionManagerImpl$a;->a:Lcom/zui/launcher/LauncherAppTransitionManagerImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/LauncherAppTransitionManagerImpl$a;->a:Lcom/zui/launcher/LauncherAppTransitionManagerImpl;

    iget-object p1, p1, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherStateManager;->moveToRestState()V

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppTransitionManagerImpl$a;->a:Lcom/zui/launcher/LauncherAppTransitionManagerImpl;

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->reapplyState()V

    return-void
.end method
