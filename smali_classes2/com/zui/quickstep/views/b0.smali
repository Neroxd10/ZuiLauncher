.class public final synthetic Lcom/zui/quickstep/views/b0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView;

.field public final synthetic b:Lcom/zui/quickstep/views/TaskView;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView;Lcom/zui/quickstep/views/TaskView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/b0;->a:Lcom/zui/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/zui/quickstep/views/b0;->b:Lcom/zui/quickstep/views/TaskView;

    iput p3, p0, Lcom/zui/quickstep/views/b0;->c:I

    iput p4, p0, Lcom/zui/quickstep/views/b0;->d:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/b0;->a:Lcom/zui/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/zui/quickstep/views/b0;->b:Lcom/zui/quickstep/views/TaskView;

    iget v2, p0, Lcom/zui/quickstep/views/b0;->c:I

    iget p0, p0, Lcom/zui/quickstep/views/b0;->d:I

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/zui/quickstep/views/RecentsView;->g0(Lcom/zui/quickstep/views/TaskView;IILandroid/animation/ValueAnimator;)V

    return-void
.end method
