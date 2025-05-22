.class public Lcom/zui/launcher/widget/PendingAddWidgetInfo;
.super Lcom/zui/launcher/PendingAddItemInfo;
.source ""


# instance fields
.field public bindOptions:Landroid/os/Bundle;

.field public boundWidget:Landroid/appwidget/AppWidgetHostView;

.field public icon:I

.field public info:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

.field public previewImage:I


# direct methods
.method public constructor <init>(Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/PendingAddItemInfo;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->isCustomWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    iput-object p1, p0, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->info:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/zui/launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iput v0, p0, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->previewImage:I

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    iput v0, p0, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->icon:I

    iget v0, p1, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v0, p1, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget v0, p1, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iget p1, p1, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput p1, p0, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    const/16 p1, -0x69

    iput p1, p0, Lcom/zui/launcher/ItemInfo;->container:I

    return-void
.end method


# virtual methods
.method public getDefaultSizeOptions(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-static {p1, v0, v1, p0}, Lcom/zui/launcher/widget/util/WidgetSizes;->getWidgetSizeOptions(Landroid/content/Context;Landroid/content/ComponentName;II)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getHandler()Lcom/zui/launcher/widget/WidgetAddFlowHandler;
    .locals 1

    new-instance v0, Lcom/zui/launcher/widget/WidgetAddFlowHandler;

    iget-object p0, p0, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->info:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {v0, p0}, Lcom/zui/launcher/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    return-object v0
.end method
