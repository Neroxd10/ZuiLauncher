.class Lcom/zui/launcher/LauncherAppTransitionManagerImpl$b;
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

    iput-object p1, p0, Lcom/zui/launcher/LauncherAppTransitionManagerImpl$b;->a:Lcom/zui/launcher/LauncherAppTransitionManagerImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppTransitionManagerImpl$b;->a:Lcom/zui/launcher/LauncherAppTransitionManagerImpl;

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    return-void
.end method
