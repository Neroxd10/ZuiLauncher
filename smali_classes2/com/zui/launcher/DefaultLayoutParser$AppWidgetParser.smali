.class public Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;
.super Lcom/zui/launcher/AutoInstallsLayout$PendingWidgetParser;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AppWidgetParser"
.end annotation


# instance fields
.field final synthetic b:Lcom/zui/launcher/DefaultLayoutParser;


# direct methods
.method protected constructor <init>(Lcom/zui/launcher/DefaultLayoutParser;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    invoke-direct {p0, p1}, Lcom/zui/launcher/AutoInstallsLayout$PendingWidgetParser;-><init>(Lcom/zui/launcher/AutoInstallsLayout;)V

    return-void
.end method


# virtual methods
.method protected verifyAndInsert(Landroid/content/ComponentName;Landroid/os/Bundle;)I
    .locals 7

    const-string v0, "appWidgetId"

    const-string v1, "DefaultLayoutParser"

    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object v4, v4, Lcom/zui/launcher/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v4, p0, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object v4, v4, Lcom/zui/launcher/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    aget-object v4, v4, v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, v4, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object p1, p0, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object p1, p1, Lcom/zui/launcher/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v5, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object p1, v5

    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object v3, v3, Lcom/zui/launcher/AutoInstallsLayout;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    :try_start_2
    iget-object v4, p0, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object v4, v4, Lcom/zui/launcher/AutoInstallsLayout;->b:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to bind app widget id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object p0, p0, Lcom/zui/launcher/AutoInstallsLayout;->b:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p0, v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    return v2

    :cond_0
    iget-object v3, p0, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object v3, v3, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object v3, v3, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    const-string v5, "appWidgetProvider"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object v3, v3, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    const-string v5, "_id"

    iget-object v6, p0, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object v6, v6, Lcom/zui/launcher/AutoInstallsLayout;->mCallback:Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {v6}, Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object v3, v3, Lcom/zui/launcher/AutoInstallsLayout;->mCallback:Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;

    iget-object v5, p0, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object v5, v5, Lcom/zui/launcher/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object v6, v6, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    invoke-interface {v3, v5, v6}, Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v2

    if-gez v2, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object p0, p0, Lcom/zui/launcher/AutoInstallsLayout;->b:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p0, v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object p0, p0, Lcom/zui/launcher/AutoInstallsLayout;->a:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "Problem allocating appWidgetId"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return v2

    :catch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can\'t find widget provider: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method
