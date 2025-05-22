.class Lcom/zui/launcher/CellLayout$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/InterruptibleInOutAnimator;

.field final synthetic b:Lcom/zui/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/InterruptibleInOutAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/CellLayout$b;->b:Lcom/zui/launcher/CellLayout;

    iput-object p2, p0, Lcom/zui/launcher/CellLayout$b;->a:Lcom/zui/launcher/InterruptibleInOutAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$b;->a:Lcom/zui/launcher/InterruptibleInOutAnimator;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
