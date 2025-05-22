.class public Lcom/zui/launcher/views/Snackbar;
.super Lcom/zui/launcher/AbstractFloatingView;
.source ""


# instance fields
.field private final a:Lcom/zui/launcher/Launcher;

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/views/Snackbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/views/Snackbar;->a:Lcom/zui/launcher/Launcher;

    const p2, 0x7f0d0171

    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/zui/launcher/views/Snackbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/views/Snackbar;->d()V

    return-void
.end method

.method static synthetic b(Ljava/lang/Runnable;Lcom/zui/launcher/views/Snackbar;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/zui/launcher/views/Snackbar;->b:Ljava/lang/Runnable;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/views/Snackbar;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/views/Snackbar;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/zui/launcher/views/Snackbar;->b:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static show(Lcom/zui/launcher/Launcher;IILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 14

    move-object v0, p0

    const/4 v1, 0x1

    const/16 v2, 0x80

    invoke-static {p0, v1, v2}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenViews(Lcom/zui/launcher/views/ActivityContext;ZI)V

    new-instance v2, Lcom/zui/launcher/views/Snackbar;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zui/launcher/views/Snackbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070757

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setElevation(F)V

    const v5, 0x7f07075e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v6, 0x7f0804cb

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iput-boolean v1, v2, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    const/16 v7, 0x51

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v7, 0x7f070758

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v7, 0x7f07075a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f07075c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x7f070759

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v11

    const/4 v12, 0x2

    mul-int/2addr v8, v12

    sub-int/2addr v11, v8

    iget v8, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v8

    iget v8, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v8

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    mul-int/2addr v7, v12

    sub-int/2addr v1, v7

    iget v7, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v7

    iget v7, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v7

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v1

    invoke-virtual {v6, v3, v3, v3, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const v1, 0x7f0a0205

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v7, 0x7f0a0045

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move v8, p1

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v9, p2

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v13

    add-float/2addr v10, v13

    float-to-int v10, v10

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v13

    add-int/2addr v10, v13

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v13

    add-int/2addr v10, v13

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v13

    add-int/2addr v10, v13

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v13

    add-int/2addr v10, v13

    mul-int/2addr v5, v12

    add-int/2addr v10, v5

    iget v5, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-le v10, v5, :cond_1

    if-gt v10, v11, :cond_0

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const v5, 0x7f070756

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v10, 0x7f07075d

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    mul-int/lit8 v12, v5, 0x2

    iput v12, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v12, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v7, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v3, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v3, v5

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_1
    :goto_0
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/zui/launcher/views/s;

    move-object/from16 v3, p4

    invoke-direct {v1, v3, v2}, Lcom/zui/launcher/views/s;-><init>(Ljava/lang/Runnable;Lcom/zui/launcher/views/Snackbar;)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v1, p3

    iput-object v1, v2, Lcom/zui/launcher/views/Snackbar;->b:Ljava/lang/Runnable;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0xb4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v3, Lcom/zui/launcher/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/16 v1, 0xfa0

    const/4 v3, 0x6

    invoke-static {p0, v1, v3}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->getRecommendedTimeoutMillis(Landroid/content/Context;II)I

    move-result v0

    new-instance v1, Lcom/zui/launcher/views/r;

    invoke-direct {v1, v2}, Lcom/zui/launcher/views/r;-><init>(Lcom/zui/launcher/views/Snackbar;)V

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected handleClose(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_1

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

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher/views/q;

    invoke-direct {v0, p0}, Lcom/zui/launcher/views/q;-><init>(Lcom/zui/launcher/views/Snackbar;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-direct {p0}, Lcom/zui/launcher/views/Snackbar;->d()V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    :cond_1
    return-void
.end method

.method public isOfType(I)Z
    .locals 0

    and-int/lit16 p0, p1, 0x80

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

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/views/Snackbar;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
