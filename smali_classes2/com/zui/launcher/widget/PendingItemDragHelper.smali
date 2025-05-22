.class public Lcom/zui/launcher/widget/PendingItemDragHelper;
.super Lcom/zui/launcher/graphics/DragPreviewProvider;
.source ""


# instance fields
.field private final c:Lcom/zui/launcher/PendingAddItemInfo;

.field private d:[I

.field private e:Landroid/widget/RemoteViews;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/PendingAddItemInfo;

    iput-object p1, p0, Lcom/zui/launcher/widget/PendingItemDragHelper;->c:Lcom/zui/launcher/PendingAddItemInfo;

    return-void
.end method


# virtual methods
.method protected convertPreviewToAlphaBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/widget/PendingItemDragHelper;->c:Lcom/zui/launcher/PendingAddItemInfo;

    instance-of v0, v0, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/widget/PendingItemDragHelper;->d:[I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v5, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->blurSizeOutline:I

    sub-int v5, v2, v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget p0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->blurSizeOutline:I

    sub-int p0, v0, p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr p0, v6

    invoke-static {v5, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p0

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr p0, v6

    float-to-int p0, p0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v1, v1, v5, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int/2addr v2, v5

    const/4 v1, 0x2

    div-int/2addr v2, v1

    sub-int/2addr v0, p0

    div-int/2addr v0, v1

    invoke-virtual {v6, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p0, p1, v4, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v3

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/zui/launcher/graphics/DragPreviewProvider;->convertPreviewToAlphaBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public setAppWidgetHostViewPreview(Lcom/zui/launcher/widget/NavigableAppWidgetHostView;)V
    .locals 0
    .param p1    # Lcom/zui/launcher/widget/NavigableAppWidgetHostView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/zui/launcher/widget/PendingItemDragHelper;->f:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    return-void
.end method

.method public setRemoteViewsPreview(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1    # Landroid/widget/RemoteViews;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/zui/launcher/widget/PendingItemDragHelper;->e:Landroid/widget/RemoteViews;

    return-void
.end method

.method public startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/zui/launcher/DragSource;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/zui/launcher/widget/PendingItemDragHelper;->startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/zui/launcher/DragSource;Lcom/zui/launcher/dragndrop/DragOptions;Landroid/util/Size;)V

    return-void
.end method

.method public startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/zui/launcher/DragSource;Lcom/zui/launcher/dragndrop/DragOptions;Landroid/util/Size;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v6

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v7

    iget-object v8, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->c:Lcom/zui/launcher/PendingAddItemInfo;

    invoke-virtual {v7, v8}, Lcom/zui/launcher/Workspace;->estimateItemSize(Lcom/zui/launcher/ItemInfo;)[I

    move-result-object v7

    iput-object v7, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->d:[I

    iget-object v8, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->c:Lcom/zui/launcher/PendingAddItemInfo;

    instance-of v9, v8, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    const/high16 v10, 0x3fa00000    # 1.25f

    const/4 v12, 0x1

    const/4 v14, 0x0

    if-eqz v9, :cond_6

    check-cast v8, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    int-to-float v9, v2

    mul-float/2addr v9, v10

    float-to-int v9, v9

    aget v7, v7, v14

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    new-array v15, v12, [I

    iget-object v7, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->e:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_0

    new-instance v7, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-direct {v7, v5}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->f:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    const/4 v10, -0x1

    iget-object v11, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->c:Lcom/zui/launcher/PendingAddItemInfo;

    check-cast v11, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    iget-object v11, v11, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->info:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v7, v10, v11}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v7

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->f:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    invoke-virtual {v11, v7, v10}, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->getWidgetInset(Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V

    iget-object v11, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->f:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    iget v13, v10, Landroid/graphics/Rect;->left:I

    iget v12, v10, Landroid/graphics/Rect;->top:I

    iget v14, v10, Landroid/graphics/Rect;->right:I

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v11, v13, v12, v14, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    iget-object v4, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->f:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    iget-object v11, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->e:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v11}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    iget v4, v7, Lcom/zui/launcher/DeviceProfile;->cellWidthPx:I

    iget-object v11, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->c:Lcom/zui/launcher/PendingAddItemInfo;

    iget v12, v11, Lcom/zui/launcher/ItemInfo;->spanX:I

    mul-int/2addr v4, v12

    iget v12, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v12

    iget v12, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v12

    iget v7, v7, Lcom/zui/launcher/DeviceProfile;->cellHeightPx:I

    iget v11, v11, Lcom/zui/launcher/ItemInfo;->spanY:I

    mul-int/2addr v7, v11

    iget v11, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v11

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v10

    iget-object v10, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->f:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v10, v4, v7}, Landroid/appwidget/AppWidgetHostView;->measure(II)V

    :cond_0
    iget-object v4, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->f:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v4

    const/4 v7, 0x0

    aput v4, v15, v7

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v4

    new-instance v7, Lcom/zui/launcher/widget/dragndrop/AppWidgetHostViewDragListener;

    invoke-direct {v7, v5}, Lcom/zui/launcher/widget/dragndrop/AppWidgetHostViewDragListener;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v4, v7}, Lcom/zui/launcher/dragndrop/DragController;->addDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    :cond_1
    iget-object v4, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->f:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    if-nez v4, :cond_2

    invoke-virtual {v6}, Lcom/zui/launcher/LauncherAppState;->getWidgetCache()Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    move-result-object v6

    iget-object v8, v8, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->info:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    const/4 v10, 0x0

    move-object v7, v5

    move-object v11, v15

    invoke-virtual/range {v6 .. v11}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->generateWidgetPreview(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x0

    aget v7, v15, v6

    if-ge v7, v2, :cond_4

    aget v6, v15, v6

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    if-le v2, v3, :cond_3

    mul-int/2addr v6, v3

    div-int/2addr v6, v2

    :cond_3
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->right:I

    :cond_4
    iget-object v2, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->f:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->f:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v3

    new-instance v4, Lcom/zui/launcher/graphics/DragPreviewProvider;

    iget-object v6, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->f:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    invoke-direct {v4, v6}, Lcom/zui/launcher/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    invoke-virtual {v4}, Lcom/zui/launcher/graphics/DragPreviewProvider;->createDragBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v7

    new-instance v8, Lcom/zui/launcher/widget/WidgetHostViewLoader;

    iget-object v9, v0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-direct {v8, v5, v9}, Lcom/zui/launcher/widget/WidgetHostViewLoader;-><init>(Lcom/zui/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Lcom/zui/launcher/dragndrop/DragController;->addDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/zui/launcher/dragndrop/DraggableView;->ofType(I)Lcom/zui/launcher/dragndrop/DraggableView;

    move-object v7, v4

    move/from16 v17, v6

    goto/16 :goto_2

    :cond_6
    move v7, v12

    instance-of v4, v8, Lcom/zui/launcher/LenovoWidgetViewInfo;

    if-eqz v4, :cond_9

    check-cast v8, Lcom/zui/launcher/LenovoWidgetViewInfo;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v7, v9}, Lcom/zui/launcher/Workspace;->estimateItemSize(Lcom/zui/launcher/ItemInfo;ZZ)[I

    move-result-object v4

    int-to-float v11, v2

    mul-float/2addr v11, v10

    float-to-int v10, v11

    aget v4, v4, v9

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    new-array v4, v7, [I

    invoke-virtual {v6}, Lcom/zui/launcher/LauncherAppState;->getWidgetCache()Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    move-result-object v6

    iget-object v8, v8, Lcom/zui/launcher/LenovoWidgetViewInfo;->providerInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    const/4 v11, 0x0

    move-object v7, v5

    move v9, v10

    move-object v12, v4

    invoke-virtual/range {v6 .. v12}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->generateLeosWidgetPreview(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/LenovoWidgetsProviderInfo;IILandroid/graphics/Bitmap;[I)Landroid/util/Pair;

    move-result-object v6

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    aget v8, v4, v7

    if-ge v8, v2, :cond_8

    aget v4, v4, v7

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    if-le v2, v3, :cond_7

    mul-int/2addr v4, v3

    div-int/2addr v4, v2

    :cond_7
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->right:I

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v3

    new-instance v4, Lcom/zui/launcher/widget/LeosWidgetViewLoader;

    iget-object v7, v0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-direct {v4, v5, v7}, Lcom/zui/launcher/widget/LeosWidgetViewLoader;-><init>(Lcom/zui/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Lcom/zui/launcher/dragndrop/DragController;->addDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v17, v2

    move v2, v3

    move v3, v4

    move-object v7, v6

    :goto_2
    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_9
    check-cast v8, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    iget-object v2, v8, Lcom/zui/launcher/widget/PendingAddShortcutInfo;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    invoke-virtual {v6}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/zui/launcher/icons/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v5}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/zui/launcher/icons/BaseIconFactory;->createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v3}, Lcom/zui/launcher/icons/LauncherIcons;->recycle()V

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    int-to-float v3, v3

    int-to-float v7, v4

    div-float/2addr v3, v7

    new-instance v13, Landroid/graphics/Point;

    iget v7, v0, Lcom/zui/launcher/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 v8, v7, 0x2

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v13, v8, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v7

    iget v8, v7, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0708c9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v9

    iput v10, v1, Landroid/graphics/Rect;->left:I

    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v9

    iput v10, v1, Landroid/graphics/Rect;->top:I

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->c:Lcom/zui/launcher/PendingAddItemInfo;

    iget-object v10, v10, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v10, :cond_a

    const-string v10, ""

    goto :goto_3

    :cond_a
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v11

    iget v11, v11, Lcom/zui/launcher/DeviceProfile;->iconTextSizePx:I

    invoke-static {v10, v11}, Lcom/zui/launcher/Utilities;->measureTextSize(Ljava/lang/String;I)Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->y:F

    float-to-int v10, v10

    iget-object v11, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->d:[I

    const/4 v12, 0x0

    aget v14, v11, v12

    sub-int/2addr v14, v8

    sub-int/2addr v14, v10

    iget v7, v7, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v14, v7

    div-int/lit8 v14, v14, 0x2

    iput v14, v9, Landroid/graphics/Rect;->left:I

    const/4 v10, 0x1

    aget v7, v11, v10

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iput v7, v9, Landroid/graphics/Rect;->top:I

    goto :goto_4

    :cond_b
    const/4 v10, 0x1

    iget-object v11, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->d:[I

    const/4 v12, 0x0

    aget v14, v11, v12

    sub-int/2addr v14, v8

    div-int/lit8 v14, v14, 0x2

    iput v14, v9, Landroid/graphics/Rect;->left:I

    aget v10, v11, v10

    sub-int/2addr v10, v8

    iget v11, v7, Lcom/zui/launcher/DeviceProfile;->iconTextSizePx:I

    sub-int/2addr v10, v11

    iget v7, v7, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v10, v7

    div-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/graphics/Rect;->top:I

    :goto_4
    iget v7, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iput v7, v9, Landroid/graphics/Rect;->right:I

    iget v7, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iput v7, v9, Landroid/graphics/Rect;->bottom:I

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/zui/launcher/dragndrop/DraggableView;->ofType(I)Lcom/zui/launcher/dragndrop/DraggableView;

    move-object v7, v2

    move/from16 v17, v3

    move v2, v4

    move v3, v6

    move-object v15, v9

    move-object v14, v13

    :goto_5
    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/zui/launcher/Workspace;->prepareDragWithProvider(Lcom/zui/launcher/graphics/DragPreviewProvider;)V

    move-object/from16 v4, p4

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v8

    int-to-float v2, v2

    mul-float v8, v17, v2

    sub-float/2addr v8, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v8, v2

    float-to-int v8, v8

    add-int v10, v6, v8

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    int-to-float v1, v3

    mul-float v3, v17, v1

    sub-float/2addr v3, v1

    div-float/2addr v3, v2

    float-to-int v1, v3

    add-int v11, v4, v1

    iget-object v1, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->f:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    if-eqz v1, :cond_c

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v6

    iget-object v0, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->c:Lcom/zui/launcher/PendingAddItemInfo;

    move v8, v10

    move v9, v11

    move-object/from16 v10, p5

    move-object v11, v0

    move-object v12, v14

    move-object v13, v15

    move/from16 v14, v17

    move/from16 v15, v17

    move-object/from16 v16, p6

    invoke-virtual/range {v6 .. v16}, Lcom/zui/launcher/dragndrop/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/zui/launcher/DragSource;Lcom/zui/launcher/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/zui/launcher/dragndrop/DragOptions;)Lcom/zui/launcher/dragndrop/DragView;

    goto :goto_6

    :cond_c
    if-eqz p7, :cond_d

    if-eqz v7, :cond_d

    invoke-virtual/range {p7 .. p7}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-lez v1, :cond_d

    invoke-virtual/range {p7 .. p7}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-lez v1, :cond_d

    invoke-virtual/range {p7 .. p7}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual/range {p7 .. p7}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v7, v1, v2}, Lcom/zui/launcher/Utilities;->zoomBitmapAll(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_d
    move-object v9, v7

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v8

    iget-object v13, v0, Lcom/zui/launcher/widget/PendingItemDragHelper;->c:Lcom/zui/launcher/PendingAddItemInfo;

    move-object/from16 v12, p5

    move/from16 v16, v17

    move-object/from16 v18, p6

    invoke-virtual/range {v8 .. v18}, Lcom/zui/launcher/dragndrop/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/zui/launcher/DragSource;Lcom/zui/launcher/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/zui/launcher/dragndrop/DragOptions;)Lcom/zui/launcher/dragndrop/DragView;

    :goto_6
    return-void
.end method
