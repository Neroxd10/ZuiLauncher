.class Lcom/zui/launcher/AppStoreHelperProvider$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/AppStoreHelperProvider;->deleteItemFromDatabase(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/AppStoreHelperProvider$e;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/zui/launcher/AppStoreHelperProvider$e;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/zui/launcher/AppStoreHelperProvider$e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/AppStoreHelperProvider$e;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/launcher/AppStoreHelperProvider$e;->b:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/launcher/AppStoreHelperProvider$e;->c:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "packageName=?"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/zui/launcher/AppStoreHelperProvider;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/AppStoreHelperProvider$e;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
