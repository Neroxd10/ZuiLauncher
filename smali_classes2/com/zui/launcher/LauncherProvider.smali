.class public Lcom/zui/launcher/LauncherProvider;
.super Landroid/content/ContentProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/LauncherProvider$b;,
        Lcom/zui/launcher/LauncherProvider$SqlArguments;,
        Lcom/zui/launcher/LauncherProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final EMPTY_DATABASE_CREATED:Ljava/lang/String; = "EMPTY_DATABASE_CREATED"

.field public static final EMPTY_DATABASE_CREATED_2LAYER:Ljava/lang/String; = "EMPTY_DATABASE_CREATED_2LAYER"

.field public static final SCHEMA_VERSION:I = 0x6


# instance fields
.field private final a:Lcom/zui/launcher/LauncherProvider$b;

.field private b:Landroid/os/Handler;

.field protected mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

.field protected mTheotherHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Lcom/zui/launcher/LauncherProvider$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/launcher/LauncherProvider$b;-><init>(Lcom/zui/launcher/LauncherProvider$a;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherProvider;->a:Lcom/zui/launcher/LauncherProvider$b;

    return-void
.end method

.method static a(Landroid/content/ContentValues;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "modified"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#########  clearFlagEmptyDbCreated ########## : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private c(Landroid/appwidget/AppWidgetHost;)Lcom/zui/launcher/AutoInstallsLayout;
    .locals 12

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "launcher3.layout.provider"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    return-object v8

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v7, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    const-string v9, "LauncherProvider"

    if-nez v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No provider found for authority "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v9, p0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_1
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "launcher_layout"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "version"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget v4, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gridWidth"

    invoke-virtual {v3, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget v4, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gridHeight"

    invoke-virtual {v3, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "hotseatSize"

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-static {v10}, Lcom/zui/launcher/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading layout from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/zui/launcher/AutoInstallsLayout;

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Lcom/zui/launcher/x1;

    invoke-direct {v5, v3}, Lcom/zui/launcher/x1;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v6, "workspace"

    move-object v0, v11

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;Ljava/util/function/Supplier;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_2

    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-object v11

    :catchall_0
    move-exception p0

    if-eqz v10, :cond_3

    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error getting layout stream from: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", e ->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method static d(Lcom/zui/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 1

    if-eqz p4, :cond_1

    const-string v0, "_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p4}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->checkId(Ljava/lang/String;Landroid/content/ContentValues;)V

    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: attempting to add item without specifying an id"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: attempting to insert null values"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private e()Lcom/zui/launcher/util/IntArray;
    .locals 7

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->createDbIfNotExists()V

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    :try_start_0
    new-instance v6, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v6, p0}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "itemType = 2 AND _id NOT IN (SELECT container FROM favorites)"

    const-string v1, "favorites"

    const-string v2, "_id"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/zui/launcher/provider/LauncherDbUtils;->queryIntArray(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "favorites"

    const-string v2, "_id"

    invoke-static {v2, v0}, Lcom/zui/launcher/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/zui/launcher/util/IntArray;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v6}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v6}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherProvider"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Lcom/zui/launcher/util/IntArray;

    invoke-direct {p0}, Lcom/zui/launcher/util/IntArray;-><init>()V

    return-object p0
.end method

.method private f()Lcom/zui/launcher/util/IntArray;
    .locals 7

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->createDbIfNotExists()V

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    :try_start_0
    new-instance v6, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v6, p0}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "container >= 0  AND container NOT IN (SELECT _id FROM favorites where itemType = 2)"

    const-string v1, "favorites"

    const-string v2, "_id"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/zui/launcher/provider/LauncherDbUtils;->queryIntArray(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "favorites"

    const-string v2, "_id"

    invoke-static {v2, v0}, Lcom/zui/launcher/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/zui/launcher/util/IntArray;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v6}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v6}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherProvider"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Lcom/zui/launcher/util/IntArray;

    invoke-direct {p0}, Lcom/zui/launcher/util/IntArray;-><init>()V

    return-object p0
.end method

.method private g(Landroid/appwidget/AppWidgetHost;)Lcom/zui/launcher/DefaultLayoutParser;
    .locals 8

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/zui/launcher/InvariantDeviceProfile;->defaultLayoutId:I

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/compat/UserManagerCompat;->isDemoUser()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->b:I

    if-eqz v0, :cond_0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    new-instance v0, Lcom/zui/launcher/DefaultLayoutParser;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/zui/launcher/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "EMPTY_DATABASE_CREATED"

    return-object p0

    :cond_0
    const-string p0, "EMPTY_DATABASE_CREATED_2LAYER"

    return-object p0
