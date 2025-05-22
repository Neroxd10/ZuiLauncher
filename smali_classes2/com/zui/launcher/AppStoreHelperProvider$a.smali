.class Lcom/zui/launcher/AppStoreHelperProvider$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/AppStoreHelperProvider;->addValue(Landroid/content/Context;Ljava/lang/String;Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Landroid/content/ContentValues;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;


# direct methods
.method constructor <init>(Lcom/zui/launcher/AppStoreHelperProvider;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/AppStoreHelperProvider$a;->a:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/zui/launcher/AppStoreHelperProvider$a;->b:Landroid/net/Uri;

    iput-object p4, p0, Lcom/zui/launcher/AppStoreHelperProvider$a;->c:Landroid/content/ContentValues;

    iput-object p5, p0, Lcom/zui/launcher/AppStoreHelperProvider$a;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/zui/launcher/AppStoreHelperProvider$a;->e:Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/AppStoreHelperProvider$a;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/launcher/AppStoreHelperProvider$a;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/zui/launcher/AppStoreHelperProvider$a;->c:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----------insert-------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStoreHelper"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/launcher/AppStoreHelperProvider;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/AppStoreHelperProvider$a;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/AppStoreHelperProvider$a;->e:Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
