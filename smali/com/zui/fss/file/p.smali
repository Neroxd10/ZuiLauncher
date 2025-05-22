.class Lcom/zui/fss/file/p;
.super Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;
.source ""


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/zui/fss/file/a;


# direct methods
.method constructor <init>(Lcom/zui/fss/file/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/fss/file/p;->b:Lcom/zui/fss/file/a;

    iput-object p2, p0, Lcom/zui/fss/file/p;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public signContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zui/fss/file/p;->b:Lcom/zui/fss/file/a;

    invoke-static {v0}, Lcom/zui/fss/file/a;->j(Lcom/zui/fss/file/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/fss/file/FssPermission;->a(Landroid/content/Context;)Lcom/zui/fss/file/FssPermission;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/fss/file/p;->a:Ljava/lang/String;

    new-instance v2, Lcom/zui/fss/file/o;

    invoke-direct {v2, p0}, Lcom/zui/fss/file/o;-><init>(Lcom/zui/fss/file/p;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/zui/fss/file/FssPermission;->a(Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/file/FssPermission$a;)Lcom/android/volley/Request;

    :goto_0
    iget-object p1, p0, Lcom/zui/fss/file/p;->b:Lcom/zui/fss/file/a;

    invoke-static {p1}, Lcom/zui/fss/file/a;->g(Lcom/zui/fss/file/a;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/fss/file/p;->b:Lcom/zui/fss/file/a;

    invoke-static {p1}, Lcom/zui/fss/file/a;->g(Lcom/zui/fss/file/a;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Fss"

    const-string v1, "set signature to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/fss/file/p;->b:Lcom/zui/fss/file/a;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zui/fss/file/a;->h(Lcom/zui/fss/file/a;Ljava/lang/String;)Ljava/lang/String;

    return-object p1
.end method
