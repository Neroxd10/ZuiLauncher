.class Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "n"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/zui/launcher/util/RunnableList;

.field final synthetic c:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;


# direct methods
.method constructor <init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Landroid/view/View;Lcom/zui/launcher/util/RunnableList;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->c:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->b:Lcom/zui/launcher/util/RunnableList;

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->b:Lcom/zui/launcher/util/RunnableList;

    invoke-virtual {p0}, Lcom/zui/launcher/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method

.method public onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;)V
    .locals 8

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->c:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    const/4 v6, 0x1

    invoke-virtual {v0, p2, v6}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->x([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z

    move-result v7

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->a:Landroid/view/View;

    instance-of v1, v0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    iget-object v2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->c:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v2, v0, p2}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->c:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    iget-object v1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->a:Landroid/view/View;

    move-object v2, v1

    check-cast v2, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->b(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Landroid/animation/AnimatorSet;Lcom/zui/launcher/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    iget-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->c:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    const/16 p3, 0x1b

    :goto_0
    invoke-static {p2, p1, p3}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->c(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Landroid/animation/Animator;I)V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->c:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    iget-object v2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->a:Landroid/view/View;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V

    iget-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->c:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    const/4 p3, 0x7

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->c:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    iget-object v2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->a:Landroid/view/View;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->d(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V

    iget-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->c:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    const/16 p3, 0x8

    invoke-static {p2, p1, p3}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->c(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Landroid/animation/Animator;I)V

    const/4 v6, 0x0

    :goto_1
    if-eqz v7, :cond_2

    iget-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->c:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    iget-object p2, p2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->f:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    iget-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->c:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    iget-object p2, p2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;->b:Lcom/zui/launcher/util/RunnableList;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/zui/launcher/h3;

    invoke-direct {p3, p0}, Lcom/zui/launcher/h3;-><init>(Lcom/zui/launcher/util/RunnableList;)V

    invoke-virtual {p5, p1, p2, p3, v6}, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V

    return-void
.end method
