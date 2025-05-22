.class Lcom/zui/fss/file/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/fss/file/FssPermission$a;


# instance fields
.field final synthetic a:Lcom/zui/fss/file/g;


# direct methods
.method constructor <init>(Lcom/zui/fss/file/g;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/fss/file/e;->a:Lcom/zui/fss/file/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/zui/fss/api/FileMeta;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/zui/fss/file/e;->a:Lcom/zui/fss/file/g;

    iget-object v0, v0, Lcom/zui/fss/file/g;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " upload feedback onResult "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Fss"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/fss/file/e;->a:Lcom/zui/fss/file/g;

    iget-object p2, p1, Lcom/zui/fss/file/g;->c:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/zui/fss/file/g;->e:Lcom/zui/fss/file/a;

    iget-object p1, p1, Lcom/zui/fss/file/g;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/zui/fss/file/a;->l(Lcom/zui/fss/file/a;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/fss/file/e;->a:Lcom/zui/fss/file/g;

    iget-object p2, p1, Lcom/zui/fss/file/g;->c:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    iget-object p1, p1, Lcom/zui/fss/file/g;->d:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/zui/fss/api/IFssApi$ProgressCallback;->onSuccess(Ljava/lang/String;Lcom/zui/fss/api/FileMeta;)V

    :cond_0
    iget-object p0, p0, Lcom/zui/fss/file/e;->a:Lcom/zui/fss/file/g;

    iget-object p1, p0, Lcom/zui/fss/file/g;->e:Lcom/zui/fss/file/a;

    iget-object p0, p0, Lcom/zui/fss/file/g;->b:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/zui/fss/file/a;->m(Lcom/zui/fss/file/a;Ljava/lang/String;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/zui/fss/file/e;->a:Lcom/zui/fss/file/g;

    iget-object v0, v0, Lcom/zui/fss/file/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " upload feedback onError "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Fss"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/fss/file/e;->a:Lcom/zui/fss/file/g;

    iget-object p2, p1, Lcom/zui/fss/file/g;->c:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/zui/fss/file/g;->e:Lcom/zui/fss/file/a;

    iget-object p1, p1, Lcom/zui/fss/file/g;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/zui/fss/file/a;->l(Lcom/zui/fss/file/a;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/fss/file/e;->a:Lcom/zui/fss/file/g;

    iget-object p2, p1, Lcom/zui/fss/file/g;->c:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    iget-object p1, p1, Lcom/zui/fss/file/g;->d:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/zui/fss/api/IFssApi$ProgressCallback;->onSuccess(Ljava/lang/String;Lcom/zui/fss/api/FileMeta;)V

    :cond_0
    iget-object p0, p0, Lcom/zui/fss/file/e;->a:Lcom/zui/fss/file/g;

    iget-object p1, p0, Lcom/zui/fss/file/g;->e:Lcom/zui/fss/file/a;

    iget-object p0, p0, Lcom/zui/fss/file/g;->b:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/zui/fss/file/a;->m(Lcom/zui/fss/file/a;Ljava/lang/String;)V

    return-void
.end method
