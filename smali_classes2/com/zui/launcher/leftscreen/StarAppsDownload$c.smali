.class Lcom/zui/launcher/leftscreen/StarAppsDownload$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/leftscreen/StarAppsDownload;->r(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/zui/launcher/leftscreen/StarAppsDownload;


# direct methods
.method constructor <init>(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$c;->b:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    iput-object p2, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$c;->b:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    invoke-static {p1}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->b(Lcom/zui/launcher/leftscreen/StarAppsDownload;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$c;->b:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    invoke-static {p1}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->b(Lcom/zui/launcher/leftscreen/StarAppsDownload;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$c;->b:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    iget-object p2, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->d(Lcom/zui/launcher/leftscreen/StarAppsDownload;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$c;->b:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    invoke-static {v1}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->e(Lcom/zui/launcher/leftscreen/StarAppsDownload;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$c;->b:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    invoke-static {p0}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->f(Lcom/zui/launcher/leftscreen/StarAppsDownload;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
