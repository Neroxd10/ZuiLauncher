.class public abstract Lcom/zui/launcher/popup/ArrowPopup;
.super Lcom/zui/launcher/AbstractFloatingView;
.source ""


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:F

.field private final c:I

.field private final d:Landroid/view/View;

.field private e:I

.field private final f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/Rect;

.field private h:Z

.field private i:Z

.field private j:Z

.field protected mDeferContainerRemoval:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected mIsAboveIcon:Z

.field protected mIsLeftAligned:Z

.field protected final mIsRtl:Z

.field protected final mLauncher:Lcom/zui/launcher/Launcher;

.field protected mOpenCloseAnimator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/popup/ArrowPopup;->a:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/popup/ArrowPopup;->f:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/popup/ArrowPopup;->g:Landroid/graphics/Rect;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/zui/launcher/popup/ArrowPopup;->h:Z

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/zui/launcher/popup/ArrowPopup;->i:Z

    iput-boolean p3, p0, Lcom/zui/launcher/popup/ArrowPopup;->j:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/launcher/popup/ArrowPopup;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/zui/launcher/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result p3

    iput p3, p0, Lcom/zui/launcher/popup/ArrowPopup;->b:F

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/zui/launcher/popup/ArrowPopup;->mIsRtl:Z

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    new-instance p2, Lcom/zui/launcher/popup/ArrowPopup$a;

    invoke-direct {p2, p0}, Lcom/zui/launcher/popup/ArrowPopup$a;-><init>(Lcom/zui/launcher/popup/ArrowPopup;)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0705bd

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const v0, 0x7f0705b9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    new-instance p1, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    invoke-direct {p1, p3, v0}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f0705bc

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/popup/ArrowPopup;->c:I

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/popup/ArrowPopup;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/popup/ArrowPopup;->b:F

    return p0
.end method