.end method

.method static varargs i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    long-to-int p0, p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: could not query max id"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private j()Z
    .locals 9

    const-string v0, "testBackup"

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->createDbIfNotExists()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v4, Lcom/zui/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/zui/launcher/LauncherProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=========>restoreDb======failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    move p0, v1

    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=========>restoreDb===itemCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method

.method private k(Landroid/content/ContentValues;)Z
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->generateNewItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "itemType"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-string v0, "appWidgetId"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    const-string v2, "appWidgetProvider"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getAppWidgetHostId(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v4, p0}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->newLauncherWidgetHost(I)Landroid/appwidget/AppWidgetHost;

    move-result-object p0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1, v4, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    const-string p1, "LauncherProvider"

    const-string v0, "Failed to initialize external widget"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v3

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic l(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 0

    return-object p0
.end method

.method private declared-synchronized m()V
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EMPTY_DATABASE_CREATED"

    goto :goto_0

    :cond_0
    const-string v1, "EMPTY_DATABASE_CREATED_2LAYER"

    :goto_0
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadDefaultFavoritesIfNecessary ------  createEmptyDb:  key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    const-string v0, "LauncherProvider"

    const-string v4, "loading default workspace"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    iget-object v5, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/Utilities;->getAppWidgetHostId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->newLauncherWidgetHost(I)Landroid/appwidget/AppWidgetHost;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v4}, Lcom/zui/launcher/LauncherProvider;->c(Landroid/appwidget/AppWidgetHost;)Lcom/zui/launcher/AutoInstallsLayout;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-static {v0, v4, v5}, Lcom/zui/launcher/AutoInstallsLayout;->c(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;)Lcom/zui/launcher/AutoInstallsLayout;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/zui/launcher/BackupTools;->getInstance()Lcom/zui/launcher/BackupTools;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zui/launcher/BackupTools;->restoreFromSystemDir(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_2

    const-string v0, "LauncherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadDefaultFavoritesIfNecessary ------ restoreFromSystemDir failed:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/zui/launcher/LauncherProvider;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    if-nez v0, :cond_3

    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/zui/launcher/Partner;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/zui/launcher/Partner;->hasDefaultLayout()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/zui/launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v6, "partner_default_layout"

    const-string v7, "xml"

    invoke-virtual {v5}, Lcom/zui/launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v6, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_3

    new-instance v0, Lcom/zui/launcher/DefaultLayoutParser;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v9, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    move-object v6, v0

    move-object v8, v4

    invoke-direct/range {v6 .. v11}, Lcom/zui/launcher/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    if-nez v0, :cond_5

    invoke-direct {p0, v4}, Lcom/zui/launcher/LauncherProvider;->g(Landroid/appwidget/AppWidgetHost;)Lcom/zui/launcher/DefaultLayoutParser;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    iget-object v5, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->t(Landroid/database/sqlite/SQLiteDatabase;Lcom/zui/launcher/AutoInstallsLayout;)I

    move-result v0

    if-gtz v0, :cond_6

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    iget-object v2, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    iget-object v2, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {p0, v4}, Lcom/zui/launcher/LauncherProvider;->g(Landroid/appwidget/AppWidgetHost;)Lcom/zui/launcher/DefaultLayoutParser;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->t(Landroid/database/sqlite/SQLiteDatabase;Lcom/zui/launcher/AutoInstallsLayout;)I

    :cond_6
    invoke-direct {p0, v1}, Lcom/zui/launcher/LauncherProvider;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private n()V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->forceReload()V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->createDbIfNotExists()V

    new-instance v0, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;

    iget-object v1, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Landroid/content/ContentProviderResult;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentProviderOperation;

    invoke-virtual {v6, p0, v2, v4}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation;->isInsert()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation;->isDelete()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    aget-object v6, v2, v4

    iget-object v6, v6, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    if-eqz v6, :cond_1

    aget-object v6, v2, v4

    iget-object v6, v6, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    invoke-virtual {v0}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->commit()V

    invoke-direct {p0}, Lcom/zui/launcher/LauncherProvider;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 9

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->createDbIfNotExists()V

    new-instance v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    new-instance v1, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v1, p1}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p2, v4

    invoke-static {v5}, Lcom/zui/launcher/LauncherProvider;->a(Landroid/content/ContentValues;)V

    iget-object v5, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    iget-object v6, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v8, p2, v4

    invoke-static {v5, p1, v6, v7, v8}, Lcom/zui/launcher/LauncherProvider;->d(Lcom/zui/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v5, :cond_0

    invoke-virtual {v1}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->notifyListeners()V

    invoke-direct {p0}, Lcom/zui/launcher/LauncherProvider;->n()V

    array-length p0, p2

    return p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v1}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public bulkInsertCategoryInfos(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->createDbIfNotExists()V

    new-instance v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    iget-object v5, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v3

    invoke-static {v4, p1, v5, v6, v7}, Lcom/zui/launcher/LauncherProvider;->d(Lcom/zui/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v4, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    array-length p0, p2

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method public bulkInsertFolderTitles([Landroid/content/ContentValues;)I
    .locals 7

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->createDbIfNotExists()V

    sget-object v0, Lcom/zui/launcher/LauncherSettings$FolderTitleColumns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v1, v0}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :try_start_0
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, v1, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, p1, v3

    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    array-length p0, p1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p1, "SQLiteDiskIOException"

    const-string v1, "  insert database error "

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :goto_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public bulkUpdate([Landroid/net/Uri;[Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->createDbIfNotExists()V

    iget-object v0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v1, v0}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    new-instance v5, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    aget-object v6, p1, v3

    invoke-direct {v5, v6, p3, p4}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    aget-object v6, p2, v3

    invoke-static {v6}, Lcom/zui/launcher/LauncherProvider;->a(Landroid/content/ContentValues;)V

    iget-object v6, v5, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    aget-object v7, p2, v3

    iget-object v8, v5, Lcom/zui/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v5, Lcom/zui/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v0, v6, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->notifyListeners()V

    invoke-direct {p0}, Lcom/zui/launcher/LauncherProvider;->n()V

    :cond_1
    return v4

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->createDbIfNotExists()V

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "create_empty_db"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x5

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "query_deepshortcut_from_other_db"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0x15

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "new_db_transaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "clear_all_empty_db_flag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0x14

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "close_db"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0xf

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "refresh_backup_table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0x9

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "delete_no_container_items"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0x16

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "get_empty_db_flag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "generate_new_history_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0xb

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "load_default_favorites"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x6

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "delete_item_from_the_other_db"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0x12

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "bulk_insert_category_infos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0x10

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "generate_new_category_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "execute_sql"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0x11

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "generate_new_download_app_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0xd

    goto :goto_0

    :sswitch_f
    const-string v0, "clear_empty_db_flag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v2

    goto :goto_0

    :sswitch_10
    const-string v0, "generate_new_screen_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x4

    goto :goto_0

    :sswitch_11
    const-string v0, "generate_new_item_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x3

    goto :goto_0

    :sswitch_12
    const-string v0, "restore_db"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0xe

    goto :goto_0

    :sswitch_13
    const-string v0, "bulk_update_items"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0x17

    goto :goto_0

    :sswitch_14
    const-string v0, "remove_ghost_widgets"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x7

    goto :goto_0

    :sswitch_15
    const-string v0, "generate_new_cache_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0xa

    goto :goto_0

    :sswitch_16
    const-string v0, "close_all_db"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0x13

    goto :goto_0

    :sswitch_17
    const-string v0, "delete_empty_folders"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    :cond_1
    :goto_0
    const-string p1, "value"

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    const-string v2, "value1"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, [Landroid/content/ContentValues;

    invoke-virtual {p0, v0, p3, v1, v1}, Lcom/zui/launcher/LauncherProvider;->bulkUpdate([Landroid/net/Uri;[Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    :pswitch_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/zui/launcher/LauncherProvider;->f()Lcom/zui/launcher/util/IntArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/util/IntArray;->toArray()[I

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p2

    :pswitch_2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->queryDeepShortcutsFromOtherDb()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p2

    :pswitch_3
    const-string p1, "EMPTY_DATABASE_CREATED"

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherProvider;->b(Ljava/lang/String;)V

    const-string p1, "EMPTY_DATABASE_CREATED_2LAYER"

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherProvider;->b(Ljava/lang/String;)V

    return-object v1

    :pswitch_4
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->closeAllDb()V

    return-object v1

    :pswitch_5
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/zui/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p3, v1}, Lcom/zui/launcher/LauncherProvider;->deleteFromOtherDb(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :cond_2
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p2

    :pswitch_6
    if-eqz p3, :cond_3

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherProvider;->executeSql(Ljava/lang/String;)V

    :cond_3
    return-object v1

    :pswitch_7
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_4

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, [Landroid/content/ContentValues;

    :try_start_0
    sget-object v0, Lcom/zui/launcher/LauncherSettings$CategoryInfos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p3}, Lcom/zui/launcher/LauncherProvider;->bulkInsertCategoryInfos(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p3, "-----bulkInsertCategoryInfo failed. "

    invoke-static {p3, p0}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p2

    :pswitch_8
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->closeDb()V

    return-object v1

    :pswitch_9
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->restoreDb()Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p3, :cond_5

    invoke-direct {p0}, Lcom/zui/launcher/LauncherProvider;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherProvider;->b(Ljava/lang/String;)V

    :cond_5
    return-object p2

    :pswitch_a
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->generateNewDownloadAppId()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p2

    :pswitch_b
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->generateNewCategoryId()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p2

    :pswitch_c
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->generateNewHistoryId()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p2

    :pswitch_d
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->generateNewCacheId()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p2

    :pswitch_e
    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "favorites_bakup"

    invoke-static {p1, p2}, Lcom/zui/launcher/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->a(Lcom/zui/launcher/LauncherProvider$DatabaseHelper;Z)Z

    return-object v1

    :pswitch_f
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    new-instance p3, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/zui/launcher/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p2

    :pswitch_10
    iget-object p1, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->removeGhostWidgets(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-object v1

    :pswitch_11
    invoke-direct {p0}, Lcom/zui/launcher/LauncherProvider;->m()V

    return-object v1

    :pswitch_12
    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v1

    :pswitch_13
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->generateNewScreenId()I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p2

    :pswitch_14
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->generateNewItemId()I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p2

    :pswitch_15
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/zui/launcher/LauncherProvider;->e()Lcom/zui/launcher/util/IntArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/util/IntArray;->toArray()[I

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p2

    :pswitch_16
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    if-nez p3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p3, p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-direct {p0}, Lcom/zui/launcher/LauncherProvider;->h()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p2

    :pswitch_17
    invoke-direct {p0}, Lcom/zui/launcher/LauncherProvider;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherProvider;->b(Ljava/lang/String;)V

    :goto_3
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x772f6ec1 -> :sswitch_17
        -0x664a7ffd -> :sswitch_16
        -0x5e1f8ebf -> :sswitch_15
        -0x5d566b7c -> :sswitch_14
        -0x58961129 -> :sswitch_13
        -0x51f21431 -> :sswitch_12
        -0x4200a9a2 -> :sswitch_11
        -0x3d63635b -> :sswitch_10
        -0x3c1ca8d7 -> :sswitch_f
        -0x327926d9 -> :sswitch_e
        -0x1b5cddfc -> :sswitch_d
        -0x13d8daed -> :sswitch_c
        -0x12a28a23 -> :sswitch_b
        0x703dd78 -> :sswitch_a
        0x1c6a9ec0 -> :sswitch_9
        0x1e1cdcaf -> :sswitch_8
        0x28c62c72 -> :sswitch_7
        0x2b7c0718 -> :sswitch_6
        0x3ddfcdf5 -> :sswitch_5
        0x41233025 -> :sswitch_4
        0x57333e0b -> :sswitch_3
        0x6046c11c -> :sswitch_2
        0x6c4fd28c -> :sswitch_1
        0x7e36b893 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public closeAllDb()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->removeWidgetHost()V

    iget-object v0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    iput-object v1, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/LauncherProvider;->mTheotherHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    iget-object v0, p0, Lcom/zui/launcher/LauncherProvider;->mTheotherHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->removeWidgetHost()V

    iput-object v1, p0, Lcom/zui/launcher/LauncherProvider;->mTheotherHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    :cond_1
    return-void
.end method

.method public closeDb()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->dropAllTable(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    :cond_0
    return-void
.end method

.method protected declared-synchronized createDbIfNotExists()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    if-nez v0, :cond_1

    new-instance v0, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/LauncherProvider;->b:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/provider/RestoreDbTask;->isPending(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    new-instance v2, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/zui/launcher/provider/RestoreDbTask;->performRestore(Landroid/content/Context;Lcom/zui/launcher/LauncherProvider$DatabaseHelper;Landroid/app/backup/BackupManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/launcher/provider/RestoreDbTask;->setPending(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->createDbIfNotExists()V

    new-instance v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    if-eq p2, p3, :cond_0

    iget-object p2, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const-string p3, "favorites"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    iget-object v1, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->removeGhostWidgets(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_0
    iget-object p2, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object p3, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_1

    iget-object p3, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p3, p1}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->notifyListeners()V

    invoke-direct {p0}, Lcom/zui/launcher/LauncherProvider;->n()V

    :cond_1
    return p2
.end method

.method public deleteFromOtherDb(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->getTheotherDatabase()Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    new-instance v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/LauncherProvider;->mTheotherHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    if-eq p2, p3, :cond_0

    iget-object p2, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const-string p3, "favorites"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/LauncherProvider;->mTheotherHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    iget-object v1, p0, Lcom/zui/launcher/LauncherProvider;->mTheotherHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->removeGhostWidgets(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_0
    iget-object p2, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object p3, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mTheotherHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    return p2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/zui/launcher/LauncherModel;->dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public executeSql(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->createDbIfNotExists()V

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public getTheotherDatabase()Lcom/zui/launcher/LauncherProvider$DatabaseHelper;
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/LauncherProvider;->mTheotherHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherFiles;->getTheOtherDbName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/LauncherProvider;->b:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v0}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zui/launcher/LauncherProvider;->mTheotherHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mTheotherHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    new-instance p0, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vnd.android.cursor.dir/"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vnd.android.cursor.item/"

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->createDbIfNotExists()V

    new-instance v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    invoke-direct {p0, p2}, Lcom/zui/launcher/LauncherProvider;->k(Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {p2}, Lcom/zui/launcher/LauncherProvider;->a(Landroid/content/ContentValues;)V

    iget-object v2, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    iget-object v0, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v2, v1, v0, v3, p2}, Lcom/zui/launcher/LauncherProvider;->d(Lcom/zui/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p2

    if-gez p2, :cond_1

    return-object v3

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->notifyListeners()V

    invoke-direct {p0}, Lcom/zui/launcher/LauncherProvider;->n()V

    return-object p1
.end method

.method protected notifyListeners()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCreate()Z
    .locals 2

    const-string v0, "LauncherProvider"

    const-string v1, "Launcher process started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/launcher/LauncherProvider;->a:Lcom/zui/launcher/LauncherProvider$b;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherProvider;->b:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/MainProcessInitializer;->initialize(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->createDbIfNotExists()V

    new-instance v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    iget-object p3, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v4, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object p2
.end method

.method public queryDeepShortcutsFromOtherDb()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/zui/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->getTheotherDatabase()Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    new-instance v2, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    const-string v3, " itemType= 9"

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mTheotherHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string p0, "intent"

    const-string v1, "profileId"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object v7

    :try_start_0
    iget-object v6, v2, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v8, v2, Lcom/zui/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :goto_2
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0
.end method

.method public restoreDb()Z
    .locals 7

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_1
    const-string v1, "testBackup"

    if-nez v0, :cond_2

    const-string p0, "=========>restoreDb====failed:  context is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    new-instance v2, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    iget-object v3, p0, Lcom/zui/launcher/LauncherProvider;->b:Landroid/os/Handler;

    invoke-direct {v2, v0, v3}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=========>restoreDb======version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " DB_VERSION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-ne v2, v4, :cond_3

    invoke-direct {p0}, Lcom/zui/launcher/LauncherProvider;->j()Z

    move-result v1

    goto :goto_4

    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-nez v2, :cond_4

    :try_start_0
    iget-object v2, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2, v0}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception v2

    move-object v4, v2

    move v2, v3

    goto :goto_3

    :cond_4
    if-le v2, v4, :cond_5

    iget-object v5, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5, v0, v2, v4}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5, v0, v2, v4}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    invoke-direct {p0}, Lcom/zui/launcher/LauncherProvider;->j()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v1, v2

    goto :goto_4

    :catch_1
    move-exception v4

    :goto_3
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=========>restoreDb====failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_4
    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0, v0, v3}, Lcom/zui/launcher/LauncherProvider$DatabaseHelper;->initIds(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return v1

    :goto_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method public setLauncherProviderChangeListener(Lcom/zui/launcher/LauncherProviderChangeListener;)V
    .locals 0

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider;->a:Lcom/zui/launcher/LauncherProvider$b;

    invoke-static {p0, p1}, Lcom/zui/launcher/LauncherProvider$b;->a(Lcom/zui/launcher/LauncherProvider$b;Lcom/zui/launcher/LauncherProviderChangeListener;)Lcom/zui/launcher/LauncherProviderChangeListener;

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->createDbIfNotExists()V

    new-instance v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p2}, Lcom/zui/launcher/LauncherProvider;->a(Landroid/content/ContentValues;)V

    iget-object p1, p0, Lcom/zui/launcher/LauncherProvider;->mOpenHelper:Lcom/zui/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object p3, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object p4, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherProvider;->notifyListeners()V

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/LauncherProvider;->n()V

    return p1
.end method
