.class Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;


# direct methods
.method constructor <init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a$a;->b:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a$a;->a:Z

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a$a;->b:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;

    iget-object v0, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;->b:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->e(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onDraw()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a$a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a$a;->a:Z

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a$a;->b:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;

    iget-object v0, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;->b:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->e(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a$a;->b:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;

    iget v1, v1, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;->a:I

    invoke-static {v0, v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a$a;->b:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;

    iget-object v0, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;->b:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->e(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/c2;

    invoke-direct {v1, p0}, Lcom/zui/launcher/c2;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
