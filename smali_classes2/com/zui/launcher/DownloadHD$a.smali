.class Lcom/zui/launcher/DownloadHD$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/DownloadHD;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/zui/launcher/DownloadHD;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DownloadHD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DownloadHD$a;->d:Lcom/zui/launcher/DownloadHD;

    iput-object p2, p0, Lcom/zui/launcher/DownloadHD$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/launcher/DownloadHD$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/zui/launcher/DownloadHD$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailue(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/DownloadHD$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " download onFailue \n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher.DownloadSpan"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v0, Lcom/zui/launcher/DownloadHD$a$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/DownloadHD$a$a;-><init>(Lcom/zui/launcher/DownloadHD$a;)V

    invoke-virtual {p1, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/zui/launcher/DownloadHD$a;->d:Lcom/zui/launcher/DownloadHD;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/DownloadHD;->d(Lcom/zui/launcher/DownloadHD;Z)Z

    return-void
.end method

.method public onFinish()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " download onFinish ~~~ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/DownloadHD$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download onSucess filepath==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadHD$a;->d:Lcom/zui/launcher/DownloadHD;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/zui/launcher/DownloadHD;->a(Lcom/zui/launcher/DownloadHD;I)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadHD$a;->d:Lcom/zui/launcher/DownloadHD;

    iget-object p0, p0, Lcom/zui/launcher/DownloadHD$a;->a:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Lcom/zui/launcher/DownloadHD;->b(Lcom/zui/launcher/DownloadHD;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdata(JJ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download currentbyts==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";totals==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "percent ======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x64

    mul-long/2addr p1, v1

    div-long/2addr p1, p3

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-lez p2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/DownloadHD$a;->d:Lcom/zui/launcher/DownloadHD;

    invoke-static {p0, p1}, Lcom/zui/launcher/DownloadHD;->a(Lcom/zui/launcher/DownloadHD;I)V

    :cond_0
    return-void
.end method
