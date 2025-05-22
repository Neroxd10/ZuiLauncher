.class Lcom/zui/launcher/networksdk/NetWorkUtil$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/networksdk/NetWorkUtil;->networkReadyAction(Landroid/content/Context;Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkReadyCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkReadyCallBack;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkReadyCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/NetWorkUtil$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/networksdk/NetWorkUtil$a;->b:Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkReadyCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/NetWorkUtil$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/NetWorkUtil;->isNetworkReady(Landroid/content/Context;)Z

    move-result v0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/NetWorkUtil$a;->b:Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkReadyCallBack;

    invoke-interface {p0, v0}, Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkReadyCallBack;->isNetworkAvailable(Z)V

    return-void
.end method
