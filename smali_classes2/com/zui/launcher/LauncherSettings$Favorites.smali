.class public final Lcom/zui/launcher/LauncherSettings$Favorites;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Favorites"
.end annotation


# static fields
.field public static final APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final APPWIDGET_PROVIDER:Ljava/lang/String; = "appWidgetProvider"

.field public static final BACKUP_TABLE_NAME:Ljava/lang/String; = "favorites_bakup"

.field public static final CELLX:Ljava/lang/String; = "cellX"

.field public static final CELLY:Ljava/lang/String; = "cellY"

.field public static final CONFIGABLE_WIDGET:Ljava/lang/String; = "needConfig"

.field public static final CONTAINER:Ljava/lang/String; = "container"

.field public static final CONTAINER_ALL_APPS:I = -0x68

.field public static final CONTAINER_DESKTOP:I = -0x64

.field public static final CONTAINER_HOTSEAT:I = -0x65

.field public static final CONTAINER_HOTSEAT_PREDICTION:I = -0x67

.field public static final CONTAINER_PREDICTION:I = -0x66

.field public static final CONTAINER_SEARCH_RESULTS:I = -0x6a

.field public static final CONTAINER_SETTINGS:I = -0x6c

.field public static final CONTAINER_SHORTCUTS:I = -0x6b

.field public static final CONTAINER_TASKSWITCHER:I = -0x6d

.field public static final CONTAINER_WIDGETS_PREDICTION:I = -0x6f

.field public static final CONTAINER_WIDGETS_TRAY:I = -0x69

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

.field public static final DISPLAY_MODE:Ljava/lang/String; = "displayMode"

.field public static final HAS_ACTIVE_ICON:Ljava/lang/String; = "hasActiveIcon"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final ICON_PACKAGE:Ljava/lang/String; = "iconPackage"

.field public static final ICON_RESOURCE:Ljava/lang/String; = "iconResource"

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final IS_SHORTCUT:Ljava/lang/String; = "isShortcut"

.field public static final ITEM_TYPE:Ljava/lang/String; = "itemType"

.field public static final ITEM_TYPE_APPLICATION:I = 0x0

.field public static final ITEM_TYPE_APPWIDGET:I = 0x4

.field public static final ITEM_TYPE_CUSTOM_APPWIDGET:I = 0xa

.field public static final ITEM_TYPE_DEEP_SHORTCUT:I = 0x9

.field public static final ITEM_TYPE_FOLDER:I = 0x2

.field public static final ITEM_TYPE_LAYOUT:I = 0x5

.field public static final ITEM_TYPE_LEOSWIDGET:I = 0x7

.field public static final ITEM_TYPE_NON_ACTIONABLE:I = -0x1

.field public static final ITEM_TYPE_OTHER_WIDGET:I = 0x3e7

.field public static final ITEM_TYPE_RECOMMEND_SHORTCUT:I = 0x8

.field public static final ITEM_TYPE_SHORTCUT:I = 0x1

.field public static final ITEM_TYPE_TASK:I = 0x7

.field public static final MODIFIED:Ljava/lang/String; = "modified"

.field public static final OPTIONS:Ljava/lang/String; = "options"

.field public static final PROFILE_ID:Ljava/lang/String; = "profileId"

.field public static final RANK:Ljava/lang/String; = "rank"

.field public static final RESTORED:Ljava/lang/String; = "restored"

.field public static final SCREEN:Ljava/lang/String; = "screen"

.field public static final SPANX:Ljava/lang/String; = "spanX"

.field public static final SPANY:Ljava/lang/String; = "spanY"

.field public static final SUB_ITEM_TYPE:Ljava/lang/String; = "subItemType"

.field public static final SUB_ITEM_TYPE_APP_WIDGET:I = 0x2

.field public static final SUB_ITEM_TYPE_APP_WIDGET_INSTALL:I = 0x4

.field public static final SUB_ITEM_TYPE_BASE:I = 0x0

.field public static final SUB_ITEM_TYPE_DISABLED_APP:I = 0x9

.field public static final SUB_ITEM_TYPE_GAME:I = 0x5

.field public static final SUB_ITEM_TYPE_NORMAL_APP:I = 0x1

.field public static final SUB_ITEM_TYPE_STAR_APP:I = 0x8

.field public static final SUB_ITEM_TYPE_VOICE:I = 0x7

.field public static final TABLE_NAME:Ljava/lang/String; = "favorites"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URI:Ljava/lang/String; = "uri"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.zui.launcher.settings/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.zui.launcher.settings/favorites?modified=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "desktop"

    return-object p0

    :pswitch_1
    const-string p0, "hotseat"

    return-object p0

    :pswitch_2
    const-string p0, "prediction"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x66
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZ)V
    .locals 1

    const-string v0, "favorites"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/zui/launcher/LauncherSettings$Favorites;->addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZLjava/lang/String;)V

    return-void
.end method

.method public static addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZLjava/lang/String;)V
    .locals 2

    if-eqz p3, :cond_0

    const-string p3, " IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,needConfig INTEGER DEFAULT 0,appWidgetProvider TEXT,modified INTEGER NOT NULL DEFAULT 0,hasActiveIcon INTEGER,subItemType INTEGER,profileId INTEGER DEFAULT "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",restored INTEGER NOT NULL DEFAULT 0,rank INTEGER NOT NULL DEFAULT 0,options INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static final b(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "CUSTOMWIDGET"

    return-object p0

    :pswitch_1
    const-string p0, "DEEPSHORTCUT"

    return-object p0

    :pswitch_2
    const-string p0, "RECOMMEND_SHORTCUT"

    return-object p0

    :pswitch_3
    const-string p0, "TASK"

    return-object p0

    :cond_0
    const-string p0, "WIDGET"

    return-object p0

    :cond_1
    const-string p0, "FOLDER"

    return-object p0

    :cond_2
    const-string p0, "SHORTCUT"

    return-object p0

    :cond_3
    const-string p0, "APP"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getContentUri(I)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.zui.launcher.settings/favorites/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
