.class public Lcom/zui/launcher/views/ArrowTipView;
.super Lcom/zui/launcher/AbstractFloatingView;
.source ""


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:I

.field private c:Z

.field private d:Ljava/lang/Runnable;

.field private e:Landroid/view/View;

.field protected final mActivity:Lcom/zui/launcher/BaseDraggingActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/zui/launcher/views/ArrowTipView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/views/ArrowTipView;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/views/ArrowTipView;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/views/ArrowTipView;->a:Landroid/os/Handler;

    invoke-static {p1}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/BaseDraggingActivity;

    iput-object v0, p0, Lcom/zui/launcher/views/ArrowTipView;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    iput-boolean p2, p0, Lcom/zui/launcher/views/ArrowTipView;->c:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07013e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/views/ArrowTipView;->b:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/views/ArrowTipView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0d0052

    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p1, 0x7f0a009d

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/views/ArrowTipView;->e:Landroid/view/View;

    invoke-direct {p0}, Lcom/zui/launcher/views/ArrowTipView;->h()V

    return-void
.end method

.method private g(Ljava/lang/String;III)Lcom/zui/launcher/views/ArrowTipView;
    .locals 9
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/views/ArrowTipView;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0708c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v2, v4, 0x2

    add-int/2addr v2, v1

    if-ge v5, v2, :cond_0

    sget-object p0, Lcom/zui/launcher/views/ArrowTipView;->f:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot display tip on a small screen of size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const v2, 0x7f0a03b7

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    new-instance p1, Lcom/zui/launcher/views/d;

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move v6, p4

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/views/d;-><init>(Lcom/zui/launcher/views/ArrowTipView;IIIIII)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    iget-object p1, p0, Lcom/zui/launcher/views/ArrowTipView;->a:Landroid/os/Handler;

    new-instance p2, Lcom/zui/launcher/views/b;

    invoke-direct {p2, p0}, Lcom/zui/launcher/views/b;-><init>(Lcom/zui/launcher/views/ArrowTipView;)V

    const-wide/16 p3, 0x2710

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/zui/launcher/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-object p0
.end method

