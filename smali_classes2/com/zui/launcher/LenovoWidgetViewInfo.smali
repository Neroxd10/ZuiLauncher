.class public Lcom/zui/launcher/LenovoWidgetViewInfo;
.super Lcom/zui/launcher/PendingAddItemInfo;
.source ""


# instance fields
.field public boundWidget:Landroid/view/View;

.field public className:Ljava/lang/String;

.field public configure:Z

.field public iReconfigurable:Z

.field public iconDrawable:Landroid/graphics/drawable/Drawable;

.field public mConfigureIntent:Landroid/content/Intent;

.field public packageName:Ljava/lang/String;

.field public previewImage:I

.field public providerInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

.field public single:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/PendingAddItemInfo;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->configure:Z

    iput-boolean v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->single:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->mConfigureIntent:Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->iReconfigurable:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/LenovoWidgetViewInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zui/launcher/PendingAddItemInfo;-><init>(Lcom/zui/launcher/PendingAddItemInfo;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->configure:Z

    iput-boolean v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->single:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->mConfigureIntent:Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->iReconfigurable:Z

    iget-object v0, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    iget-object v0, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->packageName:Ljava/lang/String;

    iget v0, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->previewImage:I

    iput v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->previewImage:I

    iget-object v0, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    iget-boolean v0, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->configure:Z

    iput-boolean v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->configure:Z

    iget-boolean v0, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->single:Z

    iput-boolean v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->single:Z

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->mConfigureIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->mConfigureIntent:Landroid/content/Intent;

    iget-boolean p1, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->iReconfigurable:Z

    iput-boolean p1, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->iReconfigurable:Z

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/LenovoWidgetsProviderInfo;)V
    .locals 3

    invoke-direct {p0}, Lcom/zui/launcher/LenovoWidgetViewInfo;-><init>()V

    iget-object v0, p1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->widgetView:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    iget-object v1, p1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->appPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->packageName:Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/zui/launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iget v0, p1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->x:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v0, p1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->y:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget-object v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    const-string v1, "com.zui.laweather.activity.TimeWidgetView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f080580

    if-eqz v0, :cond_0

    :goto_0
    iput v1, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->previewImage:I

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    const-string v2, "com.zui.timelaweather.activity.TimeWeatherWidgetView"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/zui/launcher/Utilities;->isZuiRow()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f080583

    goto :goto_1

    :cond_2
    const v0, 0x7f080260

    :goto_1
    iput v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->previewImage:I

    :goto_2
    iget-object v0, p1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->providerInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    iget-object v0, p1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-boolean v0, p1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->configure:Z

    iput-boolean v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->configure:Z

    iget-boolean p1, p1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->single:Z

    iput-boolean p1, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->single:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->iReconfigurable:Z

    return-void
.end method


# virtual methods
.method public getConfigureIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->mConfigureIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 2

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isReconfigurable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->iReconfigurable:Z

    return p0
.end method

.method public onAddToDatabase(Lcom/zui/launcher/util/ContentWriter;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zui/launcher/ItemInfo;->onAddToDatabase(Lcom/zui/launcher/util/ContentWriter;)V

    iget v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->previewImage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "iconResource"

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    iget-object v0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/util/ContentWriter;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->packageName:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v0, "uri"

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/util/ContentWriter;

    :cond_1
    return-void
.end method

.method public setConfigureIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->mConfigureIntent:Landroid/content/Intent;

    return-void
.end method

.method public setReconfigurable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;->iReconfigurable:Z

    return-void
.end method