.method private animateOpen()V
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    const v5, 0x7f0b003f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v5, v2

    sget-object v2, Lcom/zui/launcher/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Lcom/zui/launcher/popup/ArrowPopup;->c()Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;

    move-result-object v7

    invoke-virtual {v7, p0, v0}, Lcom/zui/launcher/anim/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v8, 0x2

    new-array v9, v8, [F

    fill-array-data v9, :array_0

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    add-long/2addr v3, v5

    invoke-virtual {v9, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v9, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/zui/launcher/popup/b;

    invoke-direct {v2, p0, v7}, Lcom/zui/launcher/popup/b;-><init>(Lcom/zui/launcher/popup/ArrowPopup;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v9, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    sget-object v3, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v4, 0x1

    new-array v9, v4, [F

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v9, v0

    invoke-static {v2, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Lcom/zui/launcher/popup/ArrowPopup$b;

    invoke-direct {v3, p0}, Lcom/zui/launcher/popup/ArrowPopup$b;-><init>(Lcom/zui/launcher/popup/ArrowPopup;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/zui/launcher/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/Animator;

    new-array p0, v8, [Landroid/animation/Animator;

    aput-object v2, p0, v0

    aput-object v7, p0, v4

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic b(Lcom/zui/launcher/popup/ArrowPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/AbstractFloatingView;->announceAccessibilityChanges()V

    return-void
.end method

.method private c()Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;
    .locals 8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->getSupposedWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zui/launcher/popup/ArrowPopup;->mIsLeftAligned:Z

    iget-boolean v3, p0, Lcom/zui/launcher/popup/ArrowPopup;->mIsRtl:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    const v2, 0x7f0705bb

    goto :goto_0

    :cond_0
    const v2, 0x7f0705ba

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0705bd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const v4, 0x7f0705b8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-boolean v4, p0, Lcom/zui/launcher/popup/ArrowPopup;->mIsLeftAligned:Z

    if-nez v4, :cond_1

    sub-int v2, v0, v2

    :cond_1
    iget-boolean v4, p0, Lcom/zui/launcher/popup/ArrowPopup;->mIsAboveIcon:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    iget-object v6, p0, Lcom/zui/launcher/popup/ArrowPopup;->f:Landroid/graphics/Rect;

    sub-int v7, v2, v3

    add-int/2addr v2, v3

    invoke-virtual {v6, v7, v4, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/zui/launcher/popup/ArrowPopup;->g:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zui/launcher/popup/ArrowPopup;->g:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v5, v5, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    new-instance v0, Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;

    iget v2, p0, Lcom/zui/launcher/popup/ArrowPopup;->b:F

    iget-object v3, p0, Lcom/zui/launcher/popup/ArrowPopup;->f:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/zui/launcher/popup/ArrowPopup;->g:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method protected static createFrameView(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected animateClose()V
    .locals 13

    iget-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/anim/RevealOutlineAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/anim/RevealOutlineAnimation;

    iget-object v1, p0, Lcom/zui/launcher/popup/ArrowPopup;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/anim/RevealOutlineAnimation;->getOutline(Landroid/graphics/Rect;)V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/zui/launcher/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    const v4, 0x7f0b0040

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    const v6, 0x7f0b003f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v6, v2

    iget-object v2, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    sget-object v8, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v9, 0x1

    new-array v10, v9, [F

    const/4 v11, 0x0

    aput v11, v10, v0

    invoke-static {v2, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0}, Lcom/zui/launcher/popup/ArrowPopup;->c()Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;

    move-result-object v8

    invoke-virtual {v8, p0, v9}, Lcom/zui/launcher/anim/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v8, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v10, 0x2

    new-array v12, v10, [Landroid/animation/Animator;

    aput-object v8, v12, v0

    aput-object v2, v12, v9

    invoke-virtual {v1, v12}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-array v8, v10, [F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v10

    aput v10, v8, v0

    aput v11, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/zui/launcher/popup/c;

    invoke-direct {v3, p0, v2}, Lcom/zui/launcher/popup/c;-><init>(Lcom/zui/launcher/popup/ArrowPopup;Landroid/animation/Animator;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/popup/ArrowPopup;->onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V

    new-instance v0, Lcom/zui/launcher/popup/ArrowPopup$c;

    invoke-direct {v0, p0}, Lcom/zui/launcher/popup/ArrowPopup$c;-><init>(Lcom/zui/launcher/popup/ArrowPopup;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/zui/launcher/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected changeOrderByType()V
    .locals 0

    return-void
.end method

.method protected closeComplete()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/Animator;

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mDeferContainerRemoval:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    iput-boolean v1, p0, Lcom/zui/launcher/popup/ArrowPopup;->mDeferContainerRemoval:Z

    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/popup/ArrowPopup;->doSomethingAfterClose(Z)V

    return-void
.end method

.method public synthetic d(Landroid/animation/Animator;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method protected doSomethingAfterClose(Z)V
    .locals 0

    return-void
.end method

.method public synthetic e(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method protected getEndAlignedX(IIII)I
    .locals 0

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    sub-int/2addr p2, p4

    return p2
.end method

.method protected getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    return-object p0
.end method

.method protected getSupposedWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract getTargetObjectLocation(Landroid/graphics/Rect;)V
.end method

.method protected abstract getTargetObjectWidth(Landroid/graphics/Rect;)I
.end method

.method protected getVerticalLeftSideX(ZIIIII)I
    .locals 0

    sub-int/2addr p3, p4

    sub-int/2addr p3, p5

    sub-int/2addr p3, p6

    return p3
.end method

.method protected getVerticalRightSideX(ZIIIII)I
    .locals 0

    add-int/2addr p3, p4

    sub-int/2addr p3, p5

    return p3
.end method

.method protected handleClose(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->animateClose()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->closeComplete()V

    :goto_0
    return-void
.end method

.method public inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Landroid/view/ViewGroup;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method public inflateAndAdd(ILandroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Landroid/view/ViewGroup;",
            "I)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2, p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object p0
.end method

.method protected isAlignedWithStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mIsRtl:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mIsLeftAligned:Z

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mIsRtl:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isGravityVertical()Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/popup/ArrowPopup;->e:I

    invoke-static {p0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result p0

    return p0
.end method

.method protected isRtlLayoutHorizontal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowCenterOfObject()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/popup/ArrowPopup;->j:Z

    return p0
.end method

.method protected onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V
    .locals 0

    return-void
.end method

.method protected onInflationComplete(Z)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->getSupposedWidth()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result p5

    int-to-float p2, p2

    add-float/2addr p5, p2

    const/4 p2, 0x0

    cmpg-float p2, p5, p2

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result p2

    int-to-float p4, p4

    add-float/2addr p2, p4

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    int-to-float p4, p4

    cmpl-float p2, p2, p4

    if-lez p2, :cond_1

    :cond_0
    iget p2, p0, Lcom/zui/launcher/popup/ArrowPopup;->e:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/zui/launcher/popup/ArrowPopup;->e:I

    :cond_1
    iget p2, p0, Lcom/zui/launcher/popup/ArrowPopup;->e:I

    invoke-static {p2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result p2

    const/4 p4, 0x4

    if-nez p2, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/zui/launcher/popup/ArrowPopup;->h:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/zui/launcher/popup/ArrowPopup;->i:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->isRtlLayoutHorizontal()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setX(F)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget p1, p0, Lcom/zui/launcher/popup/ArrowPopup;->e:I

    invoke-static {p1}, Landroid/view/Gravity;->isVertical(I)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setY(F)V

    :cond_6
    return-void
.end method

.method protected orientAboutObject()V
    .locals 18

    move-object/from16 v7, p0

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/popup/ArrowPopup;->getSupposedWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v0, v7, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, v7, Lcom/zui/launcher/popup/ArrowPopup;->c:I

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, v7, Lcom/zui/launcher/popup/ArrowPopup;->a:Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Lcom/zui/launcher/popup/ArrowPopup;->getTargetObjectLocation(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/popup/ArrowPopup;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zui/launcher/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v11

    iget-object v2, v7, Lcom/zui/launcher/popup/ArrowPopup;->a:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int v12, v4, v9

    iget-boolean v4, v7, Lcom/zui/launcher/popup/ArrowPopup;->j:Z

    const/16 v13, 0x30

    const/4 v14, 0x1

    if-eqz v4, :cond_0

    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v2}, Lcom/zui/launcher/popup/ArrowPopup;->getTargetObjectWidth(Landroid/graphics/Rect;)I

    move-result v2

    iget-object v4, v7, Lcom/zui/launcher/popup/ArrowPopup;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v2, v9

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iput-boolean v14, v7, Lcom/zui/launcher/popup/ArrowPopup;->mIsLeftAligned:Z

    iput v8, v7, Lcom/zui/launcher/popup/ArrowPopup;->e:I

    iput-boolean v8, v7, Lcom/zui/launcher/popup/ArrowPopup;->i:Z

    iput-boolean v8, v7, Lcom/zui/launcher/popup/ArrowPopup;->mIsAboveIcon:Z

    int-to-float v1, v3

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setX(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, v7, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v0, v1

    iget v1, v7, Lcom/zui/launcher/popup/ArrowPopup;->c:I

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void

    :cond_0
    add-int v2, v3, v9

    iget v4, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getRight()I

    move-result v4

    iget v5, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_1

    move v2, v14

    goto :goto_0

    :cond_1
    move v2, v8

    :goto_0
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    iget v5, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    if-le v12, v4, :cond_2

    move v4, v14

    goto :goto_1

    :cond_2
    move v4, v8

    :goto_1
    if-eqz v2, :cond_4

    iget-boolean v2, v7, Lcom/zui/launcher/popup/ArrowPopup;->mIsRtl:Z

    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v12

    :goto_3
    if-ne v2, v3, :cond_5

    move v4, v14

    goto :goto_4

    :cond_5
    move v4, v8

    :goto_4
    iput-boolean v4, v7, Lcom/zui/launcher/popup/ArrowPopup;->mIsLeftAligned:Z

    iget-object v4, v7, Lcom/zui/launcher/popup/ArrowPopup;->a:Landroid/graphics/Rect;

    invoke-virtual {v7, v4}, Lcom/zui/launcher/popup/ArrowPopup;->getTargetObjectWidth(Landroid/graphics/Rect;)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/popup/ArrowPopup;->isAlignedWithStart()Z

    move-result v5

    if-eqz v5, :cond_6

    const v5, 0x7f07024e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0705c2

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/lit8 v16, v15, 0x2

    div-int/lit8 v5, v5, 0x2

    sub-int v16, v16, v5

    sub-int v16, v16, v6

    move/from16 v5, v16

    goto :goto_5

    :cond_6
    const v5, 0x7f07024c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0705c1

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v13, v7, Lcom/zui/launcher/popup/ArrowPopup;->a:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v7, v13, v15, v5, v6}, Lcom/zui/launcher/popup/ArrowPopup;->getEndAlignedX(IIII)I

    move-result v5

    :goto_5
    iget-boolean v6, v7, Lcom/zui/launcher/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v6, :cond_7

    goto :goto_6

    :cond_7
    neg-int v5, v5

    :goto_6
    add-int/2addr v2, v5

    iget-object v5, v7, Lcom/zui/launcher/popup/ArrowPopup;->a:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, v7, Lcom/zui/launcher/popup/ArrowPopup;->a:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v1

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getTop()I

    move-result v13

    iget v14, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    if-le v6, v13, :cond_8

    const/4 v13, 0x1

    goto :goto_7

    :cond_8
    move v13, v8

    :goto_7
    iput-boolean v13, v7, Lcom/zui/launcher/popup/ArrowPopup;->mIsAboveIcon:Z

    if-nez v13, :cond_9

    iget-object v6, v7, Lcom/zui/launcher/popup/ArrowPopup;->a:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    add-int/2addr v6, v0

    :cond_9
    iget v0, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iget v5, v11, Landroid/graphics/Rect;->top:I

    sub-int v13, v6, v5

    iput v8, v7, Lcom/zui/launcher/popup/ArrowPopup;->e:I

    if-ltz v2, :cond_b

    add-int v5, v2, v9

    add-int/2addr v5, v0

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    iget v6, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    if-le v5, v0, :cond_a

    goto :goto_8

    :cond_a
    move v0, v8

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, v7, Lcom/zui/launcher/popup/ArrowPopup;->i:Z

    add-int/2addr v1, v13

    iget v0, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v0

    iget v5, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v5

    if-gt v1, v0, :cond_c

    iget-boolean v0, v7, Lcom/zui/launcher/popup/ArrowPopup;->i:Z

    if-eqz v0, :cond_12

    :cond_c
    iget-boolean v0, v7, Lcom/zui/launcher/popup/ArrowPopup;->i:Z

    if-nez v0, :cond_d

    const/16 v0, 0x10

    iput v0, v7, Lcom/zui/launcher/popup/ArrowPopup;->e:I

    :cond_d
    const v0, 0x7f07084d

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iget-boolean v1, v7, Lcom/zui/launcher/popup/ArrowPopup;->mIsRtl:Z

    iget-object v0, v7, Lcom/zui/launcher/popup/ArrowPopup;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v5, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    move v4, v15

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/popup/ArrowPopup;->getVerticalRightSideX(ZIIIII)I

    move-result v17

    iget-boolean v1, v7, Lcom/zui/launcher/popup/ArrowPopup;->mIsRtl:Z

    iget-object v0, v7, Lcom/zui/launcher/popup/ArrowPopup;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v5, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    move v3, v12

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/popup/ArrowPopup;->getVerticalLeftSideX(ZIIIII)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/popup/ArrowPopup;->isRtlLayoutHorizontal()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v0, v7, Lcom/zui/launcher/popup/ArrowPopup;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v15

    sub-int/2addr v0, v14

    sub-int/2addr v0, v9

    iget v1, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    const/16 v1, 0x13

    iput v1, v7, Lcom/zui/launcher/popup/ArrowPopup;->e:I

    :cond_e
    iget-boolean v1, v7, Lcom/zui/launcher/popup/ArrowPopup;->mIsRtl:Z

    if-nez v1, :cond_10

    add-int v9, v17, v9

    iget v1, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v1

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    if-ge v9, v1, :cond_f

    const/4 v1, 0x1

    goto :goto_b

    :cond_f
    const/4 v1, 0x1

    goto :goto_a

    :cond_10
    const/4 v1, 0x1

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    if-le v0, v2, :cond_11

    :goto_a
    iput-boolean v8, v7, Lcom/zui/launcher/popup/ArrowPopup;->mIsLeftAligned:Z

    move v2, v0

    goto :goto_c

    :cond_11
    :goto_b
    iput-boolean v1, v7, Lcom/zui/launcher/popup/ArrowPopup;->mIsLeftAligned:Z

    move/from16 v2, v17

    :goto_c
    iput-boolean v1, v7, Lcom/zui/launcher/popup/ArrowPopup;->mIsAboveIcon:Z

    :cond_12
    int-to-float v0, v2

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setX(F)V

    iget v0, v7, Lcom/zui/launcher/popup/ArrowPopup;->e:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/popup/ArrowPopup;->isRtlLayoutHorizontal()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, v7, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, v7, Lcom/zui/launcher/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v2, :cond_14

    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/popup/ArrowPopup;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v2, v0

    iget v0, v7, Lcom/zui/launcher/popup/ArrowPopup;->c:I

    sub-int/2addr v2, v0

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_d

    :cond_14
    const/16 v2, 0x30

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v2

    iput v13, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v13, v2

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v13, v0

    iget v0, v7, Lcom/zui/launcher/popup/ArrowPopup;->c:I

    sub-int/2addr v13, v0

    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_d
    return-void
.end method

.method protected reorderAndShow(I)V
    .locals 7

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->i:Z

    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->orientAboutObject()V

    iget-object v1, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setZ(F)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->getSupposedWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->changeOrderByType()V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/popup/ArrowPopup;->onInflationComplete(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->isAlignedWithStart()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0705bb

    goto :goto_0

    :cond_1
    const v3, 0x7f0705ba

    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0705bd

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v4

    iget-object v5, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    iget-boolean v5, p0, Lcom/zui/launcher/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v5, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result v5

    int-to-float v3, v3

    add-float/2addr v5, v3

    int-to-float v0, v0

    sub-float/2addr v5, v0

    invoke-virtual {v1, v5}, Landroid/view/View;->setX(F)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result v6

    int-to-float v1, v1

    add-float/2addr v6, v1

    int-to-float v1, v3

    sub-float/2addr v6, v1

    int-to-float v0, v0

    sub-float/2addr v6, v0

    invoke-virtual {v5, v6}, Landroid/view/View;->setX(F)V

    :goto_1
    iget v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->e:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->h:Z

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    iget-boolean v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v0, :cond_4

    const v0, 0x7f080323

    goto :goto_2

    :cond_4
    const v0, 0x7f080324

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getElevation()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object p1, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    iget v0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    iget-boolean v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v0, :cond_6

    iget v0, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v2, v0

    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    invoke-direct {p0}, Lcom/zui/launcher/popup/ArrowPopup;->animateOpen()V

    return-void
.end method

.method public setArrowShowFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/popup/ArrowPopup;->h:Z

    iget-object p1, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/popup/ArrowPopup;->d:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setShowCenterOfObject(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/popup/ArrowPopup;->j:Z

    return-void
.end method
