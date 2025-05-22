.class public Lcom/zui/launcher/LauncherSettings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/LauncherSettings$FolderTitleColumns;,
        Lcom/zui/launcher/LauncherSettings$DownloadAppInfos;,
        Lcom/zui/launcher/LauncherSettings$CategoryInfos;,
        Lcom/zui/launcher/LauncherSettings$FolderHistory;,
        Lcom/zui/launcher/LauncherSettings$Cache;,
        Lcom/zui/launcher/LauncherSettings$BaseLauncherColumns;,
        Lcom/zui/launcher/LauncherSettings$Settings;,
        Lcom/zui/launcher/LauncherSettings$Favorites;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateNewCategoryId(Landroid/content/ContentResolver;)J
    .locals 2

    const-string v0, "generate_new_category_id"

    invoke-static {p0, v0}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
