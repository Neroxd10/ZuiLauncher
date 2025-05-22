.class public Lcom/zui/launcher/DeviceProfile;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;
    }
.end annotation


# static fields
.field public static final DEW_THEME_FACTOR:F = 1.05f


# instance fields
.field private final a:I

.field public allAppsCellHeightPx:I

.field public allAppsIconDrawablePaddingPx:I

.field public allAppsIconPaddingPx:I

.field public allAppsIconSizePx:I

.field public allAppsIconTextSizePx:F

.field public final appWidgetScale:Landroid/graphics/PointF;

.field public final aspectRatio:F

.field public final availableHeightPx:I

.field public final availableWidthPx:I

.field private final b:Landroid/graphics/Rect;

.field public badgeCircleHeight:I

.field public badgeTextSize:I

.field private final c:Landroid/graphics/Rect;

.field public cellHeightPx:I

.field public cellLayoutBorderSpacingPx:I

.field public final cellLayoutBottomPaddingPx:I

.field public final cellLayoutPaddingLeftRightPx:I

.field public cellWidthPx:I

.field private d:Z

.field public final desiredWorkspaceLeftRightMarginPx:I

.field public dockviewBarHeightPx:I

.field public dockviewTopPaddingPx:I

.field public dropTargetBarSizePx:I

.field e:Z

.field public final edgeMarginPx:I

.field f:Z

.field public folderCellHeightPx:I

.field public folderCellMinHeightPx:I

.field public folderCellWidthPx:I

.field public folderChildDrawablePaddingPx:I

.field public folderChildIconSizePx:I

.field public folderChildTextSizePx:I

.field public folderIconOffsetYPx:I

.field public folderIconSizePx:I

.field public final heightPx:I

.field public hotseatBarBottomPaddingPx:I

.field public final hotseatBarSidePaddingEndPx:I

.field public final hotseatBarSidePaddingStartPx:I

.field public hotseatBarSizePx:I

.field public final hotseatBarTopPaddingPx:I

.field public hotseatCellHeightPx:I

.field public iconDrawablePaddingOriginalPx:I

.field public iconDrawablePaddingPx:I

.field public iconPaddingTop:I

.field public iconPaddingTopHotseat:I

.field public iconScale:F

.field public iconSizePx:I

.field public iconTextSizePx:I

.field public iconVisualSize:I

.field public final inv:Lcom/zui/launcher/InvariantDeviceProfile;

.field public final isLandscape:Z

.field public final isLargeTablet:Z

.field public final isMultiWindowMode:Z

.field public final isPhone:Z

.field public final isTablet:Z

.field public landCellPaddingEndPx:I

.field public mDotRenderer:Lcom/zui/launcher/icons/DotRenderer;

.field public mStatusBarHeight:I

.field public final overviewShowAsGrid:Z

.field public overviewTaskIconDrawableSizeGridPx:I

.field public overviewTaskIconDrawableSizePx:I

.field public overviewTaskIconSizePx:I

.field public overviewTaskMarginGridPx:I

.field public overviewTaskMarginPx:I

.field public overviewTaskThumbnailTopMarginPx:I

.field public pageIndicatorHeight:I

.field public final transposeLayoutWithOrientation:Z

.field public verticalDragHandleSizePx:I

.field public widgetListPanelHeight:I

.field public final widthPx:I

.field public workspaceCellPaddingXPx:I

.field public final workspacePadding:Landroid/graphics/Rect;

.field public workspaceSpringLoadShrinkFactor:F

.field public final workspaceSpringLoadedBottomSpace:I

