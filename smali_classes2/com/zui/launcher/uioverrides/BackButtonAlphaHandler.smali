.class public Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherStateManager$StateHandler;


# instance fields
.field private final a:Lcom/zui/launcher/Launcher;

.field private final b:Lcom/zui/quickstep/OverviewInteractionState;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;->a:Lcom/zui/launcher/Launcher;

    sget-object v0, Lcom/zui/quickstep/OverviewInteractionState;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/quickstep/OverviewInteractionState;

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;->b:Lcom/zui/quickstep/OverviewInteractionState;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;)Lcom/zui/launcher/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;->a:Lcom/zui/launcher/Launcher;

    return-object p0
.end method


# virtual methods
.method public synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;->b:Lcom/zui/quickstep/OverviewInteractionState;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/quickstep/OverviewInteractionState;->setBackButtonAlpha(FZ)V

    return-void
.end method

.method public setState(Lcom/zui/launcher/LauncherState;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/UiFactory;->onLauncherStateOrFocusChanged(Lcom/zui/launcher/Launcher;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 3

    invoke-virtual {p3}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playNonAtomicComponent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;->b:Lcom/zui/quickstep/OverviewInteractionState;

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewInteractionState;->getBackButtonAlpha()F

    move-result v0

    iget-boolean p1, p1, Lcom/zui/launcher/LauncherState;->hideBackButton:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-wide v0, p3, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/zui/launcher/uioverrides/a;

    invoke-direct {p3, p0}, Lcom/zui/launcher/uioverrides/a;-><init>(Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p3, Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler$a;

    invoke-direct {p3, p0}, Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler$a;-><init>(Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2, p1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    :cond_2
    return-void
.end method
