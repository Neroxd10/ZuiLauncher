.class public Lcom/zui/launcher/dragndrop/AddItemActivity2;
.super Lcom/zui/launcher/BaseActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/zui/launcher/views/AbstractSlideInView$OnCloseListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# instance fields
.field private final f:Landroid/graphics/PointF;

.field private g:Landroid/content/pm/LauncherApps$PinItemRequest;

.field private h:Lcom/zui/launcher/LauncherAppState;

.field private i:Lcom/zui/launcher/InvariantDeviceProfile;

.field private j:Lcom/zui/launcher/views/BaseDragLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/views/BaseDragLayer<",
            "Lcom/zui/launcher/dragndrop/AddItemActivity2;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/zui/launcher/widget/AddItemWidgetsBottomSheet;

.field private l:Lcom/zui/launcher/widget/WidgetCell;

.field private m:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

.field private n:Lcom/zui/launcher/widget/WidgetManagerHelper;

.field private o:I

.field private p:Landroid/os/Bundle;

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/BaseActivity;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->f:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->q:Z

    return-void
.end method

.method private a(I)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/model/ItemInstallQueue;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/model/ItemInstallQueue;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->g:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/zui/launcher/model/ItemInstallQueue;->queueItem(Landroid/appwidget/AppWidgetProviderInfo;I)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->p:Landroid/os/Bundle;

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->g:Landroid/content/pm/LauncherApps$PinItemRequest;

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->p:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept(Landroid/os/Bundle;)Z

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->k:Lcom/zui/launcher/widget/AddItemWidgetsBottomSheet;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/dragndrop/AddItemActivity2;)Lcom/zui/launcher/widget/WidgetCell;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->l:Lcom/zui/launcher/widget/WidgetCell;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/dragndrop/AddItemActivity2;)Lcom/zui/launcher/LauncherAppState;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->h:Lcom/zui/launcher/LauncherAppState;

    return-object p0
.end method

