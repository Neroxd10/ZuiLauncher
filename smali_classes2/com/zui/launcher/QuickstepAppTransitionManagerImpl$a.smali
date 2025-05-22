.class Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->g(Landroid/animation/Animator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;


# direct methods
.method constructor <init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;->b:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    iput p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;->a:I

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/anim/AnimationSuccessListener;->onAnimationCancel(Landroid/animation/Animator;)V

    iget p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;->a:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;->b:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->e(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a$a;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;->a:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    return-void
.end method
