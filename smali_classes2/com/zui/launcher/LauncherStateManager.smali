.class public Lcom/zui/launcher/LauncherStateManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/LauncherStateManager$StateListener;,
        Lcom/zui/launcher/LauncherStateManager$StateHandler;,
        Lcom/zui/launcher/LauncherStateManager$AnimationConfig;,
        Lcom/zui/launcher/LauncherStateManager$e;,
        Lcom/zui/launcher/LauncherStateManager$AnimationComponents;
    }
.end annotation


# static fields
.field public static final ANIM_ALL:I = 0x7

.field public static final ATOMIC_OVERVIEW_PEEK_COMPONENT:I = 0x4

.field public static final ATOMIC_OVERVIEW_SCALE_COMPONENT:I = 0x2

.field public static final NON_ATOMIC_COMPONENT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "StateManager"


# instance fields
.field private final a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/zui/launcher/Launcher;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/LauncherStateManager$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:[Landroid/animation/Animator;

.field private f:[Lcom/zui/launcher/LauncherStateManager$StateHandler;

.field private g:Lcom/zui/launcher/LauncherState;

.field private h:Lcom/zui/launcher/LauncherState;

.field private i:Lcom/zui/launcher/LauncherState;

.field private j:Lcom/zui/launcher/LauncherState;

.field private k:Lcom/zui/launcher/LauncherState;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-direct {v0}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->d:Ljava/util/ArrayList;

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    iput-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->g:Lcom/zui/launcher/LauncherState;

    iput-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->h:Lcom/zui/launcher/LauncherState;

    iput-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->i:Lcom/zui/launcher/LauncherState;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/LauncherStateManager;Lcom/zui/launcher/LauncherState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->n(Lcom/zui/launcher/LauncherState;)V

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/LauncherStateManager;)Lcom/zui/launcher/LauncherStateManager$AnimationConfig;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/LauncherStateManager;Lcom/zui/launcher/LauncherState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->l(Lcom/zui/launcher/LauncherState;)V

    return-void
.end method

.method static synthetic d(Lcom/zui/launcher/LauncherStateManager;Lcom/zui/launcher/LauncherState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->k(Lcom/zui/launcher/LauncherState;)V

    return-void
.end method

.method static synthetic e(Lcom/zui/launcher/LauncherStateManager;)[Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->e:[Landroid/animation/Animator;

    return-object p0
.end method

.method private f()V
    .locals 3

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->e:[Landroid/animation/Animator;

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->a(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->a(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0, v1}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->b(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    iput-object v1, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    iput-object v1, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackControllerVR:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    return-void
.end method

.method private h(Lcom/zui/launcher/LauncherState;ZJLjava/lang/Runnable;)V
    .locals 7

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/LauncherStateManager;->setLaunOrientationBeforeIntoRecent(Lcom/zui/launcher/LauncherState;Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->n(Lcom/zui/launcher/LauncherState;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->areAnimationsEnabled(Landroid/content/Context;)Z

    move-result v0

    and-int/2addr p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "goToState from :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/LauncherStateManager;->g:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", animated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToState :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->a(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getStateHandlers()[Lcom/zui/launcher/LauncherStateManager$StateHandler;

    move-result-object p2

    array-length p3, p2

    :goto_0
    if-ge v2, p3, :cond_0

    aget-object p4, p2, v2

    invoke-interface {p4, p1}, Lcom/zui/launcher/LauncherStateManager$StateHandler;->setState(Lcom/zui/launcher/LauncherState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-direct {p0, v1}, Lcom/zui/launcher/LauncherStateManager;->n(Lcom/zui/launcher/LauncherState;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    iget-boolean v3, v0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    if-nez v3, :cond_4

    if-eqz p2, :cond_4

    invoke-static {v0}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->c(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)Lcom/zui/launcher/LauncherState;

    move-result-object v0

    if-ne v0, p1, :cond_4

    if-eqz p5, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {p1}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->a(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance p2, Lcom/zui/launcher/LauncherStateManager$a;

    invoke-direct {p2, p0, p5}, Lcom/zui/launcher/LauncherStateManager$a;-><init>(Lcom/zui/launcher/LauncherStateManager;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    return-void

    :cond_4
    iget-object v4, p0, Lcom/zui/launcher/LauncherStateManager;->g:Lcom/zui/launcher/LauncherState;

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->reset()V

    if-nez p2, :cond_7

    invoke-direct {p0}, Lcom/zui/launcher/LauncherStateManager;->f()V

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->l(Lcom/zui/launcher/LauncherState;)V

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getStateHandlers()[Lcom/zui/launcher/LauncherStateManager$StateHandler;

    move-result-object p2

    array-length p3, p2

    :goto_1
    if-ge v2, p3, :cond_5

    aget-object p4, p2, v2

    invoke-interface {p4, p1}, Lcom/zui/launcher/LauncherStateManager$StateHandler;->setState(Lcom/zui/launcher/LauncherState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->k(Lcom/zui/launcher/LauncherState;)V

    if-eqz p5, :cond_6

    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_6
    invoke-direct {p0, v1}, Lcom/zui/launcher/LauncherStateManager;->n(Lcom/zui/launcher/LauncherState;)V

    return-void

    :cond_7
    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-lez p2, :cond_8

    iget-object p2, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {p2}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->d(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)I

    move-result v2

    iget-object p2, p0, Lcom/zui/launcher/LauncherStateManager;->b:Landroid/os/Handler;

    new-instance v6, Lcom/zui/launcher/z1;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/z1;-><init>(Lcom/zui/launcher/LauncherStateManager;ILcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v6, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_8
    invoke-direct {p0, p1, v4, p5}, Lcom/zui/launcher/LauncherStateManager;->i(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;Ljava/lang/Runnable;)V

    :goto_2
    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/LauncherStateManager;->m(Lcom/zui/launcher/LauncherState;Landroid/content/Context;)V

    return-void
.end method

.method private i(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p1, v1, :cond_0

    iget v1, p2, Lcom/zui/launcher/LauncherState;->transitionDuration:I

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/zui/launcher/LauncherState;->transitionDuration:I

    :goto_0
    int-to-long v1, v1

    iput-wide v1, v0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->duration:J

    new-instance v0, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    invoke-virtual {p0, p2, p1, v0}, Lcom/zui/launcher/LauncherStateManager;->prepareForAtomicAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/zui/launcher/LauncherStateManager;->createAnimationToNewWorkspaceInternal(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object p3

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->b:Landroid/os/Handler;

    new-instance v1, Lcom/zui/launcher/LauncherStateManager$e;

    invoke-direct {v1, p0, p3}, Lcom/zui/launcher/LauncherStateManager$e;-><init>(Lcom/zui/launcher/LauncherStateManager;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p3, p0, Lcom/zui/launcher/LauncherStateManager;->b:Landroid/os/Handler;

    new-instance v0, Lcom/zui/launcher/LauncherStateManager$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/launcher/LauncherStateManager$b;-><init>(Lcom/zui/launcher/LauncherStateManager;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private k(Lcom/zui/launcher/LauncherState;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->i:Lcom/zui/launcher/LauncherState;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherState;->getHistoryForState(Lcom/zui/launcher/LauncherState;)Lcom/zui/launcher/LauncherState;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->h:Lcom/zui/launcher/LauncherState;

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentStableState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b/133867119"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/LauncherStateManager;->i:Lcom/zui/launcher/LauncherState;

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherState;->onStateTransitionEnd(Lcom/zui/launcher/Launcher;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    iget-boolean v1, p1, Lcom/zui/launcher/LauncherState;->disablePageClipping:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseDraggingActivity;->finishAutoCancelActionMode()Z

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherStateManager;->setRestState(Lcom/zui/launcher/LauncherState;)V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->onLauncherStateOrResumeChanged(Lcom/zui/launcher/Launcher;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/zui/launcher/LauncherStateManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LauncherStateManager$StateListener;

    invoke-interface {v1, p1}, Lcom/zui/launcher/LauncherStateManager$StateListener;->onStateTransitionComplete(Lcom/zui/launcher/LauncherState;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    iget p1, p1, Lcom/zui/launcher/LauncherState;->ordinal:I

    invoke-static {p0, p1}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    return-void
.end method

.method private l(Lcom/zui/launcher/LauncherState;)V
    .locals 3

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/LauncherStateManager;->m(Lcom/zui/launcher/LauncherState;Landroid/content/Context;)V

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    iget-wide v1, v1, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/Launcher;->cancelDeskBlurSelfControl(J)V

    :cond_0
    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_1

    const-string v0, "b/133009122"

    const-string v1, "onStateTransitionStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->g:Lcom/zui/launcher/LauncherState;

    if-eq v0, p1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/LauncherState;->onStateDisabled(Lcom/zui/launcher/Launcher;)V

    :cond_2
    iput-object p1, p0, Lcom/zui/launcher/LauncherStateManager;->g:Lcom/zui/launcher/LauncherState;

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherState;->onStateEnabled(Lcom/zui/launcher/Launcher;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    iget-object v1, p0, Lcom/zui/launcher/LauncherStateManager;->g:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->onStateSet(Lcom/zui/launcher/LauncherState;)V

    iget-boolean v0, p1, Lcom/zui/launcher/LauncherState;->disablePageClipping:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->onLauncherStateOrResumeChanged(Lcom/zui/launcher/Launcher;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/zui/launcher/LauncherStateManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LauncherStateManager$StateListener;

    invoke-interface {v1, p1}, Lcom/zui/launcher/LauncherStateManager$StateListener;->onStateTransitionStart(Lcom/zui/launcher/LauncherState;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private m(Lcom/zui/launcher/LauncherState;Landroid/content/Context;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    return-void
.end method

.method private n(Lcom/zui/launcher/LauncherState;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherStateManager;->k:Lcom/zui/launcher/LauncherState;

    return-void
.end method


# virtual methods
.method public addStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->reset()V

    return-void
.end method

.method public cancelStateElementAnimation(I)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->e:[Landroid/animation/Animator;

    if-nez p0, :cond_0

    return-void

    :cond_0
    aget-object v0, p0, p1

    if-eqz v0, :cond_1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method public createAnimationToNewWorkspace(Lcom/zui/launcher/LauncherState;J)Lcom/zui/launcher/anim/AnimatorPlaybackController;
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zui/launcher/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/zui/launcher/LauncherState;JI)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p0

    return-object p0
.end method

.method public createAnimationToNewWorkspace(Lcom/zui/launcher/LauncherState;JI)Lcom/zui/launcher/anim/AnimatorPlaybackController;
    .locals 7

    new-instance v2, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v2}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;JLjava/lang/Runnable;I)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p0

    return-object p0
.end method

.method public createAnimationToNewWorkspace(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;J)Lcom/zui/launcher/anim/AnimatorPlaybackController;
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->j:Lcom/zui/launcher/LauncherState;

    iput-object p2, p0, Lcom/zui/launcher/LauncherStateManager;->j:Lcom/zui/launcher/LauncherState;

    iget-object v1, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->reset()V

    iput-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->j:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getStateHandlers()[Lcom/zui/launcher/LauncherStateManager$StateHandler;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/zui/launcher/LauncherStateManager$StateHandler;->setState(Lcom/zui/launcher/LauncherState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/zui/launcher/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/zui/launcher/LauncherState;J)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p0

    return-object p0
.end method

.method public createAnimationToNewWorkspace(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;JLjava/lang/Runnable;I)Lcom/zui/launcher/anim/AnimatorPlaybackController;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->reset()V

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    iput p6, v0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->animComponents:I

    iput-wide p3, v0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->duration:J

    const/4 p6, 0x0

    invoke-virtual {p0, p1, p2, p6}, Lcom/zui/launcher/LauncherStateManager;->createAnimationToNewWorkspaceInternal(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-static {p1, p3, p4, p5}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;JLjava/lang/Runnable;)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    return-object p0
.end method

.method protected createAnimationToNewWorkspaceInternal(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .locals 5

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateManager"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAnimationToNewWorkspaceInternal:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getStateHandlers()[Lcom/zui/launcher/LauncherStateManager$StateHandler;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-interface {v3, p1, p2, v4}, Lcom/zui/launcher/LauncherStateManager$StateHandler;->setStateWithAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object p2

    new-instance v0, Lcom/zui/launcher/LauncherStateManager$c;

    invoke-direct {v0, p0, p1, p3}, Lcom/zui/launcher/LauncherStateManager$c;-><init>(Lcom/zui/launcher/LauncherStateManager;Lcom/zui/launcher/LauncherState;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p3, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {p3, p2, p1}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->setAnimation(Landroid/animation/AnimatorSet;Lcom/zui/launcher/LauncherState;)V

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {p0}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->a(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public createAtomicAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;IJ)Landroid/animation/AnimatorSet;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/LauncherStateManager;->prepareForAtomicAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;)V

    new-instance p1, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-direct {p1}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;-><init>()V

    iput p4, p1, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->animComponents:I

    iput-wide p5, p1, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->duration:J

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getStateHandlers()[Lcom/zui/launcher/LauncherStateManager$StateHandler;

    move-result-object p0

    array-length p4, p0

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_0

    aget-object p6, p0, p5

    invoke-interface {p6, p2, p3, p1}, Lcom/zui/launcher/LauncherStateManager$StateHandler;->setStateWithAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public varargs createStateElementAnimation(I[F)Landroid/animation/Animator;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->cancelStateElementAnimation(I)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAppTransitionManager()Lcom/zui/launcher/LauncherAppTransitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherStateManager;->e:[Landroid/animation/Animator;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppTransitionManager;->getStateElementAnimationsCount()I

    move-result v1

    new-array v1, v1, [Landroid/animation/Animator;

    iput-object v1, p0, Lcom/zui/launcher/LauncherStateManager;->e:[Landroid/animation/Animator;

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/zui/launcher/LauncherAppTransitionManager;->createStateElementAnimation(I[F)Landroid/animation/Animator;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->e:[Landroid/animation/Animator;

    aput-object p2, v0, p1

    new-instance v0, Lcom/zui/launcher/LauncherStateManager$d;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/LauncherStateManager$d;-><init>(Lcom/zui/launcher/LauncherStateManager;I)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p2
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LauncherState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmLastStableState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/LauncherStateManager;->h:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmCurrentStableState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/LauncherStateManager;->i:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/LauncherStateManager;->g:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmRestState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/LauncherStateManager;->j:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tisInTransition:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {p0}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->a(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentStableState()Lcom/zui/launcher/LauncherState;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->i:Lcom/zui/launcher/LauncherState;

    return-object p0
.end method

.method public getLastState()Lcom/zui/launcher/LauncherState;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->h:Lcom/zui/launcher/LauncherState;

    return-object p0
.end method

.method public getRestState()Lcom/zui/launcher/LauncherState;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->j:Lcom/zui/launcher/LauncherState;

    if-nez p0, :cond_0

    sget-object p0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    :cond_0
    return-object p0
.end method

.method public getState()Lcom/zui/launcher/LauncherState;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->g:Lcom/zui/launcher/LauncherState;

    return-object p0
.end method

.method public getStateHandlers()[Lcom/zui/launcher/LauncherStateManager$StateHandler;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->f:[Lcom/zui/launcher/LauncherStateManager$StateHandler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/uioverrides/UiFactory;->getStateHandler(Lcom/zui/launcher/Launcher;)[Lcom/zui/launcher/LauncherStateManager$StateHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->f:[Lcom/zui/launcher/LauncherStateManager$StateHandler;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->f:[Lcom/zui/launcher/LauncherStateManager$StateHandler;

    return-object p0
.end method

.method public getTargetState()Lcom/zui/launcher/LauncherState;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->k:Lcom/zui/launcher/LauncherState;

    return-object p0
.end method

.method public goToState(Lcom/zui/launcher/LauncherState;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->shouldAnimateStateChange()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    return-void
.end method

.method public goToState(Lcom/zui/launcher/LauncherState;J)V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/LauncherStateManager;->h(Lcom/zui/launcher/LauncherState;ZJLjava/lang/Runnable;)V

    return-void
.end method

.method public goToState(Lcom/zui/launcher/LauncherState;JLjava/lang/Runnable;)V
    .locals 6

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/LauncherStateManager;->h(Lcom/zui/launcher/LauncherState;ZJLjava/lang/Runnable;)V

    return-void
.end method

.method public goToState(Lcom/zui/launcher/LauncherState;Z)V
    .locals 6

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/LauncherStateManager;->h(Lcom/zui/launcher/LauncherState;ZJLjava/lang/Runnable;)V

    return-void
.end method

.method public goToState(Lcom/zui/launcher/LauncherState;ZLjava/lang/Runnable;)V
    .locals 6

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/LauncherStateManager;->h(Lcom/zui/launcher/LauncherState;ZJLjava/lang/Runnable;)V

    return-void
.end method

.method public synthetic j(ILcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->d(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0, p2, p3, p4}, Lcom/zui/launcher/LauncherStateManager;->i(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public moveToRestState()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->a(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    iget-boolean v0, v0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->g:Lcom/zui/launcher/LauncherState;

    iget-boolean v0, v0, Lcom/zui/launcher/LauncherState;->disableRestore:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToRestState, getRestState():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getRestState()Lcom/zui/launcher/LauncherState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getRestState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/zui/quickstep/SystemUiProxy;->exitSplitScreenOnStartHome()V

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getRestState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;)V

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    iput-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->h:Lcom/zui/launcher/LauncherState;

    :cond_2
    return-void
.end method

.method public onWindowFocusChanged()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/UiFactory;->onLauncherStateOrFocusChanged(Lcom/zui/launcher/Launcher;)V

    return-void
.end method

.method public prepareForAtomicAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2, p0, p1, p3}, Lcom/zui/launcher/LauncherState;->prepareForAtomicAnimation(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;)V

    return-void
.end method

.method public reapplyState()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherStateManager;->reapplyState(Z)V

    return-void
.end method

.method public reapplyState(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reapplyState, mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/LauncherStateManager;->g:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cancelCurrentAnimation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateManager"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->a(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/zui/launcher/LauncherStateManager;->f()V

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->cancelAnimation()V

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {p1}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->a(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getStateHandlers()[Lcom/zui/launcher/LauncherStateManager$StateHandler;

    move-result-object p1

    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/zui/launcher/LauncherStateManager;->g:Lcom/zui/launcher/LauncherState;

    invoke-interface {v3, v4}, Lcom/zui/launcher/LauncherStateManager$StateHandler;->setState(Lcom/zui/launcher/LauncherState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/LauncherStateManager;->g:Lcom/zui/launcher/LauncherState;

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->k(Lcom/zui/launcher/LauncherState;)V

    :cond_3
    return-void
.end method

.method public removeStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetLastStableState()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    iput-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->h:Lcom/zui/launcher/LauncherState;

    return-void
.end method

.method public varargs setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V
    .locals 5

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p2, v2

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    iget-object v4, v4, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v4

    if-ne v4, v3, :cond_1

    :goto_1
    invoke-direct {p0}, Lcom/zui/launcher/LauncherStateManager;->g()V

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    iget-object v4, v4, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackControllerVR:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v4

    if-ne v4, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v4}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->a(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v4

    if-ne v4, v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    iget-object p2, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {p2}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->a(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object p2

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->cancelAnimation()V

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->reapplyState()V

    iget-object p2, p0, Lcom/zui/launcher/LauncherStateManager;->g:Lcom/zui/launcher/LauncherState;

    invoke-direct {p0, p2}, Lcom/zui/launcher/LauncherStateManager;->k(Lcom/zui/launcher/LauncherState;)V

    :cond_6
    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->setAnimation(Landroid/animation/AnimatorSet;Lcom/zui/launcher/LauncherState;)V

    return-void
.end method

.method public setCurrentUserControlledAnimation(Lcom/zui/launcher/anim/AnimatorPlaybackController;)V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/LauncherStateManager;->g()V

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/animation/Animator;

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/LauncherStateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    iput-object p1, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    return-void
.end method

.method public setCurrentUserControlledAnimation(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;)V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/LauncherStateManager;->g()V

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/animation/Animator;

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/LauncherStateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    iput-object p1, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackControllerVR:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    return-void
.end method

.method public setLaunOrientationBeforeIntoRecent(Lcom/zui/launcher/LauncherState;Landroid/content/Context;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    return-void
.end method

.method public setRestState(Lcom/zui/launcher/LauncherState;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherStateManager;->j:Lcom/zui/launcher/LauncherState;

    return-void
.end method

.method public shouldAnimateStateChange()Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->isForceInvisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public wasInAnimation()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager;->a:Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {p0}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->a(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
