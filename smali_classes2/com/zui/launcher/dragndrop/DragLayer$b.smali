.class Lcom/zui/launcher/dragndrop/DragLayer$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragLayer;->animateView(Lcom/zui/launcher/dragndrop/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:I

.field final synthetic c:Lcom/zui/launcher/dragndrop/DragLayer;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragLayer;Ljava/lang/Runnable;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer$b;->c:Lcom/zui/launcher/dragndrop/DragLayer;

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DragLayer$b;->a:Ljava/lang/Runnable;

    iput p3, p0, Lcom/zui/launcher/dragndrop/DragLayer$b;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer$b;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget p1, p0, Lcom/zui/launcher/dragndrop/DragLayer$b;->b:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer$b;->c:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/zui/launcher/dragndrop/DragLayer;->clearAnimatedView()V

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer$b;->c:Lcom/zui/launcher/dragndrop/DragLayer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/dragndrop/DragLayer;->c(Lcom/zui/launcher/dragndrop/DragLayer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
