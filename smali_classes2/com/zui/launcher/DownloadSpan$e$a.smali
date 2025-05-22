.class Lcom/zui/launcher/DownloadSpan$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/DownloadSpan$e;->isNetworkAvailable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/zui/launcher/DownloadSpan$e;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DownloadSpan$e;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan$e$a;->b:Lcom/zui/launcher/DownloadSpan$e;

    iput-boolean p2, p0, Lcom/zui/launcher/DownloadSpan$e$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launcher/DownloadSpan$e$a;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zui/launcher/DownloadSpan$e$a;->b:Lcom/zui/launcher/DownloadSpan$e;

    iget-object v2, v2, Lcom/zui/launcher/DownloadSpan$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " searchApp <F1><F1><F1><F1><F1><F1><F1><F1><F1><F1>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$e$a;->b:Lcom/zui/launcher/DownloadSpan$e;

    iget-object v0, v0, Lcom/zui/launcher/DownloadSpan$e;->c:Lcom/zui/launcher/DownloadSpan;

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan;->v(Lcom/zui/launcher/DownloadSpan;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120341

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$e$a;->b:Lcom/zui/launcher/DownloadSpan$e;

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$e;->c:Lcom/zui/launcher/DownloadSpan;

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$e;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/zui/launcher/DownloadSpan;->w(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$e$a;->b:Lcom/zui/launcher/DownloadSpan$e;

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$e;->c:Lcom/zui/launcher/DownloadSpan;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan$e;->b:Lcom/zui/launcher/ItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$e;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/zui/launcher/DownloadSpan;->x(Lcom/zui/launcher/DownloadSpan;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
