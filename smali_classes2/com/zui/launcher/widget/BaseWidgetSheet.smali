.class public abstract Lcom/zui/launcher/widget/BaseWidgetSheet;
.super Lcom/zui/launcher/views/WidgetsAbstractSlideInView;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/zui/launcher/DragSource;
.implements Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/views/WidgetsAbstractSlideInView<",
        "Lcom/zui/launcher/Launcher;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Lcom/zui/launcher/DragSource;",
        "Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;"
    }
.end annotation


# static fields
.field protected static final KEY_WIDGETS_EDUCATION_TIP_SEEN:Ljava/lang/String; = "launcher.widgets_education_tip_seen"


# instance fields
.field private a:Lcom/zui/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/widget/BaseWidgetSheet;->a:Lcom/zui/launcher/Launcher;

    return-void
.end method

.method private b(Lcom/zui/launcher/widget/WidgetCell;)Z
    .locals 12

    invoke-virtual {p1}, Lcom/zui/launcher/widget/WidgetCell;->getWidgetView()Lcom/zui/launcher/widget/WidgetImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/widget/WidgetCell;->getAppWidgetHostViewPreview()Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->closeParentPage()V

    new-instance v3, Lcom/zui/launcher/widget/PendingItemDragHelper;

    invoke-direct {v3, p1}, Lcom/zui/launcher/widget/PendingItemDragHelper;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/zui/launcher/widget/WidgetCell;->getRemoteViewsPreview()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/zui/launcher/widget/PendingItemDragHelper;->setRemoteViewsPreview(Landroid/widget/RemoteViews;)V

    invoke-virtual {p1}, Lcom/zui/launcher/widget/WidgetCell;->getAppWidgetHostViewPreview()Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/zui/launcher/widget/PendingItemDragHelper;->setAppWidgetHostViewPreview(Lcom/zui/launcher/widget/NavigableAppWidgetHostView;)V

    invoke-virtual {v0}, Lcom/zui/launcher/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v4, 0x2

    const/4 v11, 0x1

    if-eqz v1, :cond_5

    new-array v1, v4, [I

    invoke-virtual {p0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    iget-object v4, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/zui/launcher/widget/WidgetImageView;->getIsAddWidget()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object p1, p1, Lcom/zui/launcher/widget/WidgetCell;->mItem:Lcom/zui/launcher/model/WidgetItem;

    iget-object v4, p1, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v4, p1, v2}, Landroid/appwidget/AppWidgetProviderInfo;->loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :catch_0
    :cond_2
    move-object p1, v5

    :goto_0
    if-eqz p1, :cond_3

    new-instance v4, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-direct {v4, v5, p1}, Landroid/util/Size;-><init>(II)V

    move-object v10, v4

    goto :goto_1

    :cond_3
    move-object v10, v5

    :goto_1
    invoke-virtual {v0}, Lcom/zui/launcher/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0}, Lcom/zui/launcher/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    new-instance v7, Landroid/graphics/Point;

    aget p1, v1, v2

    aget v0, v1, v11

    invoke-direct {v7, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v9, Lcom/zui/launcher/dragndrop/DragOptions;

    invoke-direct {v9}, Lcom/zui/launcher/dragndrop/DragOptions;-><init>()V

    move-object v8, p0

    invoke-virtual/range {v3 .. v10}, Lcom/zui/launcher/widget/PendingItemDragHelper;->startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/zui/launcher/DragSource;Lcom/zui/launcher/dragndrop/DragOptions;Landroid/util/Size;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/zui/launcher/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0}, Lcom/zui/launcher/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    new-instance v7, Landroid/graphics/Point;

    aget p1, v1, v2

    aget v0, v1, v11

    invoke-direct {v7, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v9, Lcom/zui/launcher/dragndrop/DragOptions;

    invoke-direct {v9}, Lcom/zui/launcher/dragndrop/DragOptions;-><init>()V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/zui/launcher/widget/WidgetCell;->getAppWidgetHostViewPreview()Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    move-result-object p1

    new-array v0, v4, [I

    invoke-virtual {p0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v4, v2, v2, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    new-instance v7, Landroid/graphics/Point;

    aget p1, v0, v2

    aget v0, v0, v11

    invoke-direct {v7, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v9, Lcom/zui/launcher/dragndrop/DragOptions;

    invoke-direct {v9}, Lcom/zui/launcher/dragndrop/DragOptions;-><init>()V

    :goto_2
    move-object v8, p0

    invoke-virtual/range {v3 .. v9}, Lcom/zui/launcher/widget/PendingItemDragHelper;->startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/zui/launcher/DragSource;Lcom/zui/launcher/dragndrop/DragOptions;)V

    :goto_3
    invoke-virtual {p0, v11}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return v11
.end method

.method public static showWidgetToast(Landroid/content/Context;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const p1, 0x7f1204b3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const v0, 0x7f1204b0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/launcher/Utilities;->wrapForTts(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-object p0
.end method


# virtual methods
.method protected clearNavBarColor()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    return-void
.end method

.method protected closeParentPage()V
    .locals 0

    return-void
.end method

.method protected getScrimColor(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0603b1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method protected getSystemUiController()Lcom/zui/launcher/util/SystemUiController;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object p0

    return-object p0
.end method

.method public handleClick(Lcom/zui/launcher/widget/WidgetCell;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-object v1, v0, Lcom/zui/launcher/widget/BaseWidgetSheet;->a:Lcom/zui/launcher/Launcher;

    if-nez v1, :cond_0

    const-string v0, "xwj"

    const-string v1, "handleClick launcher is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez v8, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getCurrentWorkspaceScreen()I

    move-result v1

    iget-object v2, v0, Lcom/zui/launcher/widget/BaseWidgetSheet;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/PendingAddItemInfo;

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v11, 0x1

    if-eqz v3, :cond_3

    if-eqz v4, :cond_2

    invoke-virtual {v2, v1}, Lcom/zui/launcher/Workspace;->getScreenIdForPageIndex(I)I

    iget v1, v4, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v7, v4, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {v3, v6, v1, v7}, Lcom/zui/launcher/CellLayout;->findCellForSpan([III)Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v6, v11, v11}, Lcom/zui/launcher/CellLayout;->findCellForSpan([III)Z

    move-result v1

    :goto_0
    xor-int/2addr v1, v11

    goto :goto_1

    :cond_3
    move v1, v11

    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/zui/launcher/widget/BaseWidgetSheet;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->clickShowOutOfSpaceMessage()V

    return-void

    :cond_4
    const-string v1, "Widget_View"

    const-string v7, "clickwidgettoworkspace"

    const-string v9, ""

    invoke-static {v1, v7, v9, v11}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-array v7, v5, [I

    iget v1, v4, Lcom/zui/launcher/ItemInfo;->spanX:I

    const/4 v5, 0x0

    aput v1, v7, v5

    iget v1, v4, Lcom/zui/launcher/ItemInfo;->spanY:I

    aput v1, v7, v11

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/widget/WidgetCell;->getAppWidgetHostViewPreview()Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    move-result-object v1

    iget-object v9, v0, Lcom/zui/launcher/widget/BaseWidgetSheet;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v9}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/widget/WidgetCell;->getWidgetView()Lcom/zui/launcher/widget/WidgetImageView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zui/launcher/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/widget/WidgetCell;->getAppWidgetHostViewPreview()Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    move-result-object v12

    if-nez v12, :cond_5

    return-void

    :cond_5
    invoke-virtual {v10}, Lcom/zui/launcher/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    if-eqz v12, :cond_8

    invoke-virtual {v10}, Lcom/zui/launcher/widget/WidgetImageView;->getIsAddWidget()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v8, Lcom/zui/launcher/widget/WidgetCell;->mItem:Lcom/zui/launcher/model/WidgetItem;

    iget-object v12, v10, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    if-eqz v12, :cond_6

    :try_start_0
    iget-object v10, v0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v12, v10, v5}, Landroid/appwidget/AppWidgetProviderInfo;->loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_6
    iget-object v10, v10, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    if-eqz v10, :cond_7

    iget-object v10, v10, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :catch_0
    :cond_7
    move-object v10, v13

    :goto_2
    if-eqz v10, :cond_8

    new-instance v12, Landroid/util/Size;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-direct {v12, v13, v10}, Landroid/util/Size;-><init>(II)V

    move-object v10, v12

    goto :goto_3

    :cond_8
    move-object v10, v13

    :goto_3
    instance-of v12, v4, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    if-eqz v12, :cond_a

    check-cast v4, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    if-nez v1, :cond_9

    invoke-virtual {v9}, Lcom/zui/launcher/LauncherAppState;->getWidgetCache()Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    move-result-object v12

    iget-object v13, v0, Lcom/zui/launcher/widget/BaseWidgetSheet;->a:Lcom/zui/launcher/Launcher;

    iget-object v14, v4, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->info:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    iget v15, v8, Lcom/zui/launcher/widget/WidgetCell;->mPreviewWidth:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->generateWidgetPreview(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_9
    new-instance v5, Lcom/zui/launcher/graphics/DragPreviewProvider;

    invoke-direct {v5, v1}, Lcom/zui/launcher/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    invoke-virtual {v5}, Lcom/zui/launcher/graphics/DragPreviewProvider;->createDragBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_4
    move-object v9, v1

    iget-object v1, v0, Lcom/zui/launcher/widget/BaseWidgetSheet;->a:Lcom/zui/launcher/Launcher;

    const/16 v5, -0x64

    invoke-virtual {v2, v3}, Lcom/zui/launcher/Workspace;->getIdForScreen(Lcom/zui/launcher/CellLayout;)I

    move-result v12

    const/4 v13, 0x0

    move-object v2, v4

    move v3, v5

    move v4, v12

    move-object v5, v6

    move-object v6, v7

    move-object v7, v13

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/zui/launcher/Launcher;->animateAddWidget(Lcom/zui/launcher/PendingAddItemInfo;II[I[I[ILandroid/view/View;Landroid/graphics/Bitmap;Landroid/util/Size;)V

    goto/16 :goto_5

    :cond_a
    instance-of v1, v4, Lcom/zui/launcher/LenovoWidgetViewInfo;

    if-eqz v1, :cond_c

    check-cast v4, Lcom/zui/launcher/LenovoWidgetViewInfo;

    invoke-virtual {v9}, Lcom/zui/launcher/LauncherAppState;->getWidgetCache()Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    move-result-object v12

    iget-object v13, v0, Lcom/zui/launcher/widget/BaseWidgetSheet;->a:Lcom/zui/launcher/Launcher;

    iget-object v14, v4, Lcom/zui/launcher/LenovoWidgetViewInfo;->providerInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    iget v15, v8, Lcom/zui/launcher/widget/WidgetCell;->mPreviewWidth:I

    iget v1, v8, Lcom/zui/launcher/widget/WidgetCell;->mPreviewHeight:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v1

    invoke-virtual/range {v12 .. v18}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->generateLeosWidgetPreview(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/LenovoWidgetsProviderInfo;IILandroid/graphics/Bitmap;[I)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Landroid/graphics/Bitmap;

    iget-boolean v1, v4, Lcom/zui/launcher/LenovoWidgetViewInfo;->single:Z

    if-eqz v1, :cond_b

    iget-object v1, v4, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    invoke-static {v1}, Lcom/zui/launcher/LauncherModel;->getLeosWidgetsByComponent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    iget-object v0, v0, Lcom/zui/launcher/widget/BaseWidgetSheet;->a:Lcom/zui/launcher/Launcher;

    const v1, 0x7f120350

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, v4, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->showOutOfSpaceToast(Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object v1, v0, Lcom/zui/launcher/widget/BaseWidgetSheet;->a:Lcom/zui/launcher/Launcher;

    const/16 v5, -0x64

    invoke-virtual {v2, v3}, Lcom/zui/launcher/Workspace;->getIdForScreen(Lcom/zui/launcher/CellLayout;)I

    move-result v12

    const/4 v13, 0x0

    move-object v2, v4

    move v3, v5

    move v4, v12

    move-object v5, v6

    move-object v6, v7

    move-object v7, v13

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/zui/launcher/Launcher;->animateAddWidget(Lcom/zui/launcher/PendingAddItemInfo;II[I[I[ILandroid/view/View;Landroid/graphics/Bitmap;Landroid/util/Size;)V

    goto :goto_5

    :cond_c
    check-cast v4, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    iget-object v1, v4, Lcom/zui/launcher/widget/PendingAddShortcutInfo;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    invoke-virtual {v9}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/zui/launcher/icons/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v7, v0, Lcom/zui/launcher/widget/BaseWidgetSheet;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v7}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object v7

    invoke-virtual {v7, v1, v5}, Lcom/zui/launcher/icons/BaseIconFactory;->createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v7}, Lcom/zui/launcher/icons/LauncherIcons;->recycle()V

    iget-object v1, v0, Lcom/zui/launcher/widget/BaseWidgetSheet;->a:Lcom/zui/launcher/Launcher;

    const/16 v5, -0x64

    invoke-virtual {v2, v3}, Lcom/zui/launcher/Workspace;->getIdForScreen(Lcom/zui/launcher/CellLayout;)I

    move-result v7

    const/4 v10, 0x0

    move-object v2, v4

    move v3, v5

    move v4, v7

    move-object v5, v6

    move-object v6, v10

    move-object/from16 v7, p1

    move-object v8, v9

    invoke-virtual/range {v1 .. v8}, Lcom/zui/launcher/Launcher;->animateShortcut(Lcom/zui/launcher/widget/PendingAddShortcutInfo;II[I[ILandroid/view/View;Landroid/graphics/Bitmap;)V

    :goto_5
    invoke-virtual {v0, v11}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method protected hasSeenEducationTip()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getPopupDataProvider()Lcom/zui/launcher/popup/PopupDataProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/popup/PopupDataProvider;->setChangeListener(Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/zui/launcher/widget/WidgetCell;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    :goto_0
    check-cast p1, Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/BaseWidgetSheet;->handleClick(Lcom/zui/launcher/widget/WidgetCell;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/widget/WidgetCell;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected onCloseComplete()V
    .locals 0

    invoke-super {p0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->onCloseComplete()V

    invoke-virtual {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->clearNavBarColor()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getPopupDataProvider()Lcom/zui/launcher/popup/PopupDataProvider;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/popup/PopupDataProvider;->setChangeListener(Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;)V

    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/zui/launcher/DropTarget$DragObject;Z)V
    .locals 0

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/touch/ItemLongClickListener;->canStartDrag(Lcom/zui/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p1, Lcom/zui/launcher/widget/WidgetCell;

    if-eqz v0, :cond_1

    :goto_0
    check-cast p1, Lcom/zui/launcher/widget/WidgetCell;

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/BaseWidgetSheet;->b(Lcom/zui/launcher/widget/WidgetCell;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/widget/WidgetCell;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method protected setupNavBarColor()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04019d

    invoke-static {v0, v1}, Lcom/zui/launcher/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object p0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    return-void
.end method

.method protected showEducationTipOnViewIfPossible(Landroid/view/View;)Lcom/zui/launcher/views/ArrowTipView;
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Lcom/zui/launcher/views/ArrowTipView;

    iget-object v3, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/zui/launcher/views/ArrowTipView;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f1204b3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aget v4, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v0

    add-int/2addr v4, p1

    const/4 p1, 0x1

    aget v0, v1, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/zui/launcher/views/ArrowTipView;->showAtLocation(Ljava/lang/String;II)Lcom/zui/launcher/views/ArrowTipView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "launcher.widgets_education_tip_seen"

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
