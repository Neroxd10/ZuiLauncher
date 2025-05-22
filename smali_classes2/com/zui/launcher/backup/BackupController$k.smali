.class Lcom/zui/launcher/backup/BackupController$k;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/backup/BackupController;->doBackup(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/zui/launcher/backup/BackupController;


# direct methods
.method constructor <init>(Lcom/zui/launcher/backup/BackupController;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController$k;->c:Lcom/zui/launcher/backup/BackupController;

    iput-boolean p2, p0, Lcom/zui/launcher/backup/BackupController$k;->a:Z

    iput-object p3, p0, Lcom/zui/launcher/backup/BackupController$k;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6

    iget-boolean p1, p0, Lcom/zui/launcher/backup/BackupController$k;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$k;->c:Lcom/zui/launcher/backup/BackupController;

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController$k;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/zui/launcher/backup/BackupController;->p(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$k;->c:Lcom/zui/launcher/backup/BackupController;

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController$k;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/zui/launcher/backup/BackupController;->f(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V

    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$k;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    invoke-static {}, Lcom/zui/launcher/LauncherModel;->getAllWorkspaceItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v3, v3, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-static {v3}, Lcom/zui/launcher/LauncherSettings$Favorites;->getContentUri(I)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v3, v3, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zui/launcher/backup/BackupController$k;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v4, v4, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v4, v4, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v5, v5, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Lcom/zui/launcher/icons/cache/BaseIconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v3, v3, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-virtual {v3}, Lcom/zui/launcher/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v4, v4, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v4, v4, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/zui/launcher/icons/GraphicsUtils;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    const-string v5, "icon"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "value"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v0, "value1"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController$k;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bulk_update_items"

    invoke-static {v0, v1, p1}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController$k;->c:Lcom/zui/launcher/backup/BackupController;

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController$k;->b:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/zui/launcher/backup/BackupController$k;->a:Z

    invoke-static {p1, v0, p0}, Lcom/zui/launcher/backup/BackupController;->g(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;Z)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/backup/BackupController$k;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
