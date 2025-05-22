.class Lcom/zui/launcher/leftscreen/StarAppsDownload$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/leftscreen/StarAppsDownload;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/zui/launcher/leftscreen/StarAppsDownload;


# direct methods
.method constructor <init>(Lcom/zui/launcher/leftscreen/StarAppsDownload;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;->e:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    iput-object p2, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;->e:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    iget-object v1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->c(Lcom/zui/launcher/leftscreen/StarAppsDownload;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "md5 don\'t match, so download fail."

    invoke-static {p0}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "install apk ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p0}, Lcom/zui/launcher/DownloadSpan;->sendIntentInstallApk(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
