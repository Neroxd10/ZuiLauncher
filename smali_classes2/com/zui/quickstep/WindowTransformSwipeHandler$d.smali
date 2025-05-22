.class Lcom/zui/quickstep/WindowTransformSwipeHandler$d;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/WindowTransformSwipeHandler;->o(FFJLandroid/view/animation/Interpolator;Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

.field final synthetic b:Lcom/zui/quickstep/WindowTransformSwipeHandler;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$d;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iput-object p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$d;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/anim/AnimationSuccessListener;->onAnimationCancel(Landroid/animation/Animator;)V

    invoke-static {}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->l()Ljava/lang/String;

    move-result-object p0

    const-string p1, "windowAnim, onAnimationCancel---"

    invoke-static {p0, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    invoke-static {}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->l()Ljava/lang/String;

    move-result-object p0

    const-string p1, "windowAnim, onAnimationStart-------"

    invoke-static {p0, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->applyDeskBlurByFactorStart()V

    :cond_0
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 2

    invoke-static {}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->l()Ljava/lang/String;

    move-result-object p1

    const-string v0, "windowAnim, onAnimationSuccess------"

    invoke-static {p1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$d;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    iget v0, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->endState:I

    const-string v1, "setState"

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/logging/EventLogArray;->addLog(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$d;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$d;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    iget p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->endState:I

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    return-void
.end method
