.class Lcom/zui/launcher/Launcher$w0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->D0(Lcom/zui/launcher/LauncherAppWidgetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/LauncherAppWidgetInfo;

.field final synthetic b:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$w0;->b:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/Launcher$w0;->a:Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/zui/launcher/Launcher$w0;->a:Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object p1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher$w0;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher$w0;->b:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------Launcher--bindAppWidgetByProvider---bindAppWidgetIdIfAllowed---allocateWidgetId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveAppWidgetLog(Ljava/lang/String;)V

    invoke-virtual {v1, v3, p1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------Launcher--bindAppWidgetByProvider---getProviderInfo-- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/util/Debug;->saveAppWidgetLog(Ljava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/Launcher$w0;->a:Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object p0, p0, Lcom/zui/launcher/Launcher$w0;->b:Lcom/zui/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/zui/launcher/LauncherModel;->getDummyWidgetSubType(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p0

    iput p0, v0, Lcom/zui/launcher/ItemInfo;->subItemType:I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/Launcher$w0;->a:Lcom/zui/launcher/LauncherAppWidgetInfo;

    iput v3, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAppWidget,   onClick   widgetInfo --> "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DummyAppWidgetView"

    invoke-static {v1, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher$w0;->b:Lcom/zui/launcher/Launcher;

    invoke-static {p1, v0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    invoke-direct {v0, p1}, Lcom/zui/launcher/widget/PendingAddWidgetInfo;-><init>(Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher$w0;->b:Lcom/zui/launcher/Launcher;

    iget-object p1, p1, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget-object v1, p0, Lcom/zui/launcher/Launcher$w0;->a:Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p1, v1}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/zui/launcher/Launcher$w0;->b:Lcom/zui/launcher/Launcher;

    iget-object v4, p0, Lcom/zui/launcher/Launcher$w0;->a:Lcom/zui/launcher/LauncherAppWidgetInfo;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->getHandler()Lcom/zui/launcher/widget/WidgetAddFlowHandler;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/zui/launcher/Launcher;->o0(ILcom/zui/launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/widget/WidgetAddFlowHandler;I)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher$w0;->a:Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object p0, p0, Lcom/zui/launcher/Launcher$w0;->b:Lcom/zui/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/zui/launcher/LauncherModel;->getDummyWidgetSubType(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p0

    iput p0, v1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const-string p0, "-------Launcher--SecurityException---------"

    invoke-static {p0, v0}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "------Launcher--bindAppWidgetByProvider---bindAppWidgetIdIfAllowed--failed--SecurityException "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveAppWidgetLog(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher$w0;->a:Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object p0, p0, Lcom/zui/launcher/Launcher$w0;->b:Lcom/zui/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/zui/launcher/LauncherModel;->getDummyWidgetSubType(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p0

    iput p0, v1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "------Launcher--bindAppWidgetByProvider---bindAppWidgetIdIfAllowed--failed--IllegalArgumentException "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveAppWidgetLog(Ljava/lang/String;)V

    return-void
.end method
