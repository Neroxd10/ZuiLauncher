.class public Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ENTER_SEARCH:I = 0x1

.field public static final EXIT_SEARCH:I = 0x2

.field public static LAUNCHER_ICON_SACLE:F = 0.9f

.field public static final NOTIFY_SEARCH:I = 0x3

.field public static SECOND_INTERVAL:F = 1000.0f

.field public static TAG:Ljava/lang/String; = "GlobalSearch.SearchAnimators"

.field private static g:Z = false


# instance fields
.field private a:Landroid/animation/AnimatorSet;

.field private b:Landroid/animation/ValueAnimator;

.field private c:Landroid/animation/AnimatorSet;

.field private d:Lcom/zui/launcher/GlobalSearchView;

.field private e:Landroid/view/View;

.field private f:Z

.field public startAlpha:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->b:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->c:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->startAlpha:Z

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->e:Landroid/view/View;

    iput-boolean v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->f:Z

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->g:Z

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->e:Landroid/view/View;

    return-object p1
.end method

.method static synthetic d(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->f:Z

    return p1
.end method

.method static synthetic e(Lcom/zui/launcher/Launcher;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->doViewScale(F)V

    return-void
.end method

.method static synthetic f(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/zui/launcher/GlobalSearchView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/zui/launcher/GlobalSearchView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/zui/launcher/GlobalSearchView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method static synthetic j(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/zui/launcher/Launcher;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->doViewScale(F)V

    return-void
.end method

.method public static printLog(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->isDebugApp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public backAnimator(FFFLandroid/view/View;Lcom/zui/launcher/Launcher;)V
    .locals 5

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    invoke-virtual {p5}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->exitExcessiveView()V

    return-void

    :cond_0
    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "globalSearchView  backAnimator  percent --> "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " downY --> "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->c:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->c:Landroid/animation/AnimatorSet;

    :cond_2
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->c:Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    new-array p3, p2, [F

    sget v0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->LAUNCHER_ICON_SACLE:F

    const/4 v1, 0x0

    aput v0, p3, v1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v0, p3, v2

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    new-instance v0, Lcom/zui/launcher/globalsearch/j;

    invoke-direct {v0, p5}, Lcom/zui/launcher/globalsearch/j;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, p2, [F

    aput p1, v0, v1

    const/4 p1, 0x0

    aput p1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/zui/launcher/globalsearch/b;

    invoke-direct {v0, p4}, Lcom/zui/launcher/globalsearch/b;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p4, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$h;

    invoke-direct {p4, p0, p5}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$h;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p4, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->c:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$i;

    invoke-direct {v0, p0, p5}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$i;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p4, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->c:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xc8

    invoke-virtual {p4, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p4, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->c:Landroid/animation/AnimatorSet;

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object p3, p2, v1

    aput-object p1, p2, v2

    invoke-virtual {p4, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->c:Landroid/animation/AnimatorSet;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public clearAllAnimator()V
    .locals 2

    const-string v0, "clearAllAnimator start "

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->b:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->b:Landroid/animation/ValueAnimator;

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->c:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->c:Landroid/animation/AnimatorSet;

    :cond_2
    return-void
.end method

.method public getIsFingShowing()Z
    .locals 0

    sget-boolean p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->g:Z

    return p0
.end method

.method public getIsRemoveRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->f:Z

    return p0
.end method

.method public synthetic k(Lcom/zui/launcher/Launcher;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/zui/launcher/Workspace;->doViewScale(F)V

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p4, v0

    const/high16 v0, 0x41100000    # 9.0f

    sub-float/2addr p4, v0

    invoke-static {p1, p4}, Lcom/zui/launcher/Utilities;->setWorkspaceAlpha(Lcom/zui/launcher/Launcher;F)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide p1

    const-wide/16 v0, 0x64

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    iget-boolean p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->startAlpha:Z

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "alphaAnimator  start isRunning --> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->startAlpha:Z

    :cond_1
    return-void
.end method

.method public synthetic l(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->d:Lcom/zui/launcher/GlobalSearchView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public synthetic m(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->d:Lcom/zui/launcher/GlobalSearchView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public synthetic o(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->e:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onFingSmoothSearch(FLcom/zui/launcher/GlobalSearchView;Lcom/zui/launcher/LauncherRootView;Lcom/zui/launcher/Launcher;)V
    .locals 8

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->d:Lcom/zui/launcher/GlobalSearchView;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->b:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->b:Landroid/animation/ValueAnimator;

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->d:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->b:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->b:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zui/launcher/globalsearch/i;

    invoke-direct {v1, p2}, Lcom/zui/launcher/globalsearch/i;-><init>(Lcom/zui/launcher/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->b:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$b;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Lcom/zui/launcher/GlobalSearchView;Lcom/zui/launcher/LauncherRootView;FLcom/zui/launcher/Launcher;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onFlingShowGlobalSearch(Landroid/view/View;ILcom/zui/launcher/GlobalSearchView;Lcom/zui/launcher/LauncherRootView;Lcom/zui/launcher/Launcher;)V
    .locals 15

    move-object v6, p0

    move-object/from16 v2, p3

    move-object/from16 v7, p5

    iput-object v2, v6, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->d:Lcom/zui/launcher/GlobalSearchView;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->startAlpha:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->clearAnimation()V

    :cond_0
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x2

    new-array v0, v10, [F

    move/from16 v4, p2

    int-to-float v1, v4

    aput v1, v0, v8

    const/4 v1, 0x0

    const/4 v11, 0x1

    aput v1, v0, v11

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/globalsearch/g;

    invoke-direct {v1, v2}, Lcom/zui/launcher/globalsearch/g;-><init>(Lcom/zui/launcher/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$c;

    move-object/from16 v12, p4

    invoke-direct {v1, p0, v12, v2}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$c;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Lcom/zui/launcher/LauncherRootView;Lcom/zui/launcher/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, v10, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v3, Lcom/zui/launcher/globalsearch/h;

    invoke-direct {v3, v2}, Lcom/zui/launcher/globalsearch/h;-><init>(Lcom/zui/launcher/GlobalSearchView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$d;

    invoke-direct {v3, p0, v2}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$d;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Lcom/zui/launcher/GlobalSearchView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v13, 0x136

    invoke-virtual {v9, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v3, Lcom/zui/launcher/anim/Interpolators;->SEARCH_DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v10, [Landroid/animation/Animator;

    aput-object v1, v3, v8

    aput-object v0, v3, v11

    invoke-virtual {v9, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v13, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$e;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$e;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Lcom/zui/launcher/GlobalSearchView;Lcom/zui/launcher/LauncherRootView;ILcom/zui/launcher/Launcher;)V

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v10, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xdc

    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/launcher/globalsearch/l;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lcom/zui/launcher/globalsearch/l;-><init>(Landroid/view/View;)V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v14, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$f;

    move-object v0, v14

    move-object v1, p0

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$f;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Landroid/view/View;Lcom/zui/launcher/LauncherRootView;Landroid/animation/AnimatorSet;Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {p5 .. p5}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x226

    goto :goto_0

    :cond_1
    const/16 v0, 0x15e

    :goto_0
    invoke-virtual/range {p5 .. p5}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x40400000    # 3.0f

    goto :goto_1

    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    :goto_1
    new-array v2, v10, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v8

    sget v3, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->LAUNCHER_ICON_SACLE:F

    aput v3, v2, v11

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/launcher/globalsearch/c;

    invoke-direct {v0, p0, v7, v2, v13}, Lcom/zui/launcher/globalsearch/c;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Lcom/zui/launcher/Launcher;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$g;

    invoke-direct {v0, p0, v7, v13}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$g;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Lcom/zui/launcher/Launcher;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public removeGlobalSearchView(Lcom/zui/launcher/Launcher;)V
    .locals 9

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->d:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/zui/launcher/globalsearch/k;

    invoke-direct {v4, p0}, Lcom/zui/launcher/globalsearch/k;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v2, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v4, Lcom/zui/launcher/globalsearch/d;

    invoke-direct {v4, p0}, Lcom/zui/launcher/globalsearch/d;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$j;

    invoke-direct {v4, p0, p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$j;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v7, 0x96

    invoke-virtual {v0, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v4, v2, [Landroid/animation/Animator;

    aput-object v1, v4, v6

    aput-object v3, v4, v5

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v2, [F

    sget v4, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->LAUNCHER_ICON_SACLE:F

    aput v4, v3, v6

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->SEARCH_LAUNCHER_ICON_SCALE:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x12c

    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/zui/launcher/globalsearch/f;

    invoke-direct {v4, p1}, Lcom/zui/launcher/globalsearch/f;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x32

    invoke-virtual {v4, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/zui/launcher/globalsearch/e;

    invoke-direct {v7, p0}, Lcom/zui/launcher/globalsearch/e;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v7, v2, [Landroid/animation/Animator;

    aput-object v3, v7, v6

    aput-object v4, v7, v5

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$k;

    invoke-direct {v3, p0, p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$k;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$a;

    invoke-direct {v4, p0, p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$a;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v6

    aput-object v1, v2, v5

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public resetSearchAnimatorState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->f:Z

    sput-boolean v0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->g:Z

    return-void
.end method
