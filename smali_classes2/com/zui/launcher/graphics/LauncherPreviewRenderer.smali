.class public Lcom/zui/launcher/graphics/LauncherPreviewRenderer;
.super Landroid/content/ContextWrapper;
.source ""

# interfaces
.implements Lcom/zui/launcher/views/ActivityContext;
.implements Lcom/zui/launcher/WorkspaceLayoutManager;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/zui/launcher/InvariantDeviceProfile;

.field private final d:Lcom/zui/launcher/DeviceProfile;

.field private final e:Landroid/graphics/Rect;

.field private final f:Lcom/zui/launcher/WorkspaceItemInfo;

.field private final g:Landroid/view/LayoutInflater;

.field private final h:Lcom/zui/launcher/InsettableFrameLayout;

.field private final i:Lcom/zui/launcher/Hotseat;

.field private final j:Lcom/zui/launcher/CellLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->c:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/launcher/DeviceProfile;->copy(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->d:Lcom/zui/launcher/DeviceProfile;

    sget-boolean p2, Lcom/zui/launcher/Utilities;->ATLEAST_R:Z

    if-eqz p2, :cond_0

    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p2

    invoke-direct {v0, v1, v2, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->e:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->e:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->d:Lcom/zui/launcher/DeviceProfile;

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget v2, v0, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    :goto_0
    iget-object p2, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->d:Lcom/zui/launcher/DeviceProfile;

    iget-object v0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->e:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/zui/launcher/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    new-instance p2, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$a;

    iget-object v0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->c:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v4, v0, Lcom/zui/launcher/InvariantDeviceProfile;->fillResIconDpi:I

    iget v5, v0, Lcom/zui/launcher/InvariantDeviceProfile;->iconBitmapSize:I

    iget v6, v0, Lcom/zui/launcher/InvariantDeviceProfile;->iconVisualSizePx:I

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$a;-><init>(Lcom/zui/launcher/graphics/LauncherPreviewRenderer;Landroid/content/Context;IIIZ)V

    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/zui/launcher/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IZ)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p2

    new-instance v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->f:Lcom/zui/launcher/WorkspaceItemInfo;

    iput-object p2, v0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iput-object p2, v0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object p2, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->f:Lcom/zui/launcher/WorkspaceItemInfo;

    const v0, 0x7f120417

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object p1, p2, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    new-instance p1, Landroid/view/ContextThemeWrapper;

    const p2, 0x7f13012b

    invoke-direct {p1, p0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->g:Landroid/view/LayoutInflater;

    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->g:Landroid/view/LayoutInflater;

    const p2, 0x7f0d00d3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/InsettableFrameLayout;

    iput-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->h:Lcom/zui/launcher/InsettableFrameLayout;

    iget-object p2, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/InsettableFrameLayout;->setInsets(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->h:Lcom/zui/launcher/InsettableFrameLayout;

    iget-object p2, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->d:Lcom/zui/launcher/DeviceProfile;

    iget v0, p2, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget p2, p2, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    invoke-static {p1, v0, p2}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->h(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->h:Lcom/zui/launcher/InsettableFrameLayout;

    const p2, 0x7f0a01d0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/Hotseat;

    iput-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->i:Lcom/zui/launcher/Hotseat;

    invoke-virtual {p1, v3}, Lcom/zui/launcher/Hotseat;->resetLayout(Z)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->h:Lcom/zui/launcher/InsettableFrameLayout;

    const p2, 0x7f0a0456

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/CellLayout;

    iput-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->j:Lcom/zui/launcher/CellLayout;

    iget-object p0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->d:Lcom/zui/launcher/DeviceProfile;

    iget-object p2, p0, Lcom/zui/launcher/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    add-int/2addr v0, p0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p0

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/zui/launcher/CellLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/graphics/LauncherPreviewRenderer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->a:Landroid/os/Handler;

    return-object p0
.end method

.method private b(Landroid/view/View;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_2

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->onVisibilityAggregated(Z)V

    :cond_2
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_2
    if-ge v2, p2, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->b(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private c(Lcom/zui/launcher/FolderInfo;)V
    .locals 0

    return-void
.end method

.method private d(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->g:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->j:Lcom/zui/launcher/CellLayout;

    const v2, 0x7f0d0040

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/BubbleTextView;->applyFromWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-interface {p0, v0, p1}, Lcom/zui/launcher/WorkspaceLayoutManager;->addInScreenFromBind(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method

.method private e(Lcom/zui/launcher/LauncherAppWidgetInfo;Lcom/zui/launcher/model/WidgetsModel;)V
    .locals 1

    iget-object v0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Lcom/zui/launcher/model/WidgetsModel;->getWidgetProviderInfoByProviderName(Landroid/content/ComponentName;)Lcom/zui/launcher/model/WidgetItem;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p2, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->f(Lcom/zui/launcher/LauncherAppWidgetInfo;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V

    return-void
.end method

.method private f(Lcom/zui/launcher/LauncherAppWidgetInfo;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V
    .locals 2

    new-instance v0, Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    invoke-interface {p0, v0, p1}, Lcom/zui/launcher/WorkspaceLayoutManager;->addInScreenFromBind(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method

.method private g(Lcom/zui/launcher/LauncherAppWidgetInfo;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/LauncherAppWidgetInfo;",
            "Ljava/util/Map<",
            "Lcom/zui/launcher/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/zui/launcher/util/ComponentKey;

    iget-object v1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->f(Lcom/zui/launcher/LauncherAppWidgetInfo;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V

    return-void
.end method

.method private static h(Landroid/view/View;II)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private i(Lcom/zui/launcher/model/BgDataModel;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/model/BgDataModel;",
            "Ljava/util/Map<",
            "Lcom/zui/launcher/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p1, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static {v5, v4, v0, v1}, Lcom/zui/launcher/model/ModelUtils;->filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p1, Lcom/zui/launcher/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-static {v5, v1, v2, v3}, Lcom/zui/launcher/model/ModelUtils;->filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->c:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-static {v1, v0}, Lcom/zui/launcher/model/ModelUtils;->sortWorkspaceItemsSpatially(Lcom/zui/launcher/InvariantDeviceProfile;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    iget v6, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v6, :cond_1

    if-eq v6, v4, :cond_1

    const/4 v4, 0x2

    if-eq v6, v4, :cond_0

    const/16 v4, 0x9

    if-eq v6, v4, :cond_1

    goto :goto_0

    :cond_0
    check-cast v3, Lcom/zui/launcher/FolderInfo;

    invoke-direct {p0, v3}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->c(Lcom/zui/launcher/FolderInfo;)V

    goto :goto_0

    :cond_1
    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {p0, v3}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->d(Lcom/zui/launcher/WorkspaceItemInfo;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    iget v3, v2, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v6, 0x4

    if-eq v3, v6, :cond_3

    const/16 v6, 0xa

    if-eq v3, v6, :cond_3

    goto :goto_1

    :cond_3
    check-cast v2, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz p2, :cond_4

    invoke-direct {p0, v2, p2}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->g(Lcom/zui/launcher/LauncherAppWidgetInfo;Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    iget-object v3, p1, Lcom/zui/launcher/model/BgDataModel;->widgetsModel:Lcom/zui/launcher/model/WidgetsModel;

    invoke-direct {p0, v2, v3}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->e(Lcom/zui/launcher/LauncherAppWidgetInfo;Lcom/zui/launcher/model/WidgetsModel;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->c:Lcom/zui/launcher/InvariantDeviceProfile;

    iget p1, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-static {v0, p1}, Lcom/zui/launcher/model/ModelUtils;->getMissingHotseatRanks(Ljava/util/List;I)Lcom/zui/launcher/util/IntArray;

    iget-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->g:Landroid/view/LayoutInflater;

    const p2, 0x7f0d0150

    iget-object v0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->j:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p1, p2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    new-instance v10, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->j:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result p1

    invoke-direct {v10, v5, v5, p1, v4}, Lcom/zui/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    iput-boolean v5, v10, Lcom/zui/launcher/CellLayout$LayoutParams;->canReorder:Z

    iget-object v6, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->j:Lcom/zui/launcher/CellLayout;

    const/4 v8, 0x0

    const v9, 0x7f0a032f

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/zui/launcher/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/zui/launcher/CellLayout$LayoutParams;Z)Z

    iget-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->h:Lcom/zui/launcher/InsettableFrameLayout;

    iget-object p2, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->d:Lcom/zui/launcher/DeviceProfile;

    iget v0, p2, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget p2, p2, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    invoke-static {p1, v0, p2}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->h(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->h:Lcom/zui/launcher/InsettableFrameLayout;

    invoke-direct {p0, p1, v4}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->b(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->h:Lcom/zui/launcher/InsettableFrameLayout;

    iget-object p2, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->d:Lcom/zui/launcher/DeviceProfile;

    iget v0, p2, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget p2, p2, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    invoke-static {p1, v0, p2}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->h(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->h:Lcom/zui/launcher/InsettableFrameLayout;

    iget-object p0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->d:Lcom/zui/launcher/DeviceProfile;

    iget p2, p0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    invoke-static {p1, p2, p0}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->h(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public getDeviceProfile()Lcom/zui/launcher/DeviceProfile;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->d:Lcom/zui/launcher/DeviceProfile;

    return-object p0
.end method

.method public getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getHotseat()Lcom/zui/launcher/Hotseat;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->i:Lcom/zui/launcher/Hotseat;

    return-object p0
.end method

.method public getRenderedView(Lcom/zui/launcher/model/BgDataModel;Ljava/util/Map;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/model/BgDataModel;",
            "Ljava/util/Map<",
            "Lcom/zui/launcher/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->i(Lcom/zui/launcher/model/BgDataModel;Ljava/util/Map;)V

    iget-object p0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->h:Lcom/zui/launcher/InsettableFrameLayout;

    return-object p0
.end method

.method public getScreenWithId(I)Lcom/zui/launcher/CellLayout;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->j:Lcom/zui/launcher/CellLayout;

    return-object p0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const-string v0, "TextClock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$b;

    invoke-direct {p1, p0, p3, p4}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$b;-><init>(Lcom/zui/launcher/graphics/LauncherPreviewRenderer;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p1

    :cond_0
    const-string p0, "fragment"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_1

    return-object p2

    :cond_1
    sget-object p0, Lcom/zui/launcher/R$styleable;->PreviewFragment:[I

    invoke-virtual {p3, p4, p0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p4, 0x0

    invoke-virtual {p0, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p4

    check-cast p4, Lcom/zui/launcher/graphics/FragmentWithPreview;

    invoke-virtual {p4, p3}, Lcom/zui/launcher/graphics/FragmentWithPreview;->a(Landroid/content/Context;)V

    invoke-virtual {p4, p2}, Lcom/zui/launcher/graphics/FragmentWithPreview;->onInit(Landroid/os/Bundle;)V

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p4, p3, p1, p2}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
