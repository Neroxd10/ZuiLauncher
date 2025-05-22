.class Lcom/zui/launcher/FirstFrameAnimatorHelper$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/FirstFrameAnimatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:Z

.field final synthetic e:Lcom/zui/launcher/FirstFrameAnimatorHelper;


# direct methods
.method private constructor <init>(Lcom/zui/launcher/FirstFrameAnimatorHelper;)V
    .locals 2

    iput-object p1, p0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->e:Lcom/zui/launcher/FirstFrameAnimatorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/FirstFrameAnimatorHelper;Lcom/zui/launcher/FirstFrameAnimatorHelper$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;-><init>(Lcom/zui/launcher/FirstFrameAnimatorHelper;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->e:Lcom/zui/launcher/FirstFrameAnimatorHelper;

    invoke-static {v2}, Lcom/zui/launcher/FirstFrameAnimatorHelper;->a(Lcom/zui/launcher/FirstFrameAnimatorHelper;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->b:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    invoke-static {}, Lcom/zui/launcher/FirstFrameAnimatorHelper;->b()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->a:J

    iput-wide v2, v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->b:J

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    const/4 v8, 0x1

    if-nez v6, :cond_2

    move v6, v8

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    iget-object v9, v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->e:Lcom/zui/launcher/FirstFrameAnimatorHelper;

    invoke-static {v9}, Lcom/zui/launcher/FirstFrameAnimatorHelper;->a(Lcom/zui/launcher/FirstFrameAnimatorHelper;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/zui/launcher/util/DefaultDisplay;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v9

    iget-boolean v10, v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->c:Z

    if-nez v10, :cond_6

    iget-object v10, v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->e:Lcom/zui/launcher/FirstFrameAnimatorHelper;

    invoke-static {v10}, Lcom/zui/launcher/FirstFrameAnimatorHelper;->a(Lcom/zui/launcher/FirstFrameAnimatorHelper;)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->e:Lcom/zui/launcher/FirstFrameAnimatorHelper;

    invoke-static {v10}, Lcom/zui/launcher/FirstFrameAnimatorHelper;->a(Lcom/zui/launcher/FirstFrameAnimatorHelper;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWindowVisibility()I

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_6

    if-nez v6, :cond_6

    iput-boolean v8, v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->c:Z

    invoke-static {}, Lcom/zui/launcher/FirstFrameAnimatorHelper;->b()J

    move-result-wide v10

    iget-wide v12, v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->a:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    const-wide/16 v14, 0x3e8

    if-nez v6, :cond_3

    iget-wide v7, v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->b:J

    add-long/2addr v7, v14

    cmp-long v7, v2, v7

    if-gez v7, :cond_3

    cmp-long v7, v4, v12

    if-lez v7, :cond_3

    iget-object v2, v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->e:Lcom/zui/launcher/FirstFrameAnimatorHelper;

    invoke-static {v2}, Lcom/zui/launcher/FirstFrameAnimatorHelper;->a(Lcom/zui/launcher/FirstFrameAnimatorHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    invoke-virtual {v1, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_1

    :cond_3
    const-wide/16 v7, 0x1

    cmp-long v7, v10, v7

    if-nez v7, :cond_4

    iget-wide v10, v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->b:J

    add-long/2addr v14, v10

    cmp-long v8, v2, v14

    if-gez v8, :cond_4

    iget-boolean v8, v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->d:Z

    if-nez v8, :cond_4

    int-to-long v8, v9

    add-long/2addr v10, v8

    cmp-long v2, v2, v10

    if-lez v2, :cond_4

    cmp-long v2, v4, v8

    if-lez v2, :cond_4

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->d:Z

    goto :goto_1

    :cond_4
    if-lez v7, :cond_5

    iget-object v2, v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->e:Lcom/zui/launcher/FirstFrameAnimatorHelper;

    invoke-static {v2}, Lcom/zui/launcher/FirstFrameAnimatorHelper;->a(Lcom/zui/launcher/FirstFrameAnimatorHelper;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/zui/launcher/x;

    invoke-direct {v3, v0, v1}, Lcom/zui/launcher/x;-><init>(Lcom/zui/launcher/FirstFrameAnimatorHelper$b;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;->c:Z

    :cond_6
    return-void
.end method
