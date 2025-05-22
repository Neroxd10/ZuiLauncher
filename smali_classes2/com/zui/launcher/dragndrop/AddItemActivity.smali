.class public Lcom/zui/launcher/dragndrop/AddItemActivity;
.super Lcom/zui/launcher/BaseAlertActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# instance fields
.field private final k:Landroid/graphics/PointF;

.field private l:Landroid/content/pm/LauncherApps$PinItemRequest;

.field private m:Lcom/zui/launcher/LauncherAppState;

.field private n:Lcom/zui/launcher/InvariantDeviceProfile;

.field private o:Lcom/zui/launcher/widget/WidgetCell;

.field private p:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

.field private q:Lcom/zui/launcher/widget/WidgetManagerHelper;

.field private r:I

.field private s:Landroid/os/Bundle;

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/BaseAlertActivity;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->k:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->t:Z

    return-void
.end method

.method private e(I)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/model/ItemInstallQueue;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/model/ItemInstallQueue;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->l:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/zui/launcher/model/ItemInstallQueue;->queueItem(Landroid/appwidget/AppWidgetProviderInfo;I)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->s:Landroid/os/Bundle;

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->l:Landroid/content/pm/LauncherApps$PinItemRequest;

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->s:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept(Landroid/os/Bundle;)Z

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/AddItemActivity;->k(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic f(Lcom/zui/launcher/dragndrop/AddItemActivity;)Lcom/zui/launcher/widget/WidgetCell;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->o:Lcom/zui/launcher/widget/WidgetCell;

    return-object p0
.end method

.method static synthetic g(Lcom/zui/launcher/dragndrop/AddItemActivity;)Lcom/zui/launcher/LauncherAppState;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->m:Lcom/zui/launcher/LauncherAppState;

    return-object p0
.end method

.method private h(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/dragndrop/AddItemActivity$c;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/dragndrop/AddItemActivity$c;-><init>(Lcom/zui/launcher/dragndrop/AddItemActivity;Ljava/util/function/Supplier;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private k(I)V
    .locals 0

    return-void
.end method

.method private l()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/dragndrop/n;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->l:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-direct {v0, v1, p0}, Lcom/zui/launcher/dragndrop/n;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->o:Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {v1}, Lcom/zui/launcher/widget/WidgetCell;->getWidgetView()Lcom/zui/launcher/widget/WidgetImageView;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    invoke-direct {v2, v0}, Lcom/zui/launcher/widget/PendingAddShortcutInfo;-><init>(Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/zui/launcher/dragndrop/a;

    invoke-direct {v1, p0, v0}, Lcom/zui/launcher/dragndrop/a;-><init>(Lcom/zui/launcher/dragndrop/AddItemActivity;Lcom/zui/launcher/dragndrop/n;)V

    invoke-direct {p0, v1}, Lcom/zui/launcher/dragndrop/AddItemActivity;->h(Ljava/util/function/Supplier;)V

    return-void
.end method

.method private m()Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1f
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->l:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    iget v1, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->n:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v3, v2, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    if-gt v1, v3, :cond_1

    iget v1, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iget v2, v2, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->o:Lcom/zui/launcher/widget/WidgetCell;

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->l:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/PinItemDragListener;->getPreview(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/widget/WidgetCell;->setRemoteViewsPreview(Landroid/widget/RemoteViews;)V

    new-instance v1, Lcom/zui/launcher/widget/WidgetManagerHelper;

    invoke-direct {v1, p0}, Lcom/zui/launcher/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->q:Lcom/zui/launcher/widget/WidgetManagerHelper;

    new-instance v1, Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    invoke-direct {v1, p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->p:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    new-instance v1, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    invoke-direct {v1, v0}, Lcom/zui/launcher/widget/PendingAddWidgetInfo;-><init>(Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->n:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v2, v2, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iget v3, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->n:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v2, v2, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    iget v3, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {v1, p0}, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->getDefaultSizeOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->s:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->o:Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {v2}, Lcom/zui/launcher/widget/WidgetCell;->getWidgetView()Lcom/zui/launcher/widget/WidgetImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/zui/launcher/dragndrop/b;

    invoke-direct {v1, p0, v0}, Lcom/zui/launcher/dragndrop/b;-><init>(Lcom/zui/launcher/dragndrop/AddItemActivity;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V

    invoke-direct {p0, v1}, Lcom/zui/launcher/dragndrop/AddItemActivity;->h(Ljava/util/function/Supplier;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private n()V
    .locals 5

    iget-object v0, p0, Lzui/app/AlertActivity;->mAlertParams:Lcom/zui/internal/app/MessageController$MessageParams;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d002b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lzui/app/AlertActivity;->mAlert:Lcom/zui/internal/app/MessageController;

    invoke-virtual {v3, v2}, Lcom/zui/internal/app/DialogController;->setView(Landroid/view/View;)V

    iget-object v3, p0, Lzui/app/AlertActivity;->mAlert:Lcom/zui/internal/app/MessageController;

    invoke-virtual {v3, v1}, Lcom/zui/internal/app/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0437

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/widget/WidgetCell;

    iput-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->o:Lcom/zui/launcher/widget/WidgetCell;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->l:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "---------AddItemActivity---showDialog REQUEST_TYPE_SHORTCUT"

    invoke-static {v1}, Lcom/zui/launcher/util/Debug;->debugShortcut(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/AddItemActivity;->l()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/AddItemActivity;->m()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "---------AddItemActivity---showDialog !setupWidget finish"

    invoke-static {v1}, Lcom/zui/launcher/util/Debug;->debugShortcut(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->o:Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->o:Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f12010a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    new-instance v1, Lcom/zui/launcher/dragndrop/AddItemActivity$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/dragndrop/AddItemActivity$a;-><init>(Lcom/zui/launcher/dragndrop/AddItemActivity;)V

    iput-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/zui/launcher/dragndrop/AddItemActivity$b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/dragndrop/AddItemActivity$b;-><init>(Lcom/zui/launcher/dragndrop/AddItemActivity;)V

    iput-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const-string v0, "---------AddItemActivity---setupAlert---------"

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugShortcut(Ljava/lang/String;)V

    invoke-virtual {p0}, Lzui/app/AlertActivity;->setupAlert()V

    return-void
.end method


# virtual methods
.method public getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public synthetic i(Lcom/zui/launcher/dragndrop/n;)Lcom/zui/launcher/model/WidgetItem;
    .locals 2

    new-instance v0, Lcom/zui/launcher/model/WidgetItem;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->m:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lcom/zui/launcher/model/WidgetItem;-><init>(Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;Lcom/zui/launcher/icons/IconCache;Landroid/content/pm/PackageManager;)V

    return-object v0
.end method

.method public synthetic j(Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)Lcom/zui/launcher/model/WidgetItem;
    .locals 2

    new-instance v0, Lcom/zui/launcher/model/WidgetItem;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->n:Lcom/zui/launcher/InvariantDeviceProfile;

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->m:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lcom/zui/launcher/model/WidgetItem;-><init>(Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;Lcom/zui/launcher/InvariantDeviceProfile;Lcom/zui/launcher/icons/IconCache;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->r:I

    if-eqz p3, :cond_0

    const-string v0, "appWidgetId"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    :cond_0
    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/AddItemActivity;->e(I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->p:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    iput p3, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->r:I

    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/zui/launcher/BaseAlertActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/dragndrop/AddItemActivity;->k(I)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCancelClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/AddItemActivity;->k(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lzui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/pm/PinRequestHelper;->getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->l:Landroid/content/pm/LauncherApps$PinItemRequest;

    if-nez v0, :cond_0

    const-string p1, "---------AddItemActivity---onCreate: mRequest == null"

    invoke-static {p1}, Lcom/zui/launcher/util/Debug;->debugShortcut(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->m:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->n:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/BaseAlertActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/AddItemActivity;->n()V

    if-nez p1, :cond_1

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/AddItemActivity;->k(I)V

    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/zui/launcher/BaseAlertActivity;->onPause()V

    iget-boolean v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onPlaceAutomaticallyClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->l:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/zui/launcher/model/ItemInstallQueue;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/model/ItemInstallQueue;

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->l:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/model/ItemInstallQueue;->queueItem(Landroid/content/pm/ShortcutInfo;)V

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/AddItemActivity;->k(I)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->l:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept()Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p0, "---------AddItemActivity---onPlaceAutomaticallyClick InstallShortcutReceiver.queueShortcut---------"

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->debugShortcut(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->p:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    invoke-virtual {p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->r:I

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->q:Lcom/zui/launcher/widget/WidgetManagerHelper;

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->l:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v2, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->s:Landroid/os/Bundle;

    invoke-virtual {v1, p1, v2, v3}, Lcom/zui/launcher/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->r:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/AddItemActivity;->e(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->p:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    iget v1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->r:I

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->l:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v2, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    invoke-virtual {p1, p0, v1, v2, v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->startBindFlow(Lcom/zui/launcher/BaseAlertActivity;ILandroid/appwidget/AppWidgetProviderInfo;I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->r:I

    const-string v1, "state.widget.id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->r:I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->r:I

    const-string v0, "state.widget.id"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity;->k:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    const/4 p0, 0x0

    return p0
.end method
