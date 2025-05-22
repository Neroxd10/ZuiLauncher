.class public final synthetic Lcom/zui/quickstep/views/f1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/TaskMenuView;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/TaskMenuView;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/f1;->a:Lcom/zui/quickstep/views/TaskMenuView;

    iput-wide p2, p0, Lcom/zui/quickstep/views/f1;->b:J

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/f1;->a:Lcom/zui/quickstep/views/TaskMenuView;

    iget-wide v1, p0, Lcom/zui/quickstep/views/f1;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/zui/quickstep/views/TaskMenuView;->l(JLandroid/animation/ValueAnimator;)V

    return-void
.end method
