.class Landroidx/recyclerview/widget/FastScroller$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Landroidx/recyclerview/widget/FastScroller;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/FastScroller;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    iget-object p1, p1, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    if-nez p1, :cond_1

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->requestRedraw()V

    :goto_0
    return-void
.end method
