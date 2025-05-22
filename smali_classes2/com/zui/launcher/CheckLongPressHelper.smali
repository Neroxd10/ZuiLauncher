.class public Lcom/zui/launcher/CheckLongPressHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_LONG_PRESS_TIMEOUT_FACTOR:F = 0.75f


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View$OnLongClickListener;

.field private final c:F

.field private d:F

.field private e:Z

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/CheckLongPressHelper;-><init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->d:F

    iput-object p1, p0, Lcom/zui/launcher/CheckLongPressHelper;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/zui/launcher/CheckLongPressHelper;->b:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/CheckLongPressHelper;->c:F

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/CheckLongPressHelper;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->f:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private static b(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static synthetic c(Lcom/zui/launcher/CheckLongPressHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/CheckLongPressHelper;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->b:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->e:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->b:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/CheckLongPressHelper;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->e:Z

    :cond_2
    invoke-direct {p0}, Lcom/zui/launcher/CheckLongPressHelper;->a()V

    :cond_3
    return-void
.end method

.method public static isContentRect(Landroid/content/Context;Landroid/view/View;II)Z
    .locals 5

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    instance-of v0, p1, Lcom/zui/launcher/BubbleTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v0}, Lcom/zui/launcher/BubbleTextView;->isLayoutHorizontal()Z

    move-result v0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/zui/launcher/ActiveIconView;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {v0}, Lcom/zui/launcher/ActiveIconView;->isLayoutHorizontal()Z

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/FolderIcon;->isLayoutHorizontal()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    sub-int v2, v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v0, p0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    add-int/2addr v0, v2

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v3, p0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    sub-int/2addr p1, v3

    div-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    move v4, v2

    move v2, v0

    move v0, v4

    :goto_2
    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    add-int/2addr p0, p1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, p1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->e:Z

    invoke-direct {p0}, Lcom/zui/launcher/CheckLongPressHelper;->a()V

    return-void
.end method

.method public hasPerformedLongPress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/CheckLongPressHelper;->e:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/zui/launcher/CheckLongPressHelper;->c:F

    invoke-static {v0, v1, v2, v3}, Lcom/zui/launcher/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/zui/launcher/CheckLongPressHelper;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->postCheckForLongPress()V

    invoke-static {p1}, Lcom/zui/launcher/CheckLongPressHelper;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_1
    invoke-direct {p0}, Lcom/zui/launcher/CheckLongPressHelper;->d()V

    :cond_4
    :goto_2
    return-void
.end method

.method public postCheckForLongPress()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->e:Z

    iget-object v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->f:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/o;

    invoke-direct {v0, p0}, Lcom/zui/launcher/o;-><init>(Lcom/zui/launcher/CheckLongPressHelper;)V

    iput-object v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->f:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/CheckLongPressHelper;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/zui/launcher/CheckLongPressHelper;->f:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-float v2, v2

    iget p0, p0, Lcom/zui/launcher/CheckLongPressHelper;->d:F

    mul-float/2addr v2, p0

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setLongPressTimeoutFactor(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/CheckLongPressHelper;->d:F

    return-void
.end method
