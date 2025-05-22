.class public Lcom/zui/quickstep/views/ShelfScrimView;
.super Lcom/zui/launcher/views/ScrimView;
.source ""

# interfaces
.implements Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;


# instance fields
.field private A:I

.field private B:I

.field private final C:Landroid/graphics/Path;

.field private final D:Landroid/graphics/Path;

.field private E:Z

.field private F:Lcom/zui/quickstep/SysUINavigationMode$Mode;

.field private m:Z

.field private n:I

.field private final o:F

.field private final p:I

.field private final q:Landroid/graphics/Paint;

.field private r:I

.field private s:F

.field private t:Landroid/view/animation/Interpolator;

.field private u:Landroid/view/animation/Interpolator;

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/views/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p2, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/zui/quickstep/views/ShelfScrimView;->t:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/zui/quickstep/views/ShelfScrimView;->u:Landroid/view/animation/Interpolator;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/views/ShelfScrimView;->C:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/views/ShelfScrimView;->D:Landroid/graphics/Path;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/quickstep/views/ShelfScrimView;->E:Z

    sget-object p2, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2, v0}, Lcom/zui/launcher/LauncherState;->getWorkspaceScrimAlpha(Lcom/zui/launcher/Launcher;)F

    move-result p2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lcom/zui/quickstep/views/ShelfScrimView;->p:I

    iget p2, p0, Lcom/zui/launcher/views/ScrimView;->mEndScrim:I

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    iput p2, p0, Lcom/zui/quickstep/views/ShelfScrimView;->n:I

    invoke-static {p1}, Lcom/zui/launcher/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/zui/quickstep/views/ShelfScrimView;->o:F

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/zui/quickstep/views/ShelfScrimView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070737

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->w:F

    iput-boolean v0, p0, Lcom/zui/quickstep/views/ShelfScrimView;->m:Z

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 13

    iget-boolean v0, p0, Lcom/zui/quickstep/views/ShelfScrimView;->m:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/zui/launcher/views/ScrimView;->mCurrentFlatColor:I

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/zui/quickstep/views/ShelfScrimView;->A:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lcom/zui/launcher/views/ScrimView;->mProgress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    iget p0, p0, Lcom/zui/quickstep/views/ShelfScrimView;->A:I

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/zui/quickstep/views/ShelfScrimView;->B:I

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/zui/quickstep/views/ShelfScrimView;->E:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/zui/quickstep/views/ShelfScrimView;->C:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/zui/quickstep/views/ShelfScrimView;->C:Landroid/graphics/Path;

    const/4 v5, 0x0

    int-to-float v3, v0

    iget v10, p0, Lcom/zui/quickstep/views/ShelfScrimView;->o:F

    sub-float v6, v3, v10

    int-to-float v12, v2

    add-float v7, v3, v10

    const/high16 v8, 0x41200000    # 10.0f

    add-float/2addr v8, v7

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v7, v12

    move v9, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    iget-object v4, p0, Lcom/zui/quickstep/views/ShelfScrimView;->D:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v6, p0, Lcom/zui/quickstep/views/ShelfScrimView;->D:Landroid/graphics/Path;

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v9, v12

    move v10, v3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v3, p0, Lcom/zui/quickstep/views/ShelfScrimView;->D:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/zui/quickstep/views/ShelfScrimView;->C:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_4
    int-to-float v3, v0

    iget v4, p0, Lcom/zui/quickstep/views/ShelfScrimView;->o:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/zui/quickstep/views/ShelfScrimView;->y:F

    sub-float/2addr v3, v4

    neg-float v4, v3

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/zui/quickstep/views/ShelfScrimView;->q:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zui/quickstep/views/ShelfScrimView;->B:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/zui/quickstep/views/ShelfScrimView;->D:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/zui/quickstep/views/ShelfScrimView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_5
    iget-object v1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->q:Landroid/graphics/Paint;

    iget v3, p0, Lcom/zui/quickstep/views/ShelfScrimView;->A:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    iget v6, p0, Lcom/zui/quickstep/views/ShelfScrimView;->y:F

    int-to-float v7, v2

    int-to-float v0, v0

    iget v10, p0, Lcom/zui/quickstep/views/ShelfScrimView;->o:F

    add-float v8, v0, v10

    iget-object v11, p0, Lcom/zui/quickstep/views/ShelfScrimView;->q:Landroid/graphics/Paint;

    move-object v4, p1

    move v9, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/zui/launcher/views/ScrimView;->onAttachedToWindow()V

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SysUINavigationMode;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/SysUINavigationMode;->addModeChangeListener(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/ShelfScrimView;->onNavigationModeChanged(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070737

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->w:F

    invoke-virtual {p0}, Lcom/zui/quickstep/views/ShelfScrimView;->updateColors()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/zui/launcher/views/ScrimView;->onDetachedFromWindow()V

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SysUINavigationMode;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/SysUINavigationMode;->removeModeChangeListener(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/ShelfScrimView;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/ScrimView;->drawDragHandle(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onNavigationModeChanged(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V
    .locals 2

    iput-object p1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->F:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/zui/launcher/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->t:Landroid/view/animation/Interpolator;

    sget-object p1, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->t:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/zui/launcher/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->u:Landroid/view/animation/Interpolator;

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->E:Z

    return-void
.end method

.method public reInitUi()V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->m:Z

    if-nez v1, :cond_1

    iput-boolean v1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->E:Z

    iget-object v2, p0, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result v2

    iput v2, p0, Lcom/zui/quickstep/views/ShelfScrimView;->v:F

    sget-object v2, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    iget-object v3, p0, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2, v3}, Lcom/zui/launcher/LauncherState;->getVisibleElements(Lcom/zui/launcher/Launcher;)I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_0

    iput v3, p0, Lcom/zui/quickstep/views/ShelfScrimView;->s:F

    iput v1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->r:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04002c

    invoke-static {v1, v2}, Lcom/zui/launcher/util/Themes;->getAttrInteger(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->r:I

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getHotseatLayoutPadding()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-static {v0}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getDefaultSwipeHeight(Lcom/zui/launcher/DeviceProfile;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/zui/quickstep/views/ShelfScrimView;->v:F

    div-float/2addr v1, v2

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/zui/quickstep/views/ShelfScrimView;->s:F

    :goto_0
    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->w:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/zui/quickstep/views/ShelfScrimView;->x:F

    iget v1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->v:F

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->z:F

    :cond_1
    invoke-virtual {p0}, Lcom/zui/quickstep/views/ShelfScrimView;->updateColors()V

    invoke-virtual {p0}, Lcom/zui/launcher/views/ScrimView;->updateDragHandleAlpha()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 8

    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/views/ScrimView;->mEndFlatColor:I

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getFolderBackgoundColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/views/ScrimView;->mEndFlatColorAlpha:I

    iput v0, p0, Lcom/zui/quickstep/views/ShelfScrimView;->n:I

    invoke-super {p0}, Lcom/zui/launcher/views/ScrimView;->updateColors()V

    iget-boolean v0, p0, Lcom/zui/quickstep/views/ShelfScrimView;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleOffset:F

    return-void

    :cond_0
    iget v0, p0, Lcom/zui/quickstep/views/ShelfScrimView;->w:F

    iget v2, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleSize:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleOffset:F

    iget v0, p0, Lcom/zui/launcher/views/ScrimView;->mProgress:F

    const v2, 0x3e4ccccd    # 0.2f

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1

    iget v2, p0, Lcom/zui/quickstep/views/ShelfScrimView;->v:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/zui/quickstep/views/ShelfScrimView;->x:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/zui/quickstep/views/ShelfScrimView;->y:F

    goto :goto_0

    :cond_1
    div-float/2addr v0, v2

    iget v2, p0, Lcom/zui/quickstep/views/ShelfScrimView;->o:F

    neg-float v2, v2

    iget v3, p0, Lcom/zui/quickstep/views/ShelfScrimView;->z:F

    invoke-static {v0, v2, v3}, Lcom/zui/launcher/Utilities;->mapRange(FFF)F

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/views/ShelfScrimView;->y:F

    :goto_0
    iget v2, p0, Lcom/zui/launcher/views/ScrimView;->mProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_2

    iput v1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->B:I

    iput v1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->A:I

    iget-object v0, p0, Lcom/zui/quickstep/views/ShelfScrimView;->F:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherState;->BACKGROUND_APP:Lcom/zui/launcher/LauncherState;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/zui/launcher/views/ScrimView;->mEndScrim:I

    iget v1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->r:I

    invoke-static {v0, v1}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/zui/quickstep/views/ShelfScrimView;->s:F

    cmpl-float v0, v2, v4

    if-ltz v0, :cond_3

    iput v1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->B:I

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->r:I

    int-to-float v5, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/zui/quickstep/views/ShelfScrimView;->t:Landroid/view/animation/Interpolator;

    move v3, v4

    move v4, v0

    invoke-static/range {v2 .. v7}, Lcom/zui/launcher/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/views/ScrimView;->mEndScrim:I

    invoke-static {v1, v0}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/zui/quickstep/views/ShelfScrimView;->A:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleOffset:F

    iget v1, p0, Lcom/zui/quickstep/views/ShelfScrimView;->v:F

    sub-float v3, v4, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleOffset:F

    const/4 v3, 0x0

    iget v0, p0, Lcom/zui/quickstep/views/ShelfScrimView;->n:I

    int-to-float v5, v0

    iget v0, p0, Lcom/zui/quickstep/views/ShelfScrimView;->r:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/zui/quickstep/views/ShelfScrimView;->u:Landroid/view/animation/Interpolator;

    invoke-static/range {v2 .. v7}, Lcom/zui/launcher/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/views/ScrimView;->mEndScrim:I

    invoke-static {v1, v0}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/views/ShelfScrimView;->A:I

    iget v1, p0, Lcom/zui/launcher/views/ScrimView;->mProgress:F

    const/4 v2, 0x0

    iget v3, p0, Lcom/zui/quickstep/views/ShelfScrimView;->s:F

    iget v0, p0, Lcom/zui/quickstep/views/ShelfScrimView;->p:I

    int-to-float v4, v0

    const/4 v5, 0x0

    sget-object v6, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static/range {v1 .. v6}, Lcom/zui/launcher/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/views/ScrimView;->mScrimColor:I

    invoke-static {v1, v0}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/views/ShelfScrimView;->B:I

    :cond_4
    :goto_2
    return-void
.end method
