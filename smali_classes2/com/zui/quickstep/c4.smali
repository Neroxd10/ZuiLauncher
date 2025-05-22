.class public final synthetic Lcom/zui/quickstep/c4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:J

.field public final synthetic e:Landroid/view/animation/Interpolator;

.field public final synthetic f:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

.field public final synthetic g:Landroid/graphics/PointF;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;FFJLandroid/view/animation/Interpolator;Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/c4;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iput p2, p0, Lcom/zui/quickstep/c4;->b:F

    iput p3, p0, Lcom/zui/quickstep/c4;->c:F

    iput-wide p4, p0, Lcom/zui/quickstep/c4;->d:J

    iput-object p6, p0, Lcom/zui/quickstep/c4;->e:Landroid/view/animation/Interpolator;

    iput-object p7, p0, Lcom/zui/quickstep/c4;->f:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    iput-object p8, p0, Lcom/zui/quickstep/c4;->g:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/zui/quickstep/c4;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iget v1, p0, Lcom/zui/quickstep/c4;->b:F

    iget v2, p0, Lcom/zui/quickstep/c4;->c:F

    iget-wide v3, p0, Lcom/zui/quickstep/c4;->d:J

    iget-object v5, p0, Lcom/zui/quickstep/c4;->e:Landroid/view/animation/Interpolator;

    iget-object v6, p0, Lcom/zui/quickstep/c4;->f:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    iget-object v7, p0, Lcom/zui/quickstep/c4;->g:Landroid/graphics/PointF;

    invoke-virtual/range {v0 .. v7}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->R(FFJLandroid/view/animation/Interpolator;Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void
.end method
