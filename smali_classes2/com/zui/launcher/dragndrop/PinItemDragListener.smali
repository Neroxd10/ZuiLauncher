.class public Lcom/zui/launcher/dragndrop/PinItemDragListener;
.super Lcom/zui/launcher/dragndrop/BaseItemDragListener;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# instance fields
.field private final h:Landroid/content/pm/LauncherApps$PinItemRequest;

.field private final i:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/graphics/Rect;II)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/zui/launcher/dragndrop/BaseItemDragListener;-><init>(Landroid/graphics/Rect;II)V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/PinItemDragListener;->h:Landroid/content/pm/LauncherApps$PinItemRequest;

    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/PinItemDragListener;->i:Landroid/os/CancellationSignal;

    return-void
.end method

.method public static getPreview(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/widget/RemoteViews;
    .locals 2

    invoke-virtual {p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "appWidgetPreview"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RemoteViews;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected createDragHelper()Lcom/zui/launcher/widget/PendingItemDragHelper;
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/PinItemDragListener;->h:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    new-instance v1, Lcom/zui/launcher/dragndrop/n;

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/PinItemDragListener;->h:Landroid/content/pm/LauncherApps$PinItemRequest;

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-direct {v1, v2, v3}, Lcom/zui/launcher/dragndrop/n;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/zui/launcher/widget/PendingAddShortcutInfo;-><init>(Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->mLauncher:Lcom/zui/launcher/Launcher;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/PinItemDragListener;->h:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1, v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/dragndrop/PinWidgetFlowHandler;

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/PinItemDragListener;->h:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-direct {v1, v0, v2}, Lcom/zui/launcher/dragndrop/PinWidgetFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Landroid/content/pm/LauncherApps$PinItemRequest;)V

    new-instance v2, Lcom/zui/launcher/dragndrop/PinItemDragListener$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/zui/launcher/dragndrop/PinItemDragListener$a;-><init>(Lcom/zui/launcher/dragndrop/PinItemDragListener;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;Lcom/zui/launcher/dragndrop/PinWidgetFlowHandler;)V

    move-object v0, v2

    :goto_0
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcom/zui/launcher/widget/PendingItemDragHelper;

    invoke-direct {v0, v1}, Lcom/zui/launcher/widget/PendingItemDragHelper;-><init>(Landroid/view/View;)V

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/PinItemDragListener;->h:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/PinItemDragListener;->h:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-static {p0}, Lcom/zui/launcher/dragndrop/PinItemDragListener;->getPreview(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/widget/RemoteViews;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/widget/PendingItemDragHelper;->setRemoteViewsPreview(Landroid/widget/RemoteViews;)V

    :cond_1
    return-object v0
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    const/16 p0, 0xa

    iput p0, p4, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    return-void
.end method

.method public init(Lcom/zui/launcher/Launcher;Z)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->init(Lcom/zui/launcher/Launcher;Z)Z

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/PinItemDragListener;->i:Landroid/os/CancellationSignal;

    invoke-static {p1, p0}, Lcom/zui/launcher/uioverrides/UiFactory;->useFadeOutAnimationForLauncherStart(Lcom/zui/launcher/Launcher;Landroid/os/CancellationSignal;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onDragStart(Landroid/view/DragEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/PinItemDragListener;->h:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->onDragStart(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method protected postCleanup()V
    .locals 0

    invoke-super {p0}, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->postCleanup()V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/PinItemDragListener;->i:Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method
