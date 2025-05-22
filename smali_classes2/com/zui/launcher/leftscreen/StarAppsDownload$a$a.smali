.class Lcom/zui/launcher/leftscreen/StarAppsDownload$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/leftscreen/StarAppsDownload$a;->actionByNetworkInfo(Landroid/net/NetworkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/NetworkInfo;

.field final synthetic b:Lcom/zui/launcher/leftscreen/StarAppsDownload$a;


# direct methods
.method constructor <init>(Lcom/zui/launcher/leftscreen/StarAppsDownload$a;Landroid/net/NetworkInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$a$a;->b:Lcom/zui/launcher/leftscreen/StarAppsDownload$a;

    iput-object p2, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$a$a;->a:Landroid/net/NetworkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$a$a;->b:Lcom/zui/launcher/leftscreen/StarAppsDownload$a;

    iget-object v1, v0, Lcom/zui/launcher/leftscreen/StarAppsDownload$a;->f:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    iget-object v2, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$a$a;->a:Landroid/net/NetworkInfo;

    iget-object v3, v0, Lcom/zui/launcher/leftscreen/StarAppsDownload$a;->b:Landroid/content/Context;

    iget-object v4, v0, Lcom/zui/launcher/leftscreen/StarAppsDownload$a;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/zui/launcher/leftscreen/StarAppsDownload$a;->d:Ljava/lang/String;

    iget-object v6, v0, Lcom/zui/launcher/leftscreen/StarAppsDownload$a;->a:Landroid/view/View;

    iget-object v7, v0, Lcom/zui/launcher/leftscreen/StarAppsDownload$a;->e:Ljava/lang/Runnable;

    invoke-static/range {v1 .. v7}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->a(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/net/NetworkInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
