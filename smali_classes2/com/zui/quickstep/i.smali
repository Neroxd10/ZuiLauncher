.class public final synthetic Lcom/zui/quickstep/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/t4;

.field public final synthetic b:Lcom/zui/quickstep/util/ClipAnimationHelper;

.field public final synthetic c:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

.field public final synthetic d:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/t4;Lcom/zui/quickstep/util/ClipAnimationHelper;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/i;->a:Lcom/zui/quickstep/t4;

    iput-object p2, p0, Lcom/zui/quickstep/i;->b:Lcom/zui/quickstep/util/ClipAnimationHelper;

    iput-object p3, p0, Lcom/zui/quickstep/i;->c:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    iput-object p4, p0, Lcom/zui/quickstep/i;->d:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/i;->a:Lcom/zui/quickstep/t4;

    iget-object v1, p0, Lcom/zui/quickstep/i;->b:Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object v2, p0, Lcom/zui/quickstep/i;->c:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    iget-object p0, p0, Lcom/zui/quickstep/i;->d:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/zui/quickstep/t4;->e(Lcom/zui/quickstep/util/ClipAnimationHelper;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Landroid/animation/ValueAnimator;)V

    return-void
.end method
