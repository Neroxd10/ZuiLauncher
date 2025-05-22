.class Lcom/zui/launcher/AppStoreHelperProvider$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/AppStoreHelperProvider;->d(Landroid/content/Context;Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/zui/launcher/AppStoreHelperProvider;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/AppStoreHelperProvider$d;->a:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/zui/launcher/AppStoreHelperProvider$d;->b:Landroid/net/Uri;

    iput-object p4, p0, Lcom/zui/launcher/AppStoreHelperProvider$d;->c:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "AppStoreHelper"

    const-string v1, "-----------update-------"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/AppStoreHelperProvider$d;->a:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/zui/launcher/AppStoreHelperProvider$d;->b:Landroid/net/Uri;

    iget-object p0, p0, Lcom/zui/launcher/AppStoreHelperProvider$d;->c:Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V

    const-string p0, "---update fail-------"

    invoke-static {v0, p0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
