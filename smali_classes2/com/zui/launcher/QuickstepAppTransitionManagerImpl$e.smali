.class Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->k([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/statehandlers/DepthController;

.field final synthetic b:Landroid/view/SurfaceControl;


# direct methods
.method constructor <init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Lcom/zui/launcher/statehandlers/DepthController;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$e;->a:Lcom/zui/launcher/statehandlers/DepthController;

    iput-object p3, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$e;->b:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$e;->a:Lcom/zui/launcher/statehandlers/DepthController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/statehandlers/DepthController;->setSurface(Landroid/view/SurfaceControl;)V

    iget-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$e;->b:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$e;->b:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    return-void
.end method
