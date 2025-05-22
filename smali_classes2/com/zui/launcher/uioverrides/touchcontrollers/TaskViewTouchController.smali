.class public abstract Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/TouchController;
.implements Lcom/zui/launcher/touch/SwipeDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zui/launcher/BaseDraggingActivity;",
        ">",
        "Landroid/animation/AnimatorListenerAdapter;",
        "Lcom/zui/launcher/util/TouchController;",
        "Lcom/zui/launcher/touch/SwipeDetector$Listener;"
    }
.end annotation


# static fields
.field public static final SUCCESS_TRANSITION_PROGRESS:F = 0.5f

.field private static final m:Ljava/lang/String;


# instance fields
.field private final a:Lcom/zui/launcher/touch/SwipeDetector;

.field private final b:Lcom/zui/quickstep/BaseRecentsView;

.field private final c:[I

.field private d:Lcom/zui/launcher/util/PendingAnimation;

.field private e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

.field private f:Z

.field private g:Z

.field private h:F

.field private i:F

.field private j:F

.field private k:Lcom/zui/launcher/util/FlingBlockCheck;

.field private l:Lcom/zui/quickstep/views/TaskView;

.field protected final mActivity:Lcom/zui/launcher/BaseDraggingActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->c:[I

    new-instance v0, Lcom/zui/launcher/util/FlingBlockCheck;

    invoke-direct {v0}, Lcom/zui/launcher/util/FlingBlockCheck;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->k:Lcom/zui/launcher/util/FlingBlockCheck;

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/BaseRecentsView;

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->b:Lcom/zui/quickstep/BaseRecentsView;

    new-instance v0, Lcom/zui/launcher/touch/SwipeDetector;

    sget-object v1, Lcom/zui/launcher/touch/SwipeDetector;->VERTICAL:Lcom/zui/launcher/touch/SwipeDetector$Direction;

    invoke-direct {v0, p1, p0, v1}, Lcom/zui/launcher/touch/SwipeDetector;-><init>(Landroid/content/Context;Lcom/zui/launcher/touch/SwipeDetector$Listener;Lcom/zui/launcher/touch/SwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->a:Lcom/zui/launcher/touch/SwipeDetector;

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    const v1, 0x7fcbf

    invoke-static {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenViewWithType(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->isRecentsInteractive()Z

    move-result p0

    return p0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->a:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/zui/launcher/touch/SwipeDetector;->finishedScrolling()V

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->a:Lcom/zui/launcher/touch/SwipeDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/zui/launcher/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->l:Lcom/zui/quickstep/views/TaskView;

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    iget-object v2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->d:Lcom/zui/launcher/util/PendingAnimation;

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Lcom/zui/launcher/util/PendingAnimation;->finish(ZI)V

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->d:Lcom/zui/launcher/util/PendingAnimation;

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->b()V

    return-void
.end method

.method private f(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->d:Lcom/zui/launcher/util/PendingAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/zui/launcher/util/PendingAnimation;->finish(ZI)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->d:Lcom/zui/launcher/util/PendingAnimation;

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->b()V

    return-void
.end method

.method private g(Z)V
    .locals 11

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->f:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->a:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/zui/launcher/touch/SwipeDetector;->getScrollDirections()I

    move-result v0

    if-eqz p1, :cond_1

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    :cond_1
    if-nez p1, :cond_3

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->d:Lcom/zui/launcher/util/PendingAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/zui/launcher/util/PendingAnimation;->finish(ZI)V

    iput-object v1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->d:Lcom/zui/launcher/util/PendingAnimation;

    :cond_5
    iput-boolean p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->f:Z

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v9, v2

    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->b:Lcom/zui/quickstep/BaseRecentsView;

    iget-object v4, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->l:Lcom/zui/quickstep/views/TaskView;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-wide v7, v9

    invoke-interface/range {v3 .. v8}, Lcom/zui/quickstep/BaseRecentsView;->createTaskDismissAnimation(Lcom/zui/quickstep/views/TaskView;ZZJ)Lcom/zui/launcher/util/PendingAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->d:Lcom/zui/launcher/util/PendingAnimation;

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->l:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    neg-int p1, p1

    :goto_0
    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->j:F

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->b:Lcom/zui/quickstep/BaseRecentsView;

    iget-object v2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->l:Lcom/zui/quickstep/views/TaskView;

    invoke-interface {p1, v2, v9, v10}, Lcom/zui/quickstep/BaseRecentsView;->createTaskMenuViewAnimation(Lcom/zui/quickstep/views/TaskView;J)Lcom/zui/launcher/util/PendingAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->d:Lcom/zui/launcher/util/PendingAnimation;

    iget-object p1, p1, Lcom/zui/launcher/util/PendingAnimation;->anim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController$b;

    invoke-direct {v2, p0, v1}, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController$b;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController$a;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->c:[I

    iget-object v2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->l:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    aput v2, p1, v3

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->l:Lcom/zui/quickstep/views/TaskView;

    iget-object v2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->c:[I

    invoke-virtual {v0, p1, v2}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->b:Lcom/zui/quickstep/BaseRecentsView;

    instance-of v2, p1, Lcom/zui/quickstep/views/RecentsView;

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->c:[I

    aget v0, v0, v3

    :goto_1
    sub-int/2addr p1, v0

    goto :goto_0

    :cond_7
    instance-of p1, p1, Lcom/zui/quickstep/views/RecentsViewForPad;

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0707be

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setOnCancelRunnable(Ljava/lang/Runnable;)V

    :cond_9
    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->d:Lcom/zui/launcher/util/PendingAnimation;

    iget-object p1, p1, Lcom/zui/launcher/util/PendingAnimation;->anim:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/zui/launcher/uioverrides/touchcontrollers/i;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/i;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;)V

    invoke-static {p1, v9, v10, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;JLjava/lang/Runnable;)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->onUserControlledAnimationCreated(Lcom/zui/launcher/anim/AnimatorPlaybackController;)V

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    const/high16 p1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->j:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->i:F

    return-void
.end method


# virtual methods
.method public synthetic d(ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->f(ZI)V

    return-void
.end method

.method public synthetic e(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->b:Lcom/zui/quickstep/BaseRecentsView;

    instance-of v0, p1, Lcom/zui/quickstep/views/RecentsView;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->f:Z

    if-eqz p0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/zui/quickstep/views/RecentsView;->redrawLiveTile()V

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lcom/zui/quickstep/views/RecentsViewForPad;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->m:Ljava/lang/String;

    const-string p1, "onDragEnd: anim.addUpdateListener"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method protected abstract isRecentsInteractive()Z
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->b()V

    :cond_0
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->a()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->g:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    const/4 v3, 0x3

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->l:Lcom/zui/quickstep/views/TaskView;

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->b:Lcom/zui/quickstep/BaseRecentsView;

    if-eqz v0, :cond_8

    instance-of v4, v0, Lcom/zui/quickstep/views/RecentsView;

    if-eqz v4, :cond_5

    check-cast v0, Lcom/zui/quickstep/views/RecentsView;

    move v4, v1

    :goto_0
    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {v0, v4}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/zui/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/zui/quickstep/views/TaskView;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {v6}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v6

    invoke-virtual {v6, v5, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_4

    iput-object v5, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->l:Lcom/zui/quickstep/views/TaskView;

    iget-object v5, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-static {v5}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v5

    iget-boolean v5, v5, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    if-nez v5, :cond_3

    if-ne v4, v0, :cond_2

    goto :goto_3

    :cond_2
    move v3, v2

    goto :goto_3

    :cond_3
    if-ne v4, v0, :cond_2

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    instance-of v4, v0, Lcom/zui/quickstep/views/RecentsViewForPad;

    if-eqz v4, :cond_8

    check-cast v0, Lcom/zui/quickstep/views/RecentsViewForPad;

    move v4, v1

    :goto_1
    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getVisibleCount()I

    move-result v5

    if-gt v4, v5, :cond_8

    invoke-virtual {v0, v4}, Lcom/zui/quickstep/views/RecentsViewForPad;->getVisibleTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {v6}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v6

    invoke-virtual {v6, v5, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_7

    iput-object v5, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->l:Lcom/zui/quickstep/views/TaskView;

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-static {v0}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    goto :goto_3

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    move v3, v1

    :goto_3
    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->l:Lcom/zui/quickstep/views/TaskView;

    if-nez v0, :cond_9

    iput-boolean v2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->g:Z

    return v1

    :cond_9
    move v2, v1

    :goto_4
    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->a:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {v0, v3, v2}, Lcom/zui/launcher/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    :cond_a
    iget-boolean v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->g:Z

    if-eqz v0, :cond_b

    return v1

    :cond_b
    invoke-virtual {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->a:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {p0}, Lcom/zui/launcher/touch/SwipeDetector;->isDraggingOrSettling()Z

    move-result p0

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->a:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDrag(F)Z
    .locals 5

    iget v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->h:F

    add-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->f:Z

    goto :goto_0

    :cond_0
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->f:Z

    if-eq v1, v3, :cond_2

    invoke-direct {p0, v1}, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->g(Z)V

    iget-object v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->k:Lcom/zui/launcher/util/FlingBlockCheck;

    invoke-virtual {v3}, Lcom/zui/launcher/util/FlingBlockCheck;->blockFling()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->k:Lcom/zui/launcher/util/FlingBlockCheck;

    invoke-virtual {v3}, Lcom/zui/launcher/util/FlingBlockCheck;->onEvent()V

    :goto_1
    iget-object v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    iget v4, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->i:F

    mul-float/2addr p1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v4}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result p1

    invoke-virtual {v3, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    sget-object p1, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {p1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->b:Lcom/zui/quickstep/BaseRecentsView;

    instance-of p1, p0, Lcom/zui/quickstep/views/RecentsView;

    if-eqz p1, :cond_4

    check-cast p0, Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result p1

    if-nez p1, :cond_3

    if-eqz v1, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->redrawLiveTile()V

    goto :goto_2

    :cond_4
    instance-of p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;

    if-eqz p1, :cond_5

    check-cast p0, Lcom/zui/quickstep/views/RecentsViewForPad;

    sget-object p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->m:Ljava/lang/String;

    const-string p1, "onDrag: instanceof RecentsViewForPad"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return v2
.end method

.method public onDragEnd(FZ)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->k:Lcom/zui/launcher/util/FlingBlockCheck;

    invoke-virtual {v2}, Lcom/zui/launcher/util/FlingBlockCheck;->isBlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    move p2, v1

    :cond_1
    iget-object v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v3}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v4}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getInterpolatedProgress()F

    move-result v4

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    const/4 p2, 0x4

    cmpg-float v4, p1, v5

    if-gez v4, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    iget-boolean v6, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->f:Z

    if-ne v4, v6, :cond_3

    :goto_2
    move v4, v0

    goto :goto_3

    :cond_3
    move v4, v1

    goto :goto_3

    :cond_4
    const/4 p2, 0x3

    iget-boolean v6, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->f:Z

    if-eqz v6, :cond_5

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    goto :goto_2

    :cond_5
    const v6, 0x3dea7efa    # 0.1145f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    goto :goto_2

    :goto_3
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_6

    sub-float v7, v6, v3

    goto :goto_4

    :cond_6
    move v7, v3

    :goto_4
    invoke-static {p1, v7}, Lcom/zui/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v7

    if-eqz v2, :cond_7

    if-nez v4, :cond_7

    invoke-static {p1}, Lcom/zui/launcher/LauncherAnimUtils;->blockedFlingDurationFactor(F)I

    move-result v2

    int-to-long v9, v2

    mul-long/2addr v7, v9

    :cond_7
    iget-object v2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-static {v2}, Lcom/zui/launcher/util/DefaultDisplay;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget v9, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->j:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v2, v9

    add-float/2addr v2, v3

    invoke-static {v2, v5, v6}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result v2

    iget-object v9, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    new-instance v10, Lcom/zui/launcher/uioverrides/touchcontrollers/j;

    invoke-direct {v10, p0, v4, p2}, Lcom/zui/launcher/uioverrides/touchcontrollers/j;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;ZI)V

    invoke-virtual {v9, v10}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p2}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p2

    iget-boolean v9, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->f:Z

    const/4 v10, 0x2

    if-eqz v9, :cond_9

    new-array v3, v10, [F

    aput v2, v3, v1

    if-eqz v4, :cond_8

    move v1, v6

    goto :goto_5

    :cond_8
    move v1, v5

    :goto_5
    aput v1, v3, v0

    invoke-virtual {p2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_7

    :cond_9
    new-array v9, v10, [F

    aput v2, v9, v1

    if-eqz v4, :cond_a

    move v2, v3

    goto :goto_6

    :cond_a
    move v2, v5

    :goto_6
    aput v2, v9, v0

    invoke-virtual {p2, v9}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    if-eqz v4, :cond_b

    new-array v2, v10, [F

    aput v3, v2, v1

    aput v3, v2, v0

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v7, 0xa

    :cond_b
    :goto_7
    invoke-virtual {p2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/zui/launcher/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/zui/launcher/uioverrides/touchcontrollers/k;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/k;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_c
    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->QUICKSTEP_SPRINGS:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz v4, :cond_d

    move v5, v6

    :cond_d
    invoke-virtual {p0, v5, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnStartWithVelocity(FF)V

    :cond_e
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onDragStart(Z)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->a:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/zui/launcher/touch/SwipeDetector;->wasInitialTouchPositive()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->g(Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->h:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result p1

    iget v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->i:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->h:F

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->pause()V

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->k:Lcom/zui/launcher/util/FlingBlockCheck;

    invoke-virtual {p0}, Lcom/zui/launcher/util/FlingBlockCheck;->unblockFling()V

    return-void
.end method

.method protected onUserControlledAnimationCreated(Lcom/zui/launcher/anim/AnimatorPlaybackController;)V
    .locals 0

    return-void
.end method
