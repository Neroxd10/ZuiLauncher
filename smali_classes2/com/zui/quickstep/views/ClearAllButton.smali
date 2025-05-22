.class public Lcom/zui/quickstep/views/ClearAllButton;
.super Landroid/widget/Button;
.source ""


# static fields
.field public static final VISIBILITY_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/quickstep/views/ClearAllButton;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Lcom/zui/launcher/views/BaseDragLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zui/quickstep/views/ClearAllButton$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "visibilityAlpha"

    invoke-direct {v0, v1, v2}, Lcom/zui/quickstep/views/ClearAllButton$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/quickstep/views/ClearAllButton;->VISIBILITY_ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/zui/quickstep/views/ClearAllButton;->a:F

    iput p2, p0, Lcom/zui/quickstep/views/ClearAllButton;->b:F

    iput p2, p0, Lcom/zui/quickstep/views/ClearAllButton;->c:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/views/ClearAllButton;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/ClearAllButton;->c:F

    return p0
.end method

.method private b()V
    .locals 2

    iget v0, p0, Lcom/zui/quickstep/views/ClearAllButton;->a:F

    iget v1, p0, Lcom/zui/quickstep/views/ClearAllButton;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/zui/quickstep/views/ClearAllButton;->c:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setAlpha(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method private getDeviceProfile()Lcom/zui/launcher/DeviceProfile;
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/views/ClearAllButton;->d:Lcom/zui/launcher/views/BaseDragLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/views/BaseDragLayer;->getActivity()Landroid/content/Context;

    move-result-object p0

    instance-of v0, p0, Lcom/zui/launcher/BaseActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredWidth()I

    invoke-virtual {p0}, Lcom/zui/quickstep/views/ClearAllButton;->updatePosition()V

    return-void
.end method

.method public remove()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/ClearAllButton;->d:Lcom/zui/launcher/views/BaseDragLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/views/ClearAllButton;->d:Lcom/zui/launcher/views/BaseDragLayer;

    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/zui/quickstep/views/ClearAllButton;->b:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/zui/quickstep/views/ClearAllButton;->b:F

    invoke-direct {p0}, Lcom/zui/quickstep/views/ClearAllButton;->b()V

    :cond_0
    return-void
.end method

.method public setVisibilityAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/zui/quickstep/views/ClearAllButton;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/zui/quickstep/views/ClearAllButton;->c:F

    invoke-direct {p0}, Lcom/zui/quickstep/views/ClearAllButton;->b()V

    :cond_0
    return-void
.end method

.method public show(Lcom/zui/launcher/views/BaseDragLayer;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/zui/quickstep/views/ClearAllButton;->d:Lcom/zui/launcher/views/BaseDragLayer;

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/ClearAllButton;->updatePosition()V

    return-void
.end method

.method public updatePosition()V
    .locals 6

    new-instance v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePosition: hasGestures = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/zui/quickstep/SysUINavigationMode;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/quickstep/SysUINavigationMode;

    invoke-virtual {v2}, Lcom/zui/quickstep/SysUINavigationMode;->getMode()Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClearAllButton"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/zui/quickstep/views/ClearAllButton;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePosition: isVertical = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "Null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePosition: dp.getInsets().bottom = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, "null"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/zui/quickstep/SysUINavigationMode;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/quickstep/SysUINavigationMode;

    invoke-virtual {v2}, Lcom/zui/quickstep/SysUINavigationMode;->getMode()Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    const v3, 0x7f0707b1

    const/4 v4, 0x0

    const/16 v5, 0x51

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_2

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto/16 :goto_2

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v2, v1, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    :cond_3
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_3

    :cond_4
    const v2, 0x7f0707b0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-nez v1, :cond_5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_5
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_2
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_3
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
