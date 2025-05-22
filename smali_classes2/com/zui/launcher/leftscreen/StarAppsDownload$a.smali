.class Lcom/zui/launcher/leftscreen/StarAppsDownload$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkInfoCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/leftscreen/StarAppsDownload;->checkConnectionBeforeDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/Runnable;

.field final synthetic f:Lcom/zui/launcher/leftscreen/StarAppsDownload;


# direct methods
.method constructor <init>(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/view/View;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$a;->f:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    iput-object p2, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$a;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$a;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$a;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$a;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionByNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$a;->a:Landroid/view/View;

    new-instance v1, Lcom/zui/launcher/leftscreen/StarAppsDownload$a$a;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/leftscreen/StarAppsDownload$a$a;-><init>(Lcom/zui/launcher/leftscreen/StarAppsDownload$a;Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
