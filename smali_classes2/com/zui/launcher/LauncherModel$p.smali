.class Lcom/zui/launcher/LauncherModel$p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->o(Landroid/content/Context;Lcom/zui/launcher/CacheInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/zui/launcher/CacheInfo;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/zui/launcher/CacheInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel$p;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/zui/launcher/LauncherModel$p;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/zui/launcher/LauncherModel$p;->c:Lcom/zui/launcher/CacheInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$p;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel$p;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v1, v1, Lcom/zui/launcher/model/BgDataModel;->mCacheList:Lcom/zui/launcher/CacheList;

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$p;->c:Lcom/zui/launcher/CacheInfo;

    invoke-virtual {v1, p0}, Lcom/zui/launcher/CacheList;->removeCache(Lcom/zui/launcher/CacheInfo;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
