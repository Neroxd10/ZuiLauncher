.class Lcom/zui/launcher/AppStoreHelperProvider$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/AppStoreHelperProvider;->loadData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/AppStoreHelperProvider$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/zui/launcher/AppStoreHelperProvider$b;->b:Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/AppStoreHelperProvider;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/AppStoreHelperProvider$b;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/AppStoreHelperProvider$b;->b:Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