.method private d(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/dragndrop/AddItemActivity2$b;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/dragndrop/AddItemActivity2$b;-><init>(Lcom/zui/launcher/dragndrop/AddItemActivity2;Ljava/util/function/Supplier;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private g()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/dragndrop/n;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->g:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-direct {v0, v1, p0}, Lcom/zui/launcher/dragndrop/n;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->l:Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {v1}, Lcom/zui/launcher/widget/WidgetCell;->getWidgetView()Lcom/zui/launcher/widget/WidgetImageView;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    invoke-direct {v2, v0}, Lcom/zui/launcher/widget/PendingAddShortcutInfo;-><init>(Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/zui/launcher/dragndrop/c;

    invoke-direct {v1, p0, v0}, Lcom/zui/launcher/dragndrop/c;-><init>(Lcom/zui/launcher/dragndrop/AddItemActivity2;Lcom/zui/launcher/dragndrop/n;)V

    invoke-direct {p0, v1}, Lcom/zui/launcher/dragndrop/AddItemActivity2;->d(Ljava/util/function/Supplier;)V

    return-void
.end method

.method private h()Z
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->g:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    iget v1, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->i:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v3, v2, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    if-gt v1, v3, :cond_1

    iget v1, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iget v2, v2, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->l:Lcom/zui/launcher/widget/WidgetCell;

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->g:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/PinItemDragListener;->getPreview(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/widget/WidgetCell;->setRemoteViewsPreview(Landroid/widget/RemoteViews;)V

    new-instance v1, Lcom/zui/launcher/widget/WidgetManagerHelper;

    invoke-direct {v1, p0}, Lcom/zui/launcher/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->n:Lcom/zui/launcher/widget/WidgetManagerHelper;

    new-instance v1, Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    invoke-direct {v1, p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->m:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    new-instance v1, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    invoke-direct {v1, v0}, Lcom/zui/launcher/widget/PendingAddWidgetInfo;-><init>(Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->i:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v2, v2, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iget v3, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->i:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v2, v2, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    iget v3, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {v1, p0}, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->getDefaultSizeOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->p:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->l:Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {v2}, Lcom/zui/launcher/widget/WidgetCell;->getWidgetView()Lcom/zui/launcher/widget/WidgetImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/zui/launcher/dragndrop/d;

    invoke-direct {v1, p0, v0}, Lcom/zui/launcher/dragndrop/d;-><init>(Lcom/zui/launcher/dragndrop/AddItemActivity2;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V

    invoke-direct {p0, v1}, Lcom/zui/launcher/dragndrop/AddItemActivity2;->d(Ljava/util/function/Supplier;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public synthetic e(Lcom/zui/launcher/dragndrop/n;)Lcom/zui/launcher/model/WidgetItem;
    .locals 2

    new-instance v0, Lcom/zui/launcher/model/WidgetItem;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->h:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lcom/zui/launcher/model/WidgetItem;-><init>(Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;Lcom/zui/launcher/icons/IconCache;Landroid/content/pm/PackageManager;)V

    return-object v0
.end method

.method public synthetic f(Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)Lcom/zui/launcher/model/WidgetItem;
    .locals 2

    new-instance v0, Lcom/zui/launcher/model/WidgetItem;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->i:Lcom/zui/launcher/InvariantDeviceProfile;

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->h:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lcom/zui/launcher/model/WidgetItem;-><init>(Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;Lcom/zui/launcher/InvariantDeviceProfile;Lcom/zui/launcher/icons/IconCache;)V

    return-object v0
.end method

.method public getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->j:Lcom/zui/launcher/views/BaseDragLayer;

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->o:I

    if-eqz p3, :cond_0

    const-string v0, "appWidgetId"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    :cond_0
    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/AddItemActivity2;->a(I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->m:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    iput p3, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->o:I

    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/zui/launcher/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->k:Lcom/zui/launcher/widget/AddItemWidgetsBottomSheet;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method public onCancelClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->k:Lcom/zui/launcher/widget/AddItemWidgetsBottomSheet;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/pm/PinRequestHelper;->getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->g:Landroid/content/pm/LauncherApps$PinItemRequest;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->h:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->i:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    const p1, 0x7f0d002c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0a0073

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/views/BaseDragLayer;

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->j:Lcom/zui/launcher/views/BaseDragLayer;

    invoke-virtual {p1}, Lcom/zui/launcher/views/BaseDragLayer;->recreateControllers()V

    const p1, 0x7f0a0437

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/WidgetCell;

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->l:Lcom/zui/launcher/widget/WidgetCell;

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->g:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/AddItemActivity2;->g()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/AddItemActivity2;->h()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->l:Lcom/zui/launcher/widget/WidgetCell;

    const v0, 0x7f0a0440

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/WidgetCellPreview;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f0a0439

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0a0071

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/AddItemWidgetsBottomSheet;

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->k:Lcom/zui/launcher/widget/AddItemWidgetsBottomSheet;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/views/AbstractSlideInView;->addOnCloseListener(Lcom/zui/launcher/views/AbstractSlideInView$OnCloseListener;)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->k:Lcom/zui/launcher/widget/AddItemWidgetsBottomSheet;

    invoke-virtual {p1}, Lcom/zui/launcher/widget/AddItemWidgetsBottomSheet;->show()V

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/AddItemActivity2;->setupNavBarColor()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->l:Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/WidgetCell;->getWidgetView()Lcom/zui/launcher/widget/WidgetImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->l:Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {v1}, Lcom/zui/launcher/widget/WidgetCell;->getAppWidgetHostViewPreview()Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zui/launcher/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    return v3

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v1, v0}, Lcom/zui/launcher/dragndrop/DraggableView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v2

    iget-object v4, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    sub-int/2addr v2, v4

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->f:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    new-instance v2, Lcom/zui/launcher/dragndrop/PinItemDragListener;

    iget-object v4, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->g:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v2, v4, v0, v5, v1}, Lcom/zui/launcher/dragndrop/PinItemDragListener;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/graphics/Rect;II)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/zui/launcher/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    iget-object v4, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    sub-int/2addr v2, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->f:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    new-instance v2, Lcom/zui/launcher/dragndrop/PinItemDragListener;

    iget-object v4, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->g:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-direct {v2, v4, v1, v5, v0}, Lcom/zui/launcher/dragndrop/PinItemDragListener;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/graphics/Rect;II)V

    :goto_0
    new-instance v0, Landroid/content/ClipDescription;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {v2}, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->getMimeType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, ""

    invoke-direct {v0, v5, v4}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v4, Landroid/content/ClipData;

    new-instance v6, Landroid/content/ClipData$Item;

    invoke-direct {v6, v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v4, v0, v6}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    new-instance v0, Lcom/zui/launcher/dragndrop/AddItemActivity2$a;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/dragndrop/AddItemActivity2$a;-><init>(Lcom/zui/launcher/dragndrop/AddItemActivity2;Landroid/view/View;)V

    const/4 v5, 0x0

    const/16 v6, 0x100

    invoke-virtual {p1, v4, v0, v5, v6}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v2}, Lcom/zui/launcher/states/InternalStateHandler;->initWhenReady()V

    const v0, 0x10a0001

    invoke-static {p0, v3, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    iput-boolean v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->q:Z

    return v3
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/zui/launcher/BaseActivity;->onPause()V

    iget-boolean v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onPlaceAutomaticallyClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->g:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/zui/launcher/model/ItemInstallQueue;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/model/ItemInstallQueue;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->g:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/zui/launcher/model/ItemInstallQueue;->queueItem(Landroid/content/pm/ShortcutInfo;)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->g:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept()Z

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->k:Lcom/zui/launcher/widget/AddItemWidgetsBottomSheet;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->m:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    invoke-virtual {p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->o:I

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->n:Lcom/zui/launcher/widget/WidgetManagerHelper;

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->g:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v2, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->p:Landroid/os/Bundle;

    invoke-virtual {v1, p1, v2, v3}, Lcom/zui/launcher/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->o:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/AddItemActivity2;->a(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->m:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    iget v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->o:I

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->g:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v2, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    invoke-virtual {p1, p0, v1, v2, v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->startBindFlow(Lcom/zui/launcher/BaseActivity;ILandroid/appwidget/AppWidgetProviderInfo;I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->o:I

    const-string v1, "state.widget.id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->o:I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->o:I

    const-string v0, "state.widget.id"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSlideInViewClosed()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity2;->f:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    const/4 p0, 0x0

    return p0
.end method

.method protected setupNavBarColor()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object p0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    return-void
.end method
