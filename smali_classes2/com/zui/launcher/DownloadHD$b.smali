.class Lcom/zui/launcher/DownloadHD$b;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/DownloadHD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/DownloadHD;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DownloadHD;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DownloadHD$b;->a:Lcom/zui/launcher/DownloadHD;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_1

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/zui/launcher/DownloadHD$b;->a:Lcom/zui/launcher/DownloadHD;

    invoke-static {v0}, Lcom/zui/launcher/DownloadHD;->e(Lcom/zui/launcher/DownloadHD;)Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadHD$b;->a:Lcom/zui/launcher/DownloadHD;

    invoke-static {v0}, Lcom/zui/launcher/DownloadHD;->c(Lcom/zui/launcher/DownloadHD;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const p1, 0x7f120408

    goto :goto_0

    :cond_0
    const p1, 0x7f120401

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/DownloadHD$b;->a:Lcom/zui/launcher/DownloadHD;

    invoke-static {v0}, Lcom/zui/launcher/DownloadHD;->c(Lcom/zui/launcher/DownloadHD;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zui/launcher/DownloadHD$b;->a:Lcom/zui/launcher/DownloadHD;

    invoke-static {v3}, Lcom/zui/launcher/DownloadHD;->c(Lcom/zui/launcher/DownloadHD;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1203df

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/zui/launcher/DownloadHD$b;->a:Lcom/zui/launcher/DownloadHD;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/launcher/DownloadHD;->d(Lcom/zui/launcher/DownloadHD;Z)Z

    iget-object p0, p0, Lcom/zui/launcher/DownloadHD$b;->a:Lcom/zui/launcher/DownloadHD;

    const-string p1, "com.xui.launcherhdmarket"

    invoke-virtual {p0, p1}, Lcom/zui/launcher/DownloadHD;->removeFile(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