.method private h()V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/views/ArrowTipView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    iget-boolean v4, p0, Lcom/zui/launcher/views/ArrowTipView;->c:Z

    invoke-static {v2, v3, v4}, Lcom/zui/launcher/graphics/TriangleShape;->create(FFZ)Lcom/zui/launcher/graphics/TriangleShape;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07013f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06006f

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/CornerPathEffect;

    int-to-float v5, v3

    invoke-direct {v4, v5}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v2, p0, Lcom/zui/launcher/views/ArrowTipView;->e:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/zui/launcher/views/ArrowTipView;->e:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/zui/launcher/views/ArrowTipView;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/views/ArrowTipView;->e:Landroid/view/View;

    invoke-virtual {p0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/views/ArrowTipView;->e:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic b()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/views/ArrowTipView;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic c(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/views/ArrowTipView;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    :goto_0
    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setY(F)V

    return-void
.end method

.method public synthetic d()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/views/ArrowTipView;->handleClose(Z)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public synthetic e(IIIIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float p1, p1

    sub-float v2, p1, v0

    int-to-float v3, p2

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    add-float/2addr v0, p1

    sub-int/2addr p3, p2

    int-to-float p2, p3

    cmpl-float p2, v0, p2

    if-lez p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    sub-int/2addr p3, p2

    int-to-float v2, p3

    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setX(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    iget-boolean p3, p0, Lcom/zui/launcher/views/ArrowTipView;->c:Z

    if-eqz p3, :cond_2

    add-int p3, p4, p2

    if-le p3, p5, :cond_3

    goto :goto_1

    :cond_2
    sub-int p3, p6, p2

    if-gez p3, :cond_3

    :goto_1
    iget-boolean p3, p0, Lcom/zui/launcher/views/ArrowTipView;->c:Z

    xor-int/lit8 p3, p3, 0x1

    iput-boolean p3, p0, Lcom/zui/launcher/views/ArrowTipView;->c:Z

    invoke-direct {p0}, Lcom/zui/launcher/views/ArrowTipView;->h()V

    :cond_3
    iget-boolean p3, p0, Lcom/zui/launcher/views/ArrowTipView;->c:Z

    if-eqz p3, :cond_4

    int-to-float p2, p4

    goto :goto_2

    :cond_4
    sub-int/2addr p6, p2

    int-to-float p2, p6

    :goto_2
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setY(F)V

    iget-object p2, p0, Lcom/zui/launcher/views/ArrowTipView;->e:Landroid/view/View;

    sub-float/2addr p1, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v1

    sub-float/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public synthetic f()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/views/ArrowTipView;->handleClose(Z)V

    return-void
.end method

.method protected handleClose(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher/views/f;

    invoke-direct {v0, p0}, Lcom/zui/launcher/views/f;-><init>(Lcom/zui/launcher/views/ArrowTipView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lcom/zui/launcher/views/ArrowTipView;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {p1}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/views/ArrowTipView;->d:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    :cond_2
    return-void
.end method

.method public isOfType(I)Z
    .locals 0

    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public logActionCommand(I)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    iget-object v1, p0, Lcom/zui/launcher/views/ArrowTipView;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {v1}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setOnClosedCallback(Ljava/lang/Runnable;)Lcom/zui/launcher/views/ArrowTipView;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/ArrowTipView;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method public show(Ljava/lang/String;I)Lcom/zui/launcher/views/ArrowTipView;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/zui/launcher/views/ArrowTipView;->show(Ljava/lang/String;III)Lcom/zui/launcher/views/ArrowTipView;

    move-result-object p0

    return-object p0
.end method

.method public show(Ljava/lang/String;III)Lcom/zui/launcher/views/ArrowTipView;
    .locals 4

    const v0, 0x7f0a03b7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/launcher/views/ArrowTipView;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {p1}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/zui/launcher/views/ArrowTipView;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    sub-int p3, v2, p3

    :cond_0
    const v2, 0x800005

    if-ne p2, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p1, p3

    iget p2, p0, Lcom/zui/launcher/views/ArrowTipView;->b:I

    sub-int/2addr p1, p2

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_1
    const p1, 0x800003

    if-ne p2, p1, :cond_2

    iget p1, p0, Lcom/zui/launcher/views/ArrowTipView;->b:I

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p3, p1

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    iget-object p1, p0, Lcom/zui/launcher/views/ArrowTipView;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/zui/launcher/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object p1, p0, Lcom/zui/launcher/views/ArrowTipView;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/zui/launcher/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    new-instance p1, Lcom/zui/launcher/views/c;

    invoke-direct {p1, p0, p4}, Lcom/zui/launcher/views/c;-><init>(Lcom/zui/launcher/views/ArrowTipView;I)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    iput-boolean v3, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    iget-object p1, p0, Lcom/zui/launcher/views/ArrowTipView;->a:Landroid/os/Handler;

    new-instance p2, Lcom/zui/launcher/views/e;

    invoke-direct {p2, p0}, Lcom/zui/launcher/views/e;-><init>(Lcom/zui/launcher/views/ArrowTipView;)V

    const-wide/16 p3, 0x2710

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/zui/launcher/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-object p0
.end method

.method public showAroundRect(Ljava/lang/String;ILandroid/graphics/Rect;I)Lcom/zui/launcher/views/ArrowTipView;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p4

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p3, p4

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/zui/launcher/views/ArrowTipView;->g(Ljava/lang/String;III)Lcom/zui/launcher/views/ArrowTipView;

    move-result-object p0

    return-object p0
.end method

.method public showAtLocation(Ljava/lang/String;II)Lcom/zui/launcher/views/ArrowTipView;
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1, p2, p3, p3}, Lcom/zui/launcher/views/ArrowTipView;->g(Ljava/lang/String;III)Lcom/zui/launcher/views/ArrowTipView;

    move-result-object p0

    return-object p0
.end method
