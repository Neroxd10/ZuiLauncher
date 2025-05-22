.class public final synthetic Lcom/zui/quickstep/views/a1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsViewForPad;

.field public final synthetic b:I

.field public final synthetic c:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsViewForPad;I[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/a1;->a:Lcom/zui/quickstep/views/RecentsViewForPad;

    iput p2, p0, Lcom/zui/quickstep/views/a1;->b:I

    iput-object p3, p0, Lcom/zui/quickstep/views/a1;->c:[Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/a1;->a:Lcom/zui/quickstep/views/RecentsViewForPad;

    iget v1, p0, Lcom/zui/quickstep/views/a1;->b:I

    iget-object p0, p0, Lcom/zui/quickstep/views/a1;->c:[Z

    invoke-virtual {v0, v1, p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->x(I[ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
