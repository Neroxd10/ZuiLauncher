.class public final Lcom/zui/launcher/LauncherSettings$Settings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTRA_VALUE:Ljava/lang/String; = "value"

.field public static final EXTRA_VALUE_1:Ljava/lang/String; = "value1"

.field public static final METHOD_BULK_INSERT_CATEGORY_INFOS:Ljava/lang/String; = "bulk_insert_category_infos"

.field public static final METHOD_BULK_UPDATE_ITEMS:Ljava/lang/String; = "bulk_update_items"

.field public static final METHOD_CLEAR_ALL_EMPTY_DB_FLAG:Ljava/lang/String; = "clear_all_empty_db_flag"

.field public static final METHOD_CLEAR_EMPTY_DB_FLAG:Ljava/lang/String; = "clear_empty_db_flag"

.field public static final METHOD_CLOSE_ALL_DB:Ljava/lang/String; = "close_all_db"

.field public static final METHOD_CLOSE_DB:Ljava/lang/String; = "close_db"

.field public static final METHOD_CREATE_EMPTY_DB:Ljava/lang/String; = "create_empty_db"

.field public static final METHOD_DELETE_EMPTY_FOLDERS:Ljava/lang/String; = "delete_empty_folders"

.field public static final METHOD_DELETE_NO_CONTAINER_ITEMS:Ljava/lang/String; = "delete_no_container_items"

.field public static final METHOD_DELETE_THE_OTHER_DB:Ljava/lang/String; = "delete_item_from_the_other_db"

.field public static final METHOD_EXECUTE_SQL:Ljava/lang/String; = "execute_sql"

.field public static final METHOD_LOAD_DEFAULT_FAVORITES:Ljava/lang/String; = "load_default_favorites"

.field public static final METHOD_NEW_CACHE_ID:Ljava/lang/String; = "generate_new_cache_id"

.field public static final METHOD_NEW_CATEGORY_ID:Ljava/lang/String; = "generate_new_category_id"

.field public static final METHOD_NEW_DOWNLOAD_APP_ID:Ljava/lang/String; = "generate_new_download_app_id"

.field public static final METHOD_NEW_FOLDER_HISTORY_ID:Ljava/lang/String; = "generate_new_history_id"

.field public static final METHOD_NEW_ITEM_ID:Ljava/lang/String; = "generate_new_item_id"

.field public static final METHOD_NEW_SCREEN_ID:Ljava/lang/String; = "generate_new_screen_id"

.field public static final METHOD_NEW_TRANSACTION:Ljava/lang/String; = "new_db_transaction"

.field public static final METHOD_NEW_USE_TIME_ID:Ljava/lang/String; = "generate_new_use_time_id"

.field public static final METHOD_QUERY_DEEPSHORTCUT_FROM_OTHER_DB:Ljava/lang/String; = "query_deepshortcut_from_other_db"

.field public static final METHOD_REFRESH_BACKUP_TABLE:Ljava/lang/String; = "refresh_backup_table"

.field public static final METHOD_REMOVE_GHOST_WIDGETS:Ljava/lang/String; = "remove_ghost_widgets"

.field public static final METHOD_RESTORE_LAUNCHER_DB:Ljava/lang/String; = "restore_db"

.field public static final METHOD_WAS_EMPTY_DB_CREATED:Ljava/lang/String; = "get_empty_db_flag"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.zui.launcher.settings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/zui/launcher/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static call(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/zui/launcher/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
