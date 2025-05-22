.class public final Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimationResult"
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Ljava/lang/Runnable;

.field private c:Landroid/animation/AnimatorSet;

.field private d:Ljava/lang/Runnable;

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->e:Z

    iput-boolean v0, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->f:Z

    iput-object p1, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->b:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/zui/launcher/LauncherAnimationRunner$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->b()V

    return-void
.end method

.method private b()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-boolean v0, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    sget-object v0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/p1;

    invoke-direct {v1, p0}, Lcom/zui/launcher/p1;-><init>(Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->e:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic c()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->d:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V
    .locals 2
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-boolean v0, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->f:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->f:Z

    iput-object p1, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->c:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->d:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->b()V

    goto :goto_0

    :cond_0
    iget-boolean p3, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->e:Z

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    iget-object p0, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->d:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult$a;

    invoke-direct {p3, p0}, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult$a;-><init>(Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    if-eqz p4, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->c:Landroid/animation/AnimatorSet;

    invoke-static {p2}, Lcom/zui/launcher/util/DefaultDisplay;->getSingleFrameMs(Landroid/content/Context;)I

    move-result p2

    int-to-long p2, p2

    iget-object p0, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Animation already initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