.field public workspaceTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/launcher/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZZ)V
    .locals 12

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Landroid/graphics/PointF;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v5, v0, Lcom/zui/launcher/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/zui/launcher/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/zui/launcher/DeviceProfile;->c:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/zui/launcher/DeviceProfile;->e:Z

    iput-boolean v5, v0, Lcom/zui/launcher/DeviceProfile;->f:Z

    iput-object v1, v0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iput-boolean v4, v0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    move/from16 v6, p8

    iput-boolean v6, v0, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    move/from16 v6, p5

    iput v6, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    move/from16 v6, p6

    iput v6, v0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    if-eqz v4, :cond_0

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v0, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v0, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    iget v2, v3, Landroid/graphics/Point;->y:I

    :goto_0
    iput v2, v0, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const v6, 0x7f05000e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/zui/launcher/DeviceProfile;->f:Z

    const v6, 0x7f050011

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    const v6, 0x7f050010

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/zui/launcher/DeviceProfile;->isLargeTablet:Z

    iget-boolean v7, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    const/4 v8, 0x1

    if-nez v7, :cond_1

    if-nez v6, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    iput-boolean v6, v0, Lcom/zui/launcher/DeviceProfile;->isPhone:Z

    iget v6, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget v7, v0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget v9, v0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, v0, Lcom/zui/launcher/DeviceProfile;->aspectRatio:F

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    const v6, 0x7f05000f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/zui/launcher/DeviceProfile;->transposeLayoutWithOrientation:Z

    const/4 v2, 0x2

    move-object v6, p1

    if-eqz v4, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    invoke-static {p1, v7}, Lcom/zui/launcher/DeviceProfile;->b(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0702ea

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/zui/launcher/DeviceProfile;->edgeMarginPx:I

    iget-boolean v9, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    const v10, 0x7f0702eb

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v9

    if-eqz v9, :cond_4

    :goto_3
    move v9, v5

    goto :goto_4

    :cond_4
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :goto_4
    iput v9, v0, Lcom/zui/launcher/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    const v9, 0x7f0702dd

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-boolean v10, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v10, :cond_5

    :goto_5
    iput v9, v0, Lcom/zui/launcher/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    iput v5, v0, Lcom/zui/launcher/DeviceProfile;->cellLayoutBottomPaddingPx:I

    goto :goto_6

    :cond_5
    if-eqz v4, :cond_6

    iput v5, v0, Lcom/zui/launcher/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    iput v9, v0, Lcom/zui/launcher/DeviceProfile;->cellLayoutBottomPaddingPx:I

    goto :goto_6

    :cond_6
    mul-int/2addr v9, v8

    goto :goto_5

    :goto_6
    const v4, 0x7f07084a

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/zui/launcher/DeviceProfile;->verticalDragHandleSizePx:I

    const v9, 0x7f070849

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/zui/launcher/DeviceProfile;->a:I

    const v9, 0x7f0702e6

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/zui/launcher/DeviceProfile;->dropTargetBarSizePx:I

    const v9, 0x7f0702f3

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/zui/launcher/DeviceProfile;->workspaceSpringLoadedBottomSpace:I

    const v9, 0x7f0702de

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/zui/launcher/DeviceProfile;->workspaceCellPaddingXPx:I

    const v9, 0x7f0702f1

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarTopPaddingPx:I

    iget-boolean v9, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v9, :cond_7

    :goto_7
    move v9, v5

    goto :goto_8

    :cond_7
    invoke-static {v6}, Lcom/zui/launcher/Utilities;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_7

    :cond_8
    const v9, 0x7f0703d2

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :goto_8
    iput v9, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarBottomPaddingPx:I

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v9

    if-eqz v9, :cond_9

    iget v9, v1, Lcom/zui/launcher/InvariantDeviceProfile;->landHotseatPaddingEndDp:F

    invoke-static {v9, v3}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v9

    goto :goto_9

    :cond_9
    const v9, 0x7f0702ef

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :goto_9
    iput v9, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v9

    if-eqz v9, :cond_a

    iget v9, v1, Lcom/zui/launcher/InvariantDeviceProfile;->landHotseatPaddingStartDp:F

    invoke-static {v9, v3}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v9

    goto :goto_a

    :cond_a
    move v9, v5

    :goto_a
    iput v9, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/zui/launcher/DeviceProfile;->pageIndicatorHeight:I

    iget-boolean v9, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    const v10, 0x7f0703d0

    if-eqz v9, :cond_b

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_b
    iput v1, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    goto :goto_d

    :cond_b
    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v9

    if-eqz v9, :cond_c

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->iconSize:F

    invoke-static {v1, v3}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iget v4, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    add-int/2addr v1, v4

    iget v4, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    add-int/2addr v1, v4

    goto :goto_b

    :cond_c
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v9, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarTopPaddingPx:I

    add-int/2addr v1, v9

    iget v9, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarBottomPaddingPx:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    invoke-static {v6}, Lcom/zui/launcher/Utilities;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x7f07084b

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_c

    :cond_d
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_c
    iput v1, v0, Lcom/zui/launcher/DeviceProfile;->verticalDragHandleSizePx:I

    iput v1, v0, Lcom/zui/launcher/DeviceProfile;->pageIndicatorHeight:I

    :goto_d
    invoke-direct {p0, v3, v7}, Lcom/zui/launcher/DeviceProfile;->d(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-nez v1, :cond_e

    iget-boolean v1, v0, Lcom/zui/launcher/DeviceProfile;->isPhone:Z

    :cond_e
    invoke-direct {p0}, Lcom/zui/launcher/DeviceProfile;->h()V

    new-instance v1, Lcom/zui/launcher/icons/DotRenderer;

    iget v3, v0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    invoke-static {}, Lcom/zui/launcher/graphics/IconShape;->getShapePath()Landroid/graphics/Path;

    move-result-object v4

    const/16 v9, 0x64

    iget v10, v0, Lcom/zui/launcher/DeviceProfile;->badgeCircleHeight:I

    iget v11, v0, Lcom/zui/launcher/DeviceProfile;->badgeTextSize:I

    move-object p1, v1

    move-object p2, v6

    move p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v9

    move/from16 p6, v10

    move/from16 p7, v11

    invoke-direct/range {p1 .. p7}, Lcom/zui/launcher/icons/DotRenderer;-><init>(Landroid/content/Context;ILandroid/graphics/Path;III)V

    iput-object v1, v0, Lcom/zui/launcher/DeviceProfile;->mDotRenderer:Lcom/zui/launcher/icons/DotRenderer;

    invoke-direct {p0, v6}, Lcom/zui/launcher/DeviceProfile;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/zui/launcher/DeviceProfile;->mStatusBarHeight:I

    iget-boolean v1, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_OVERVIEW_GRID:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_f

    move v5, v8

    :cond_f
    iput-boolean v5, v0, Lcom/zui/launcher/DeviceProfile;->overviewShowAsGrid:Z

    if-eqz v5, :cond_10

    const v1, 0x7f0705a8

    goto :goto_e

    :cond_10
    const v1, 0x7f0705a7

    :goto_e
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/zui/launcher/DeviceProfile;->overviewTaskMarginPx:I

    const v1, 0x7f0705a9

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/zui/launcher/DeviceProfile;->overviewTaskMarginGridPx:I

    const v1, 0x7f0707d4

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/zui/launcher/DeviceProfile;->overviewTaskIconSizePx:I

    const v1, 0x7f0707d2

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/zui/launcher/DeviceProfile;->overviewTaskIconDrawableSizePx:I

    const v1, 0x7f0707d3

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/zui/launcher/DeviceProfile;->overviewTaskIconDrawableSizeGridPx:I

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->overviewTaskIconSizePx:I

    iget v3, v0, Lcom/zui/launcher/DeviceProfile;->overviewTaskMarginPx:I

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    iput v1, v0, Lcom/zui/launcher/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    return-void
.end method

.method private a()V
    .locals 0

    return-void
.end method

.method private static b(Landroid/content/Context;I)Landroid/content/Context;
    .locals 2

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private c(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "status_bar_height"

    const-string v0, "dimen"

    const-string v1, "android"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static calculateCellHeight(II)I
    .locals 0

    div-int/2addr p0, p1

    return p0
.end method

.method public static calculateCellWidth(II)I
    .locals 0

    div-int/2addr p0, p1

    return p0
.end method

.method private d(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, p2, p1}, Lcom/zui/launcher/DeviceProfile;->g(FLandroid/content/res/Resources;Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    :goto_0
    iget v1, p0, Lcom/zui/launcher/DeviceProfile;->cellHeightPx:I

    mul-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    div-float/2addr v1, v0

    invoke-direct {p0, v1, p2, p1}, Lcom/zui/launcher/DeviceProfile;->g(FLandroid/content/res/Resources;Landroid/util/DisplayMetrics;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DeviceProfile;->e(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    return-void
.end method

.method private e(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V
    .locals 4

    const v0, 0x7f070399

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070398

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7f07039a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->calculateTextHeight(F)I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p1, p2}, Lcom/zui/launcher/DeviceProfile;->f(FLandroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    iget p1, p0, Lcom/zui/launcher/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object p2

    iget v1, p0, Lcom/zui/launcher/DeviceProfile;->folderCellHeightPx:I

    iget-object v2, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v3, v2, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderRows:I

    mul-int/2addr v1, v3

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, p1

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget v0, p0, Lcom/zui/launcher/DeviceProfile;->folderCellWidthPx:I

    iget v2, v2, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderColumns:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, p2

    sub-int/2addr p0, p1

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    return-void
.end method

.method private f(FLandroid/util/DisplayMetrics;Landroid/content/res/Resources;)V
    .locals 4

    iget-boolean v0, p0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->landscapeIconSize:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->iconSize:F

    :goto_0
    invoke-static {v0, p2}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/launcher/DeviceProfile;->folderChildIconSizePx:I

    iget-object v0, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->iconTextSize:F

    invoke-static {v0, p2}, Lcom/zui/launcher/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/launcher/DeviceProfile;->folderChildTextSizePx:I

    int-to-float p2, p2

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->calculateTextHeight(F)I

    move-result p2

    const v0, 0x7f070386

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    const v1, 0x7f07037e

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v2

    const v3, 0x7f070388

    if-eqz v2, :cond_1

    const p2, 0x7f070384

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    float-to-int p1, p3

    iput p1, p0, Lcom/zui/launcher/DeviceProfile;->folderChildDrawablePaddingPx:I

    iget p3, p0, Lcom/zui/launcher/DeviceProfile;->folderChildIconSizePx:I

    add-int/2addr p2, p3

    add-int/2addr p2, p1

    add-int/2addr p2, v1

    iput p2, p0, Lcom/zui/launcher/DeviceProfile;->folderCellWidthPx:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    iput v0, p0, Lcom/zui/launcher/DeviceProfile;->folderCellHeightPx:I

    iput p3, p0, Lcom/zui/launcher/DeviceProfile;->folderCellMinHeightPx:I

    goto :goto_2

    :cond_1
    iget-boolean v2, p0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v2, :cond_2

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    goto :goto_1

    :cond_2
    iget p3, p0, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    :goto_1
    int-to-float p3, p3

    mul-float/2addr p3, p1

    float-to-int p1, p3

    iput p1, p0, Lcom/zui/launcher/DeviceProfile;->folderChildDrawablePaddingPx:I

    iget p1, p0, Lcom/zui/launcher/DeviceProfile;->folderChildIconSizePx:I

    add-int p3, p1, p2

    iget v2, p0, Lcom/zui/launcher/DeviceProfile;->folderChildDrawablePaddingPx:I

    add-int/2addr p3, v2

    iput p3, p0, Lcom/zui/launcher/DeviceProfile;->folderCellMinHeightPx:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/zui/launcher/DeviceProfile;->folderCellHeightPx:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iput p1, p0, Lcom/zui/launcher/DeviceProfile;->folderCellWidthPx:I

    :goto_2
    return-void
.end method

.method private g(FLandroid/content/res/Resources;Landroid/util/DisplayMetrics;)V
    .locals 7

    iput p1, p0, Lcom/zui/launcher/DeviceProfile;->iconScale:F

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    iget-boolean v1, p0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->landscapeIconSize:F

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->iconSize:F

    :goto_0
    invoke-static {v1, p3}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->iconTextSize:F

    invoke-static {v1, p3}, Lcom/zui/launcher/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->iconTextSizePx:I

    iget-boolean v1, p0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->landIconDrawablePaddingDp:F

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->iconDrawablePaddingDp:F

    :goto_1
    invoke-static {v1, p3}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->iconVisualSizeDp:F

    invoke-static {v1, p3}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->iconVisualSize:I

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isDewTheme(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x3f866666    # 1.05f

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/zui/launcher/DeviceProfile;->iconVisualSize:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->iconVisualSize:I

    :cond_2
    iget v1, p0, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->iconPaddingTopDp:F

    invoke-static {v1, p3}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->iconPaddingTop:I

    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->iconPaddingTopHotseatDp:F

    invoke-static {v1, p3}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->iconPaddingTopHotseat:I

    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->badgeCircleHeightDp:F

    invoke-static {v1, p3}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->badgeCircleHeight:I

    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->badgeTextSizeDp:F

    invoke-static {v1, p3}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->badgeTextSize:I

    invoke-static {}, Lcom/zui/launcher/util/SettingsValue;->getEditModeScale()F

    move-result v1

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zui/launcher/DeviceProfile;->e:Z

    const v3, 0x7f0702b2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/zui/launcher/DeviceProfile;->dockviewBarHeightPx:I

    iget-boolean v3, p0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v3, :cond_3

    const v3, 0x7f0708b6

    goto :goto_2

    :cond_3
    const v3, 0x7f0708b5

    :goto_2
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/zui/launcher/DeviceProfile;->widgetListPanelHeight:I

    iget-object v3, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v3, v3, Lcom/zui/launcher/InvariantDeviceProfile;->landCellPaddingEndDp:F

    invoke-static {v3, p3}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, p0, Lcom/zui/launcher/DeviceProfile;->landCellPaddingEndPx:I

    const p1, 0x7f07084a

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/zui/launcher/DeviceProfile;->pageIndicatorHeight:I

    iget v3, p0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    iget v4, p0, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/zui/launcher/DeviceProfile;->iconTextSizePx:I

    int-to-float v4, v4

    invoke-static {v4}, Lcom/zui/launcher/Utilities;->calculateTextHeight(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/zui/launcher/DeviceProfile;->cellHeightPx:I

    if-eqz v0, :cond_4

    iget v3, p0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    iget v4, p0, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/zui/launcher/DeviceProfile;->cellHeightPx:I

    :cond_4
    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/zui/launcher/DeviceProfile;->cellHeightPx:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v5, p0, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    if-le v5, v3, :cond_5

    if-nez v0, :cond_5

    iget-boolean v6, p0, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-nez v6, :cond_5

    sub-int/2addr v5, v3

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/zui/launcher/DeviceProfile;->cellHeightPx:I

    iput v3, p0, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    :cond_5
    iget v3, p0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    iget v4, p0, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/zui/launcher/DeviceProfile;->cellWidthPx:I

    iget-boolean v3, p0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v3, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    iget v3, p0, Lcom/zui/launcher/DeviceProfile;->dockviewBarHeightPx:I

    int-to-float v3, v3

    iget v5, p0, Lcom/zui/launcher/DeviceProfile;->cellHeightPx:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    sub-float/2addr v3, v5

    int-to-float v1, v4

    sub-float/2addr v3, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v3, v1

    float-to-int v1, v3

    :goto_3
    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->dockviewTopPaddingPx:I

    const v1, 0x7f0700c9

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->allAppsIconTextSizePx:F

    const v1, 0x7f0700aa

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->allAppsIconSizePx:I

    iget-boolean v1, p0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_7

    const v1, 0x7f070097

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    const v1, 0x7f0700a9

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->allAppsIconPaddingPx:I

    const v1, 0x7f070089

    goto :goto_4

    :cond_7
    const v1, 0x7f070096

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    const v1, 0x7f0700a8

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->allAppsIconPaddingPx:I

    const v1, 0x7f070088

    :goto_4
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/DeviceProfile;->allAppsCellHeightPx:I

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/zui/launcher/DeviceProfile;->a()V

    :cond_8
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/DeviceProfile;->verticalDragHandleSizePx:I

    iget-boolean v0, p0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_9

    const p1, 0x7f0703d0

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_5
    iput p1, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget p1, p1, Lcom/zui/launcher/InvariantDeviceProfile;->iconSize:F

    invoke-static {p1, p3}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p1

    iget p3, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    add-int/2addr p1, p3

    iget p3, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    add-int/2addr p1, p3

    goto :goto_5

    :cond_a
    const p3, 0x7f0703d3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget v0, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarTopPaddingPx:I

    add-int/2addr p3, v0

    iget v0, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarBottomPaddingPx:I

    add-int/2addr p3, v0

    iput p3, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    iget-boolean p3, p0, Lcom/zui/launcher/DeviceProfile;->e:Z

    if-eqz p3, :cond_b

    const p1, 0x7f07084b

    :cond_b
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/DeviceProfile;->verticalDragHandleSizePx:I

    iput p1, p0, Lcom/zui/launcher/DeviceProfile;->pageIndicatorHeight:I

    :goto_6
    iget p1, p0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    iput p1, p0, Lcom/zui/launcher/DeviceProfile;->hotseatCellHeightPx:I

    const p1, 0x7f0b0053

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/zui/launcher/DeviceProfile;->workspaceSpringLoadShrinkFactor:F

    iget p1, p0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    invoke-static {p1}, Lcom/zui/launcher/icons/IconNormalizer;->getNormalizedCircleSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/DeviceProfile;->folderIconSizePx:I

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isDewTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/zui/launcher/DeviceProfile;->folderIconSizePx:I

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/DeviceProfile;->folderIconSizePx:I

    :cond_c
    iget p1, p0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    iget p2, p0, Lcom/zui/launcher/DeviceProfile;->folderIconSizePx:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/zui/launcher/DeviceProfile;->folderIconOffsetYPx:I

    return-void
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/zui/launcher/DeviceProfile;->pageIndicatorHeight:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    :goto_0
    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    iget v2, p0, Lcom/zui/launcher/DeviceProfile;->verticalDragHandleSizePx:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/zui/launcher/DeviceProfile;->a:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/zui/launcher/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget v3, p0, Lcom/zui/launcher/DeviceProfile;->edgeMarginPx:I

    invoke-virtual {v0, v2, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/zui/launcher/DeviceProfile;->iconScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/DeviceProfile;->workspaceTopPadding:I

    return-void
.end method


# virtual methods
.method public copy(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;
    .locals 10

    new-instance v4, Landroid/graphics/Point;

    iget v0, p0, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    iget v1, p0, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v9, Lcom/zui/launcher/DeviceProfile;

    iget-object v2, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v5, p0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget v6, p0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    iget-boolean v7, p0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    iget-boolean v8, p0, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    move-object v0, v9

    move-object v1, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v8}, Lcom/zui/launcher/DeviceProfile;-><init>(Landroid/content/Context;Lcom/zui/launcher/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZZ)V

    return-object v9
.end method

.method public getAbsoluteOpenFolderBounds()Landroid/graphics/Rect;
    .locals 7

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/zui/launcher/DeviceProfile;->dropTargetBarSizePx:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/zui/launcher/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v3, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    add-int/2addr v2, v5

    iget v5, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    sub-int/2addr v2, v5

    sub-int/2addr v2, v4

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    add-int/2addr p0, v1

    invoke-direct {v0, v3, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/zui/launcher/DeviceProfile;->edgeMarginPx:I

    add-int v4, v2, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/zui/launcher/DeviceProfile;->dropTargetBarSizePx:I

    add-int/2addr v5, v1

    add-int/2addr v5, v3

    iget v6, p0, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    add-int/2addr v2, v6

    sub-int/2addr v2, v3

    iget v6, p0, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    add-int/2addr v1, v6

    iget v6, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    sub-int/2addr v1, v6

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->verticalDragHandleSizePx:I

    sub-int/2addr v1, p0

    sub-int/2addr v1, v3

    invoke-direct {v0, v4, v5, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getAppViewsInsetsWithMarginH()Landroid/graphics/Rect;
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070417

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ge v2, v1, :cond_1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    if-ge p0, v1, :cond_2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getCellHeight(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->folderCellMinHeightPx:I

    return p0

    :cond_1
    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->hotseatCellHeightPx:I

    return p0

    :cond_2
    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->cellHeightPx:I

    return p0
.end method

.method public getCellSize()Landroid/graphics/Point;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/DeviceProfile;->getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v2, v2, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v2, v2, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    :goto_1
    iget v3, p0, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/zui/launcher/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-static {v3, v1}, Lcom/zui/launcher/DeviceProfile;->calculateCellWidth(II)I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->cellLayoutBottomPaddingPx:I

    sub-int/2addr v1, p0

    invoke-static {v1, v2}, Lcom/zui/launcher/DeviceProfile;->calculateCellHeight(II)I

    move-result p0

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-object p1
.end method

.method public getFullScreenProfile()Lcom/zui/launcher/DeviceProfile;
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    iget-object p0, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->landscapeProfile:Lcom/zui/launcher/DeviceProfile;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->portraitProfile:Lcom/zui/launcher/DeviceProfile;

    :goto_0
    return-object p0
.end method

.method public getHotseatLayoutPadding()Landroid/graphics/Rect;
    .locals 6

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/zui/launcher/DeviceProfile;->pageIndicatorHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    add-int/2addr v3, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->c:Landroid/graphics/Rect;

    iget v2, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    iget-object v3, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    add-int/2addr v3, v5

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    int-to-float v1, v0

    iget-object v2, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v3, v2, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v0, v0

    iget v2, v2, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-boolean v1, p0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/zui/launcher/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/zui/launcher/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    add-int/2addr v3, v4

    iget v5, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarTopPaddingPx:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    add-int/2addr v0, v4

    iget v2, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarBottomPaddingPx:I

    iget-object v4, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/zui/launcher/DeviceProfile;->cellLayoutBottomPaddingPx:I

    add-int/2addr v2, v4

    invoke-virtual {v1, v3, v5, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/DeviceProfile;->c:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getInsetsWithMarginH()Landroid/graphics/Rect;
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070418

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ge v2, v1, :cond_1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    if-ge p0, v1, :cond_2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getItemLocation(IIIIIILandroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p7}, Landroid/graphics/Rect;->setEmpty()V

    const/16 v0, -0x65

    if-ne p5, v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    iget-object p3, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget p3, p3, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    div-int/2addr p2, p3

    iget-boolean p3, p0, Lcom/zui/launcher/DeviceProfile;->d:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/zui/launcher/DeviceProfile;->c:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    iget p4, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    sub-int/2addr p3, p4

    iget-object p4, p0, Lcom/zui/launcher/DeviceProfile;->c:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->left:I

    add-int/2addr p3, p4

    :goto_0
    iput p3, p7, Landroid/graphics/Rect;->left:I

    iget p3, p7, Landroid/graphics/Rect;->left:I

    iget p4, p0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    add-int/2addr p3, p4

    iput p3, p7, Landroid/graphics/Rect;->right:I

    iget-object p3, p0, Lcom/zui/launcher/DeviceProfile;->c:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    mul-int/2addr p0, p2

    add-int/2addr p3, p0

    iput p3, p7, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p2

    iput p3, p7, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_1
    iget p2, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    iget p3, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarBottomPaddingPx:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarTopPaddingPx:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    iget-object p4, p0, Lcom/zui/launcher/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->left:I

    add-int/2addr p3, p4

    iget p4, p0, Lcom/zui/launcher/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    add-int/2addr p3, p4

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Point;->x:I

    mul-int/2addr p1, p4

    add-int/2addr p3, p1

    iput p3, p7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    add-int/2addr p3, p1

    iput p3, p7, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget p3, p0, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    add-int/2addr p1, p3

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    sub-int/2addr p1, p0

    iput p1, p7, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    goto :goto_1

    :cond_2
    iget-object p5, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/zui/launcher/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p5, v0

    iget v0, p0, Lcom/zui/launcher/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    add-int/2addr p5, v0

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr p1, v0

    add-int/2addr p5, p1

    iget p1, p0, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    mul-int/2addr p6, p1

    add-int/2addr p5, p6

    iput p5, p7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    mul-int/2addr p1, p3

    add-int/2addr p5, p1

    iput p5, p7, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/zui/launcher/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Point;->y:I

    mul-int/2addr p2, p3

    add-int/2addr p1, p2

    iput p1, p7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    mul-int/2addr p0, p4

    add-int/2addr p1, p0

    :goto_1
    iput p1, p7, Landroid/graphics/Rect;->bottom:I

    :goto_2
    return-void
.end method

.method public getMultiWindowProfile(Landroid/content/Context;Landroid/graphics/Point;)Lcom/zui/launcher/DeviceProfile;
    .locals 11

    iget v0, p0, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-boolean v1, p0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    :goto_0
    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    new-instance v0, Lcom/zui/launcher/DeviceProfile;

    iget-object v4, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v7, p2, Landroid/graphics/Point;->x:I

    iget v8, p2, Landroid/graphics/Point;->y:I

    iget-boolean v9, p0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    const/4 v10, 0x1

    move-object v2, v0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p2

    invoke-direct/range {v2 .. v10}, Lcom/zui/launcher/DeviceProfile;-><init>(Landroid/content/Context;Lcom/zui/launcher/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZZ)V

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, v0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr p1, p2

    iget p2, v0, Lcom/zui/launcher/DeviceProfile;->iconTextSizePx:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, v0, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    invoke-direct {v0}, Lcom/zui/launcher/DeviceProfile;->a()V

    :cond_1
    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    div-float/2addr p2, p0

    iget-object p0, v0, Lcom/zui/launcher/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {v0}, Lcom/zui/launcher/DeviceProfile;->h()V

    return-object v0
.end method

.method public getTotalWorkspacePadding()Landroid/graphics/Point;
    .locals 3

    invoke-direct {p0}, Lcom/zui/launcher/DeviceProfile;->h()V

    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/zui/launcher/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public isLayoutHorizontal()Z
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    return p0
.end method

.method public isSeascape()Z
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/zui/launcher/DeviceProfile;->d:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVerticalBarLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/zui/launcher/DeviceProfile;->transposeLayoutWithOrientation:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldExchangeXY()Z
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/zui/launcher/DeviceProfile;->f:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldFadeAdjacentWorkspaceScreens()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldInsetWidgets()Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    iget v1, p0, Lcom/zui/launcher/DeviceProfile;->workspaceTopPadding:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_0

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->cellLayoutBorderSpacingPx:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-le p0, v1, :cond_0

    if-le p0, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-le p0, v1, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateInsets(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/DeviceProfile;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/zui/launcher/DeviceProfile;->h()V

    return-void
.end method

.method public updateIsSeascape(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-boolean v0, p0, Lcom/zui/launcher/DeviceProfile;->d:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/zui/launcher/DeviceProfile;->d:Z

    return v2

    :cond_1
    return v1
.end method
