.class Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;->onError(Lokhttp3/Request;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e$a;->a:Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e$a;->a:Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;->b:Landroid/content/Context;

    const v0, 0x7f1203ca

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
