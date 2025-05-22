.class public final synthetic Lcom/zui/quickstep/views/o1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/TaskView$v;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/TaskView$v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/o1;->a:Lcom/zui/quickstep/views/TaskView$v;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/o1;->a:Lcom/zui/quickstep/views/TaskView$v;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/TaskView$v;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method
