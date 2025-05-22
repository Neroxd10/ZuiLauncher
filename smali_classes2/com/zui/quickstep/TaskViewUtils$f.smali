.class Lcom/zui/quickstep/TaskViewUtils$f;
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

    iput-object p1, p0, Lcom/zui/quickstep/TaskViewUtils$f;->a:Lcom/zui/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/zui/quickstep/TaskViewUtils$f;->b:Lcom/zui/launcher/LauncherStateManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/LauncherStateManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->moveToRestState()V

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->reapplyState()V

    return-void
.end method

.method static synthetic b(Lcom/zui/quickstep/views/RecentsView;Lcom/zui/launcher/LauncherStateManager;)V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/w1;

    invoke-direct {v0, p1}, Lcom/zui/quickstep/w1;-><init>(Lcom/zui/launcher/LauncherStateManager;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/quickstep/TaskViewUtils$f;->a:Lcom/zui/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/zui/quickstep/TaskViewUtils$f;->b:Lcom/zui/launcher/LauncherStateManager;

    new-instance v0, Lcom/zui/quickstep/x1;

    invoke-direct {v0, p1, p0}, Lcom/zui/quickstep/x1;-><init>(Lcom/zui/quickstep/views/RecentsView;Lcom/zui/launcher/LauncherStateManager;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/zui/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    return-void
.end method
