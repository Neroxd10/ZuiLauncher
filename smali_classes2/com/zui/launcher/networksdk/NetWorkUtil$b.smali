.class Lcom/zui/launcher/networksdk/NetWorkUtil$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/networksdk/NetWorkUtil;->doByNetworkInfo(Landroid/content/Context;Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkInfoCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/net/ConnectivityManager;

.field final synthetic c:Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkInfoCallBack;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkInfoCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/NetWorkUtil$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/networksdk/NetWorkUtil$b;->b:Landroid/net/ConnectivityManager;

    iput-object p3, p0, Lcom/zui/launcher/networksdk/NetWorkUtil$b;->c:Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkInfoCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/networksdk/NetWorkUtil$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/launcher/networksdk/NetWorkUtil$b;->b:Landroid/net/ConnectivityManager;

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/NetWorkUtil;->a(Landroid/content/Context;Landroid/net/ConnectivityManager;)Landroid/net/NetworkInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doByNetworkInfo info ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.NetWorkUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/launcher/networksdk/NetWorkUtil$b;->c:Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkInfoCallBack;

    invoke-interface {p0, v0}, Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkInfoCallBack;->actionByNetworkInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method
