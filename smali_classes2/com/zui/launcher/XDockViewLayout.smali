.class public Lcom/zui/launcher/XDockViewLayout;
.super Landroid/view/ViewGroup;
.source ""


# instance fields
.field private a:Lcom/zui/launcher/Launcher;

.field private b:Lcom/zui/launcher/XDockView;

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/animation/AnimatorSet;

.field private g:Z

.field private h:I

.field private i:I

.field public mCellStackDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/XDockViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/XDockViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    iput p1, p0, Lcom/zui/launcher/XDockViewLayout;->d:I

    iput p1, p0, Lcom/zui/launcher/XDockViewLayout;->e:I

    const/16 p2, 0xa

    iput p2, p0, Lcom/zui/launcher/XDockViewLayout;->mCellStackDistance:I

    iput p1, p0, Lcom/zui/launcher/XDockViewLayout;->i:I

    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewLayout;->calculateParams()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/XDockViewLayout;)Lcom/zui/launcher/XDockView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/XDockViewLayout;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/XDockViewLayout;->r(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/XDockViewLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/XDockViewLayout;->g:Z

    return p0
.end method

.method static synthetic d(Lcom/zui/launcher/XDockViewLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/XDockViewLayout;->g:Z

    return p1
.end method

.method static synthetic e(Lcom/zui/launcher/XDockViewLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/XDockViewLayout;->k()V

    return-void
.end method

.method static synthetic f(Lcom/zui/launcher/XDockViewLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/XDockViewLayout;->l()V

    return-void
.end method

.method static synthetic g(Lcom/zui/launcher/XDockViewLayout;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockViewLayout;->f:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic h(Lcom/zui/launcher/XDockViewLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewLayout;->f:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic i(Lcom/zui/launcher/XDockViewLayout;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/XDockViewLayout;->q(Landroid/view/View;I)V

    return-void
.end method

.method private j()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    div-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/zui/launcher/XDockViewLayout;->mCellStackDistance:I

    iget v3, p0, Lcom/zui/launcher/XDockViewLayout;->e:I

    if-eqz v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v2, v1

    iget v1, p0, Lcom/zui/launcher/XDockViewLayout;->e:I

    if-le v2, v1, :cond_0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    sub-int/2addr v1, v0

    div-int/2addr v1, v3

    iput v1, p0, Lcom/zui/launcher/XDockViewLayout;->mCellStackDistance:I

    :cond_0
    return-void
.end method

.method private k()V
    .locals 13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    iget v0, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    iget v1, p0, Lcom/zui/launcher/XDockViewLayout;->d:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {v4}, Lcom/zui/launcher/XDockView;->getDisplayWidth()I

    move-result v4

    iget v5, p0, Lcom/zui/launcher/XDockViewLayout;->mCellStackDistance:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    sub-int v5, v4, v5

    iget v6, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/zui/launcher/XDockViewLayout;->i:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v7, v3, :cond_3

    invoke-virtual {p0, v7}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v5, :cond_1

    iget v10, p0, Lcom/zui/launcher/XDockViewLayout;->i:I

    sub-int v10, v4, v10

    iget v11, p0, Lcom/zui/launcher/XDockViewLayout;->mCellStackDistance:I

    mul-int/2addr v11, v8

    sub-int/2addr v10, v11

    sub-int v11, v10, v0

    add-int v12, v2, v1

    invoke-virtual {v9, v11, v2, v10, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    iget v10, p0, Lcom/zui/launcher/XDockViewLayout;->mCellStackDistance:I

    mul-int/2addr v10, v8

    iget v11, p0, Lcom/zui/launcher/XDockViewLayout;->i:I

    add-int/2addr v10, v11

    add-int v11, v10, v0

    add-int v12, v2, v1

    invoke-virtual {v9, v10, v2, v11, v12}, Landroid/view/View;->layout(IIII)V

    :goto_1
    invoke-virtual {v9}, Landroid/view/View;->isPressed()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9, v6}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private l()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpItems, getRelativeX()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewLayout;->getRelativeX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XDockView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpItems, item dockCellX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", index: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", RelativeX: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/zui/launcher/XDockViewLayout;->m(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", visibility: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private m(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private n(Landroid/view/View;Lcom/zui/launcher/ItemInfo;IIIZ)Landroid/animation/ValueAnimator;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [F

    int-to-float p3, p3

    const/4 v1, 0x0

    aput p3, v0, v1

    int-to-float p3, p4

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    new-instance v0, Lcom/zui/launcher/XDockViewLayout$d;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/XDockViewLayout$d;-><init>(Lcom/zui/launcher/XDockViewLayout;Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/zui/launcher/XDockViewLayout$e;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/XDockViewLayout$e;-><init>(Lcom/zui/launcher/XDockViewLayout;Landroid/view/View;Lcom/zui/launcher/ItemInfo;IZ)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p3, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p0, p5

    invoke-virtual {p3, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p3
.end method

.method private o(IZLjava/lang/Runnable;Z)V
    .locals 5

    xor-int/lit8 p1, p2, 0x1

    const/4 p4, 0x0

    move v0, p4

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    iput v1, v3, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    add-int/lit8 v1, v1, 0x1

    instance-of v3, v2, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v2, p1}, Lcom/zui/launcher/WorkspaceIconCompat;->setShadowsEnabled(Z)V

    invoke-interface {v2, p1}, Lcom/zui/launcher/WorkspaceIconCompat;->setTextVisibility(Z)V

    invoke-interface {v2}, Lcom/zui/launcher/WorkspaceIconCompat;->invalidate()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_3
    iget-boolean p1, p0, Lcom/zui/launcher/XDockViewLayout;->g:Z

    if-nez p1, :cond_5

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/zui/launcher/XDockViewLayout;->k()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewLayout;->adjustLayout()V

    :goto_2
    invoke-direct {p0}, Lcom/zui/launcher/XDockViewLayout;->l()V

    :cond_5
    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {p1, p4}, Lcom/zui/launcher/XDockView;->setAnimStacking(Z)V

    iput-boolean p4, p0, Lcom/zui/launcher/XDockViewLayout;->g:Z

    return-void
.end method

.method private p(IZLjava/lang/Runnable;Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performLayoutAnimation, stack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XDockView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_0

    invoke-direct/range {p0 .. p4}, Lcom/zui/launcher/XDockViewLayout;->o(IZLjava/lang/Runnable;Z)V

    :cond_0
    iget-object v2, v0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/zui/launcher/XDockView;->setAnimStacking(Z)V

    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/XDockViewLayout;->j()V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    xor-int/2addr v2, v3

    iget-object v4, v0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {v4}, Lcom/zui/launcher/XDockView;->getDisplayWidth()I

    move-result v4

    iget v5, v0, Lcom/zui/launcher/XDockViewLayout;->c:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/16 v10, 0x8

    if-ge v8, v9, :cond_2

    invoke-virtual {v0, v8}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, v0, Lcom/zui/launcher/XDockViewLayout;->f:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/zui/launcher/XDockViewLayout;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    invoke-static {}, Lcom/zui/launcher/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v8

    iput-object v8, v0, Lcom/zui/launcher/XDockViewLayout;->f:Landroid/animation/AnimatorSet;

    iget v8, v0, Lcom/zui/launcher/XDockViewLayout;->mCellStackDistance:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    sub-int/2addr v9, v3

    mul-int/2addr v8, v9

    sub-int v8, v4, v8

    iget v9, v0, Lcom/zui/launcher/XDockViewLayout;->c:I

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    div-int/2addr v8, v9

    iput v8, v0, Lcom/zui/launcher/XDockViewLayout;->i:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v11, v7

    move v12, v11

    :goto_1
    if-ge v11, v8, :cond_c

    invoke-virtual {v0, v11}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v10, :cond_4

    move/from16 v10, p1

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/zui/launcher/ItemInfo;

    iget v15, v14, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    invoke-direct {v0, v13}, Lcom/zui/launcher/XDockViewLayout;->m(Landroid/view/View;)I

    move-result v15

    if-nez v1, :cond_6

    if-nez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v16

    sub-int v16, v6, v16

    add-int/lit8 v17, v11, 0x1

    mul-int v17, v17, v5

    sub-int v16, v16, v17

    goto :goto_2

    :cond_5
    mul-int v16, v5, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v17

    add-int v16, v16, v17

    :goto_2
    move/from16 v10, p1

    move/from16 v3, v16

    if-ne v12, v10, :cond_8

    move v15, v3

    goto :goto_3

    :cond_6
    move/from16 v10, p1

    if-nez v2, :cond_7

    iget v3, v0, Lcom/zui/launcher/XDockViewLayout;->i:I

    sub-int v3, v4, v3

    iget v9, v0, Lcom/zui/launcher/XDockViewLayout;->mCellStackDistance:I

    mul-int/2addr v9, v11

    sub-int/2addr v3, v9

    sub-int/2addr v3, v5

    goto :goto_3

    :cond_7
    iget v3, v0, Lcom/zui/launcher/XDockViewLayout;->mCellStackDistance:I

    mul-int/2addr v3, v12

    iget v9, v0, Lcom/zui/launcher/XDockViewLayout;->i:I

    add-int/2addr v3, v9

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/XDockViewLayout;->getRelativeX()I

    move-result v9

    sub-int/2addr v3, v9

    :cond_8
    :goto_3
    iput v12, v14, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    add-int/lit8 v12, v12, 0x1

    if-eqz v1, :cond_a

    instance-of v9, v13, Lcom/zui/launcher/BubbleTextView;

    if-eqz v9, :cond_9

    move-object v9, v13

    check-cast v9, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v9, v7}, Lcom/zui/launcher/BubbleTextView;->setShadowsEnabled(Z)V

    invoke-virtual {v9, v7}, Lcom/zui/launcher/BubbleTextView;->setTextVisibility(Z)V

    invoke-virtual {v9}, Landroid/widget/TextView;->invalidate()V

    goto :goto_4

    :cond_9
    instance-of v9, v13, Lcom/zui/launcher/ActiveIconView;

    if-eqz v9, :cond_a

    move-object v9, v13

    check-cast v9, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {v9, v7}, Lcom/zui/launcher/ActiveIconView;->setShadowsEnabled(Z)V

    invoke-virtual {v9, v7}, Lcom/zui/launcher/ActiveIconView;->setTextVisibility(Z)V

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_a
    :goto_4
    const/4 v9, 0x2

    new-array v14, v9, [F

    int-to-float v15, v15

    aput v15, v14, v7

    int-to-float v3, v3

    const/4 v15, 0x1

    aput v3, v14, v15

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v14, Lcom/zui/launcher/XDockViewLayout$b;

    invoke-direct {v14, v0, v13}, Lcom/zui/launcher/XDockViewLayout$b;-><init>(Lcom/zui/launcher/XDockViewLayout;Landroid/view/View;)V

    invoke-virtual {v3, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz v1, :cond_b

    new-instance v13, Lcom/zui/launcher/effect/BackInterpolator;

    invoke-direct {v13, v15}, Lcom/zui/launcher/effect/BackInterpolator;-><init>(B)V

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Lcom/zui/launcher/effect/BackInterpolator;->s(F)Lcom/zui/launcher/effect/BackInterpolator;

    move-result-object v13

    goto :goto_5

    :cond_b
    new-instance v13, Lcom/zui/launcher/effect/SeriesInterpolator;

    new-instance v14, Lcom/zui/launcher/effect/BackInterpolator;

    invoke-direct {v14, v7}, Lcom/zui/launcher/effect/BackInterpolator;-><init>(B)V

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v14, v7}, Lcom/zui/launcher/effect/BackInterpolator;->s(F)Lcom/zui/launcher/effect/BackInterpolator;

    move-result-object v7

    new-instance v14, Lcom/zui/launcher/effect/CubicInterpolator;

    invoke-direct {v14, v15}, Lcom/zui/launcher/effect/CubicInterpolator;-><init>(B)V

    const v9, 0x3f19999a    # 0.6f

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-direct {v13, v7, v14, v9, v15}, Lcom/zui/launcher/effect/SeriesInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FF)V

    :goto_5
    invoke-virtual {v3, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, v0, Lcom/zui/launcher/XDockViewLayout;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_6
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/16 v10, 0x8

    goto/16 :goto_1

    :cond_c
    iget-object v2, v0, Lcom/zui/launcher/XDockViewLayout;->f:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, v0, Lcom/zui/launcher/XDockViewLayout;->f:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/zui/launcher/XDockViewLayout$c;

    move-object/from16 v4, p3

    invoke-direct {v3, v0, v1, v8, v4}, Lcom/zui/launcher/XDockViewLayout$c;-><init>(Lcom/zui/launcher/XDockViewLayout;ZILjava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v0, Lcom/zui/launcher/XDockViewLayout;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private declared-synchronized q(Landroid/view/View;I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/XDockViewLayout;->addViewItem(Landroid/view/View;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private r(Landroid/view/View;F)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    iget p0, p0, Lcom/zui/launcher/XDockViewLayout;->d:I

    add-int/2addr v1, p2

    add-int/2addr p0, v0

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public addItemView(Lcom/zui/launcher/ItemInfo;IZ)Landroid/view/View;
    .locals 7

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    const/16 v3, 0x9

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown item type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const v0, 0x7f0d00bd

    iget-object v3, p0, Lcom/zui/launcher/XDockViewLayout;->a:Lcom/zui/launcher/Launcher;

    move-object v4, p1

    check-cast v4, Lcom/zui/launcher/FolderInfo;

    invoke-static {v0, v3, p0, v4}, Lcom/zui/launcher/folder/FolderIcon;->fromXml(ILcom/zui/launcher/Launcher;Landroid/view/ViewGroup;Lcom/zui/launcher/FolderInfo;)Lcom/zui/launcher/folder/FolderIcon;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    if-ne v0, v1, :cond_3

    instance-of v0, p1, Lcom/zui/launcher/AppInfo;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/zui/launcher/WorkspaceItemInfo;

    check-cast p1, Lcom/zui/launcher/AppInfo;

    invoke-direct {v0, p1}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>(Lcom/zui/launcher/AppInfo;)V

    move-object p1, v0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->isActiveIconApp()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/zui/launcher/XDockViewLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3, p0, v0}, Lcom/zui/launcher/Launcher;->U0(Landroid/view/ViewGroup;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {v3}, Lcom/zui/launcher/ActiveIconView;->setInDock()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/zui/launcher/XDockViewLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3, p0, v0}, Lcom/zui/launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3}, Lcom/zui/launcher/BubbleTextView;->setInDock()V

    :goto_1
    iget-object v3, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {v3}, Lcom/zui/launcher/XDockView;->getItemScale()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget v3, p0, Lcom/zui/launcher/XDockViewLayout;->h:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/zui/launcher/XDockViewLayout;->h:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, v0, p2}, Lcom/zui/launcher/XDockViewLayout;->addViewItem(Landroid/view/View;I)V

    iput p2, p1, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {p1}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewLayout;->calculateRtlRelativeX()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    :goto_2
    new-instance p1, Lcom/zui/launcher/XDockViewLayout$a;

    invoke-direct {p1, p0}, Lcom/zui/launcher/XDockViewLayout$a;-><init>(Lcom/zui/launcher/XDockViewLayout;)V

    invoke-direct {p0, p2, v1, p1, p3}, Lcom/zui/launcher/XDockViewLayout;->p(IZLjava/lang/Runnable;Z)V

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    invoke-direct {p0, v1, v2, p1, p3}, Lcom/zui/launcher/XDockViewLayout;->p(IZLjava/lang/Runnable;Z)V

    :goto_3
    return-object v0
.end method

.method public addViewItem(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p2

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    iget v2, p0, Lcom/zui/launcher/XDockViewLayout;->d:I

    invoke-direct {p2, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public adjustLayout()V
    .locals 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    iget v0, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    iget v1, p0, Lcom/zui/launcher/XDockViewLayout;->d:I

    iget-object v2, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {v2}, Lcom/zui/launcher/XDockView;->getDisplayWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setScrollX(I)V

    move v5, v4

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {p0, v5}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    sub-int v9, v2, v9

    mul-int v10, v0, v5

    sub-int/2addr v9, v10

    sub-int v10, v9, v0

    add-int v11, v8, v1

    invoke-virtual {v6, v10, v8, v9, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    mul-int v9, v0, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    add-int v10, v9, v0

    add-int v11, v8, v1

    invoke-virtual {v6, v9, v8, v10, v11}, Landroid/view/View;->layout(IIII)V

    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->isPressed()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->requestLayout()V

    iput v5, v7, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public animateItemToPosition(Landroid/view/View;II)Z
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v0, p2

    const/4 v9, 0x0

    if-nez v8, :cond_0

    return v9

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/zui/launcher/ItemInfo;

    iget v1, v10, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v11

    if-ne v1, v0, :cond_1

    return v9

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v12, 0x1

    if-lt v0, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v12

    :cond_2
    move v13, v0

    if-eq v1, v13, :cond_f

    const/4 v0, -0x1

    if-eq v1, v0, :cond_f

    if-ne v13, v0, :cond_3

    goto/16 :goto_7

    :cond_3
    if-ge v1, v13, :cond_4

    add-int/2addr v1, v12

    move v14, v0

    move v15, v1

    move v6, v13

    goto :goto_0

    :cond_4
    sub-int/2addr v1, v12

    move v6, v1

    move v14, v12

    move v15, v13

    :goto_0
    iget-object v0, v7, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->getDisplayWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v2, v7, Lcom/zui/launcher/XDockViewLayout;->c:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-static {}, Lcom/zui/launcher/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    if-ne v14, v12, :cond_9

    :goto_1
    if-lt v6, v15, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v6, v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v7, v6}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    iget v0, v7, Lcom/zui/launcher/XDockViewLayout;->c:I

    mul-int/2addr v0, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    add-int v3, v6, v14

    iput v3, v2, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    iget v4, v7, Lcom/zui/launcher/XDockViewLayout;->c:I

    mul-int/2addr v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v17

    add-int v4, v4, v17

    if-eqz v11, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int v0, v16, v0

    iget v4, v7, Lcom/zui/launcher/XDockViewLayout;->c:I

    add-int/lit8 v17, v6, 0x1

    mul-int v4, v4, v17

    sub-int/2addr v0, v4

    iput v3, v2, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int v3, v16, v3

    iget v4, v7, Lcom/zui/launcher/XDockViewLayout;->c:I

    iget v9, v2, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    add-int/2addr v9, v12

    mul-int/2addr v4, v9

    sub-int/2addr v3, v4

    move v4, v3

    :cond_6
    move v3, v0

    if-ne v6, v15, :cond_7

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object v12, v5

    move/from16 v5, p3

    move/from16 v18, v6

    move v6, v9

    goto :goto_2

    :cond_7
    move-object v12, v5

    move/from16 v18, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v5, p3

    :goto_2
    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/XDockViewLayout;->n(Landroid/view/View;Lcom/zui/launcher/ItemInfo;IIIZ)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v6, v18, -0x1

    move-object v5, v12

    const/4 v9, 0x0

    const/4 v12, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    move-object v12, v5

    goto/16 :goto_6

    :cond_9
    move-object v12, v5

    :goto_4
    if-gt v15, v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v15, v0, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v7, v15}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    iget v0, v7, Lcom/zui/launcher/XDockViewLayout;->c:I

    mul-int/2addr v0, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    add-int v3, v15, v14

    iput v3, v2, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    iget v4, v7, Lcom/zui/launcher/XDockViewLayout;->c:I

    mul-int/2addr v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    if-eqz v11, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int v0, v16, v0

    iget v4, v7, Lcom/zui/launcher/XDockViewLayout;->c:I

    add-int/lit8 v5, v15, 0x1

    mul-int/2addr v4, v5

    sub-int/2addr v0, v4

    iput v3, v2, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int v3, v16, v3

    iget v4, v7, Lcom/zui/launcher/XDockViewLayout;->c:I

    iget v5, v2, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    const/4 v9, 0x1

    add-int/2addr v5, v9

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    move v4, v3

    :cond_b
    move v3, v0

    if-ne v15, v6, :cond_c

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v5, p3

    move/from16 v18, v6

    move v6, v9

    goto :goto_5

    :cond_c
    move/from16 v18, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v5, p3

    :goto_5
    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/XDockViewLayout;->n(Landroid/view/View;Lcom/zui/launcher/ItemInfo;IIIZ)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v18

    goto :goto_4

    :cond_d
    :goto_6
    iget-object v0, v7, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/XDockView;->setAdjustStatus(Z)V

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    iget v0, v7, Lcom/zui/launcher/XDockViewLayout;->c:I

    mul-int/2addr v0, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    if-eqz v11, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int v16, v16, v0

    iget v0, v7, Lcom/zui/launcher/XDockViewLayout;->c:I

    add-int/lit8 v1, v13, 0x1

    mul-int/2addr v0, v1

    sub-int v0, v16, v0

    :cond_e
    iput v13, v10, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    invoke-direct {v7, v8, v13}, Lcom/zui/launcher/XDockViewLayout;->q(Landroid/view/View;I)V

    int-to-float v0, v0

    invoke-direct {v7, v8, v0}, Lcom/zui/launcher/XDockViewLayout;->r(Landroid/view/View;F)V

    const/4 v0, 0x1

    return v0

    :cond_f
    :goto_7
    move v0, v9

    return v0
.end method

.method public animateStack(ZLjava/lang/Runnable;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/zui/launcher/XDockViewLayout;->p(IZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public calculateParams()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-static {}, Lcom/zui/launcher/util/SettingsValue;->getEditModeScale()F

    move-result v1

    iget v2, v0, Lcom/zui/launcher/DeviceProfile;->cellHeightPx:I

    iget v3, v0, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/zui/launcher/DeviceProfile;->iconTextSizePx:I

    const-string v4, "lj"

    invoke-static {v4, v3}, Lcom/zui/launcher/Utilities;->measureTextSize(Ljava/lang/String;I)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/zui/launcher/XDockViewLayout;->d:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/zui/launcher/XDockViewLayout;->d:I

    iget v2, v0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/zui/launcher/XDockViewLayout;->mCellStackDistance:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/XDockViewLayout;->h:I

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget v2, v0, Lcom/zui/launcher/DeviceProfile;->cellWidthPx:I

    sub-int/2addr v1, v2

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/zui/launcher/XDockViewLayout;->e:I

    return-void
.end method

.method public calculateRtlRelativeX()I
    .locals 4

    iget v0, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    iget-object v1, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {v1}, Lcom/zui/launcher/XDockView;->getDisplayWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    mul-int/2addr v0, v3

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    add-int/2addr v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p0, v1

    return p0
.end method

.method public doOnConfigurationChanged()V
    .locals 5

    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewLayout;->calculateParams()V

    iget-object v0, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewLayout;->calculateRtlRelativeX()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setScrollY(I)V

    invoke-direct {p0, v2, v3, v1, v3}, Lcom/zui/launcher/XDockViewLayout;->p(IZLjava/lang/Runnable;Z)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/zui/launcher/XDockViewLayout;->p(IZLjava/lang/Runnable;Z)V

    :goto_1
    return-void
.end method

.method public findTargetCell(IILcom/zui/launcher/DropTarget$DragObject;)[I
    .locals 5

    const/4 p2, 0x2

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    iget-object v0, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->getDisplayWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewLayout;->getRelativeX()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    div-int/2addr v0, p1

    aput v0, p2, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewLayout;->getRelativeX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    div-int/2addr v0, v1

    aput v0, p2, v2

    iget-object p3, p3, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    instance-of p3, p3, Lcom/zui/launcher/XDockView;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v1, 0x2

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewLayout;->getRelativeX()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    aget p3, p2, v2

    iget v0, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    mul-int/2addr p3, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    add-int/2addr p3, v0

    add-int/2addr p3, v1

    if-le p1, p3, :cond_2

    aget p1, p2, v2

    add-int/lit8 p1, p1, 0x1

    aput p1, p2, v2

    :cond_2
    :goto_1
    aget p1, p2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-le p1, p3, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    aput p0, p2, v2

    :cond_3
    return-object p2

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getCellWidth()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    return p0
.end method

.method public getChildItemAt(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getProperWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {v1}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zui/launcher/XDockViewLayout;->mCellStackDistance:I

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    mul-int/2addr v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public getRelativeX()I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    aget p0, v0, p0

    return p0
.end method

.method public getStackPaddingLeft()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/XDockViewLayout;->i:I

    return p0
.end method

.method public getStackPosition()[I
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/XDockViewLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/Launcher;->getLocationPosition(Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/zui/launcher/XDockViewLayout;->i:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    add-int/2addr v2, p0

    aput v2, v0, v1

    return-object v0
.end method

.method public getVisibleChildCnt()I
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public indexOfChildItem(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 p4, 0x8

    if-ne p3, p4, :cond_0

    goto :goto_1

    :cond_0
    instance-of p3, p2, Lcom/zui/launcher/ActiveIconView;

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p5

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    iget v0, p0, Lcom/zui/launcher/XDockViewLayout;->c:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v2, p0, Lcom/zui/launcher/XDockViewLayout;->d:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v0

    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewLayout;->getProperWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p1

    iget v0, p0, Lcom/zui/launcher/XDockViewLayout;->d:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {p1}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eq p2, p4, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/XDockViewLayout;->j()V

    invoke-direct {p0}, Lcom/zui/launcher/XDockViewLayout;->k()V

    :cond_0
    return-void
.end method

.method public removeItem(Landroid/view/View;Z)V
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/zui/launcher/XDockViewLayout$f;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/XDockViewLayout$f;-><init>(Lcom/zui/launcher/XDockViewLayout;Landroid/view/View;)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {p1}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    const/4 p1, -0x1

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/zui/launcher/XDockViewLayout;->p(IZLjava/lang/Runnable;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/XDockViewLayout;->k()V

    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public resizeStackMaxWidth()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget v2, v0, Lcom/zui/launcher/DeviceProfile;->cellWidthPx:I

    sub-int/2addr v1, v2

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/zui/launcher/XDockViewLayout;->e:I

    invoke-direct {p0}, Lcom/zui/launcher/XDockViewLayout;->j()V

    return-void
.end method

.method public setChildrenTextVisible(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v1, p1}, Lcom/zui/launcher/WorkspaceIconCompat;->setTextVisibility(Z)V

    invoke-interface {v1}, Lcom/zui/launcher/WorkspaceIconCompat;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setRelativeX(F)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method

.method public setStackMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/XDockViewLayout;->e:I

    return-void
.end method

.method public setup(Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/XDockViewLayout;->b:Lcom/zui/launcher/XDockView;

    return-void
.end method

.method public showLayoutItems()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public spreadLayout()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/XDockViewLayout;->setChildrenTextVisible(Z)V

    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewLayout;->adjustLayout()V

    return-void
.end method
