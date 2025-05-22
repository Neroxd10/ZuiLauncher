.class final Lcom/lenovo/cdnsdk/a/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/cdnsdk/a/d;->a(Ljava/lang/String;Lcom/lenovo/cdnsdk/listener/CdnListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/lenovo/cdnsdk/listener/CdnListener;

.field final synthetic c:Lcom/lenovo/cdnsdk/a/d;


# direct methods
.method constructor <init>(Lcom/lenovo/cdnsdk/a/d;Ljava/lang/String;Lcom/lenovo/cdnsdk/listener/CdnListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/cdnsdk/a/d$a;->c:Lcom/lenovo/cdnsdk/a/d;

    iput-object p2, p0, Lcom/lenovo/cdnsdk/a/d$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/cdnsdk/a/d$a;->b:Lcom/lenovo/cdnsdk/listener/CdnListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/lenovo/cdnsdk/a/d$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/cdnsdk/a/d$a;->c:Lcom/lenovo/cdnsdk/a/d;

    iget-object p0, p0, Lcom/lenovo/cdnsdk/a/d$a;->b:Lcom/lenovo/cdnsdk/listener/CdnListener;

    invoke-static {v0, p0}, Lcom/lenovo/cdnsdk/a/d;->a(Lcom/lenovo/cdnsdk/a/d;Lcom/lenovo/cdnsdk/listener/CdnListener;)V

    const-string p0, "click, impression, feedback success"

    invoke-static {p0}, Lcom/lenovo/cdnsdk/b/e;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/lenovo/cdnsdk/a/d$a;->b:Lcom/lenovo/cdnsdk/listener/CdnListener;

    invoke-static {p0}, Lcom/lenovo/cdnsdk/a/d;->b(Lcom/lenovo/cdnsdk/listener/CdnListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
