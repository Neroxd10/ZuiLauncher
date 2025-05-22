.class Lcom/zui/quickstep/TaskViewUtils$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/zui/launcher/LauncherStateManager;Lcom/zui/quickstep/views/RecentsView;Lcom/zui/launcher/statehandlers/DepthController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/views/RecentsView;

.field final synthetic b:Lcom/zui/launcher/LauncherStateManager;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/views/RecentsView;Lcom/zui/launcher/LauncherStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/TaskViewUtils$g;->a:Lcom/zui/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/zui/quickstep/TaskViewUtils$g;->b:Lcom/zui/launcher/LauncherStateManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/LauncherStateManager;)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/quickstep/TaskViewUtils$g;->a:Lcom/zui/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/zui/quickstep/TaskViewUtils$g;->b:Lcom/zui/launcher/LauncherStateManager;

    new-instance v0, Lcom/zui/quickstep/y1;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/y1;-><init>(Lcom/zui/launcher/LauncherStateManager;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/zui/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    return-void
.end method
