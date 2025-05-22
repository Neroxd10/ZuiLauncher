.class Lcom/zui/launcher/DownloadHD$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/DownloadHD$a;->onFailue(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/DownloadHD$a;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DownloadHD$a;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DownloadHD$a$a;->a:Lcom/zui/launcher/DownloadHD$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/DownloadHD$a$a;->a:Lcom/zui/launcher/DownloadHD$a;

    iget-object v0, v0, Lcom/zui/launcher/DownloadHD$a;->d:Lcom/zui/launcher/DownloadHD;

    invoke-static {v0}, Lcom/zui/launcher/DownloadHD;->c(Lcom/zui/launcher/DownloadHD;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/DownloadHD$a$a;->a:Lcom/zui/launcher/DownloadHD$a;

    iget-object v1, v1, Lcom/zui/launcher/DownloadHD$a;->d:Lcom/zui/launcher/DownloadHD;

    invoke-static {v1}, Lcom/zui/launcher/DownloadHD;->c(Lcom/zui/launcher/DownloadHD;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12033c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/DownloadHD$a$a;->a:Lcom/zui/launcher/DownloadHD$a;

    iget-object p0, p0, Lcom/zui/launcher/DownloadHD$a;->c:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
