.class public final synthetic Lcom/zui/quickstep/views/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView;

.field public final synthetic b:I

.field public final synthetic c:Lcom/zui/quickstep/views/TaskView;

.field public final synthetic d:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView;ILcom/zui/quickstep/views/TaskView;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/n;->a:Lcom/zui/quickstep/views/RecentsView;

    iput p2, p0, Lcom/zui/quickstep/views/n;->b:I

    iput-object p3, p0, Lcom/zui/quickstep/views/n;->c:Lcom/zui/quickstep/views/TaskView;

    iput-object p4, p0, Lcom/zui/quickstep/views/n;->d:[Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/n;->a:Lcom/zui/quickstep/views/RecentsView;

    iget v1, p0, Lcom/zui/quickstep/views/n;->b:I

    iget-object v2, p0, Lcom/zui/quickstep/views/n;->c:Lcom/zui/quickstep/views/TaskView;

    iget-object p0, p0, Lcom/zui/quickstep/views/n;->d:[Z

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/zui/quickstep/views/RecentsView;->q0(ILcom/zui/quickstep/views/TaskView;[ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
