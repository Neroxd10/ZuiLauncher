.class public Lcom/zui/quickstep/util/LayoutUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateFallbackTaskSize(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, p2}, Lcom/zui/quickstep/util/LayoutUtils;->calculateTaskSize(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;FILandroid/graphics/Rect;)V

    return-void
.end method

.method public static calculateLauncherTaskSize(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    iget v1, p1, Lcom/zui/launcher/DeviceProfile;->verticalDragHandleSizePx:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/zui/quickstep/util/LayoutUtils;->calculateTaskSize(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;FILandroid/graphics/Rect;)V

    return-void
.end method

.method public static calculateTaskSize(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;FILandroid/graphics/Rect;)V
    .locals 11
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {p0}, Lcom/zui/quickstep/util/LayoutUtils;->isHomeAndOverviewSame(Landroid/content/Context;)Z

    move-result v2

    iget-boolean v3, p1, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    const v4, 0x7f0707d5

    if-eqz v3, :cond_0

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0707b9

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0707d9

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0707be

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr p3, v0

    iget v0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    sub-int/2addr v0, p0

    sub-int p0, p1, p2

    add-int/2addr v0, p3

    invoke-virtual {p4, p0, p3, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    iget-boolean v3, p1, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    if-ne p3, v3, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->getFullScreenProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p3

    iget v3, p3, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    int-to-float v3, v3

    iget v6, p3, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    int-to-float v6, v6

    const v7, 0x7f0704c8

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    div-float/2addr v7, v5

    iget-boolean p3, p3, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz p3, :cond_1

    div-float/2addr v3, v5

    sub-float/2addr v3, v7

    goto :goto_0

    :cond_1
    div-float/2addr v6, v5

    sub-float/2addr v6, v7

    :goto_0
    const p3, 0x7f0704c7

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    if-eqz v2, :cond_5

    iget-boolean v7, p1, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v7, :cond_5

    const v7, 0x7f0704c9

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    add-float/2addr v3, v7

    goto :goto_2

    :cond_2
    iget p3, p1, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    int-to-float v3, p3

    iget p3, p1, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    int-to-float v6, p3

    const p3, 0x7f0704c6

    :goto_1
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    goto :goto_2

    :cond_3
    iget p3, p1, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    int-to-float v3, p3

    iget p3, p1, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    int-to-float v6, p3

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p3

    if-eqz p3, :cond_4

    const p3, 0x7f070419

    goto :goto_1

    :cond_4
    const p3, 0x7f0705c6

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const v7, 0x7f0707ae

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iget-boolean v8, p1, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v8, :cond_6

    iget-boolean v8, p1, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v8, :cond_6

    const v8, 0x7f0707af

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    add-float/2addr v7, v8

    :cond_6
    iget v8, p1, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget v9, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    iget v9, p1, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    iget v10, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float v10, v9, v4

    sub-float/2addr v10, p2

    sub-float/2addr v10, v7

    int-to-float v7, v8

    sub-float p3, v7, p3

    div-float/2addr p3, v3

    div-float/2addr v10, v6

    invoke-static {p3, v10}, Ljava/lang/Math;->min(FF)F

    move-result p3

    mul-float/2addr v3, p3

    mul-float/2addr v6, p3

    iget v8, v1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    sub-float/2addr v7, v3

    div-float/2addr v7, v5

    add-float/2addr v8, v7

    iget v7, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v9, p2

    sub-float/2addr v9, v6

    div-float/2addr v9, v5

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result p2

    add-float/2addr v7, p2

    const p2, 0x7f0707e0

    if-eqz v2, :cond_8

    iget-boolean v4, p1, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v4, :cond_8

    iget-boolean p3, p1, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz p3, :cond_7

    const p0, 0x7f0707df

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_3

    :cond_7
    const p3, 0x7f0707de

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr v7, p3

    sget-object p3, Lcom/zui/quickstep/SysUINavigationMode;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p3, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/SysUINavigationMode;

    invoke-virtual {p0}, Lcom/zui/quickstep/SysUINavigationMode;->getMode()Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p0

    iget-boolean p0, p0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    if-nez p0, :cond_a

    const p0, 0x7f0707e1

    goto :goto_4

    :cond_8
    if-eqz v2, :cond_a

    iget-boolean p0, p1, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_9

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_3
    int-to-float p0, p0

    sub-float/2addr v7, p0

    goto :goto_5

    :cond_9
    const p0, 0x7f0707dd

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v7, p0

    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, p0

    int-to-float p0, p0

    mul-float/2addr p0, p3

    sub-float/2addr v4, p0

    div-float/2addr v4, v5

    add-float/2addr v7, v4

    iget p0, v1, Landroid/graphics/Rect;->top:I

    if-nez p0, :cond_a

    const p0, 0x7f0707d0

    :goto_4
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v7, p0

    :cond_a
    :goto_5
    if-nez v2, :cond_b

    iget-boolean p0, p1, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_b

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v7, p0

    :cond_b
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p4, p0, p1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static getShelfTrackingDistance(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;)I
    .locals 1

    iget v0, p1, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0707ae

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static isHomeAndOverviewSame(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public static setViewEnabled(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/zui/quickstep/util/LayoutUtils;->setViewEnabled(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
