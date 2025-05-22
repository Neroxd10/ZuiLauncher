.class public final Lcom/zui/launcher/LauncherSettings$FolderHistory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherSettings$BaseLauncherColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FolderHistory"
.end annotation


# static fields
.field public static final CONTAINER:Ljava/lang/String; = "container"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ICON_INDEX:Ljava/lang/String; = "iconIndex"

.field public static final ICON_KEY:Ljava/lang/String; = "iconKey"

.field public static final TABLE_NAME:Ljava/lang/String; = "folderhistory"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.zui.launcher.settings/folderhistory"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/LauncherSettings$FolderHistory;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
