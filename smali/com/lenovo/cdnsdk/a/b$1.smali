.class public final Lcom/lenovo/cdnsdk/a/b$1;
.super Lcom/lenovo/cdnsdk/b/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/cdnsdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/lenovo/cdnsdk/listener/ContentListener;


# direct methods
.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;Lcom/lenovo/cdnsdk/listener/ContentListener;)V
    .locals 0

    iput-object p3, p0, Lcom/lenovo/cdnsdk/a/b$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/cdnsdk/a/b$1;->c:Lcom/lenovo/cdnsdk/listener/ContentListener;

    invoke-direct {p0, p2}, Lcom/lenovo/cdnsdk/b/a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/lenovo/cdnsdk/b/o;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/lenovo/cdnsdk/b/a;->a(Lcom/lenovo/cdnsdk/b/o;)V

    sget-object v0, Lcom/lenovo/cdnsdk/CdnSdk;->INIT:Lcom/lenovo/cdnsdk/CdnSdk;

    iget-object v0, v0, Lcom/lenovo/cdnsdk/CdnSdk;->app:Landroid/app/Application;

    invoke-static {v0}, Lcom/lenovo/cdnsdk/a/a;->a(Landroid/content/Context;)Lcom/lenovo/cdnsdk/a/a;

    iget-object v0, p0, Lcom/lenovo/cdnsdk/a/b$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/cdnsdk/a/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/cdnsdk/a/a;->a(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pageNum:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/cdnsdk/b/e;->b(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/lenovo/cdnsdk/b/o;->a:Ljava/lang/Object;

    instance-of v2, v1, Lcom/lenovo/cdnsdk/bean/ContenBean;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/lenovo/cdnsdk/bean/ContenBean;

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/lenovo/cdnsdk/bean/ContenBean;->data:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object p1, p0, Lcom/lenovo/cdnsdk/a/b$1;->c:Lcom/lenovo/cdnsdk/listener/ContentListener;

    invoke-virtual {p1, v1}, Lcom/lenovo/cdnsdk/listener/ContentListener;->onSuccess(Lcom/lenovo/cdnsdk/bean/ContenBean;)V

    sget-object p1, Lcom/lenovo/cdnsdk/CdnSdk;->INIT:Lcom/lenovo/cdnsdk/CdnSdk;

    iget-object p1, p1, Lcom/lenovo/cdnsdk/CdnSdk;->app:Landroid/app/Application;

    invoke-static {p1}, Lcom/lenovo/cdnsdk/a/a;->a(Landroid/content/Context;)Lcom/lenovo/cdnsdk/a/a;

    move-result-object p1

    iget-object p0, p0, Lcom/lenovo/cdnsdk/a/b$1;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/lenovo/cdnsdk/a/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/lenovo/cdnsdk/a/a;->a(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/lenovo/cdnsdk/a/b$1;->c:Lcom/lenovo/cdnsdk/listener/ContentListener;

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1}, Lcom/lenovo/cdnsdk/listener/ContentListener;->onError(I)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/lenovo/cdnsdk/a/b$1;->c:Lcom/lenovo/cdnsdk/listener/ContentListener;

    invoke-static {p0, p1}, Lcom/lenovo/cdnsdk/a/b;->a(Lcom/lenovo/cdnsdk/listener/CdnListener;Lcom/lenovo/cdnsdk/b/o;)V

    iget-object p0, p1, Lcom/lenovo/cdnsdk/b/o;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/lenovo/cdnsdk/b/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/lenovo/cdnsdk/b/o;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/lenovo/cdnsdk/b/a;->b(Lcom/lenovo/cdnsdk/b/o;)V

    iget-object p0, p0, Lcom/lenovo/cdnsdk/a/b$1;->c:Lcom/lenovo/cdnsdk/listener/ContentListener;

    invoke-static {p0, p1}, Lcom/lenovo/cdnsdk/a/b;->b(Lcom/lenovo/cdnsdk/listener/CdnListener;Lcom/lenovo/cdnsdk/b/o;)V

    return-void
.end method
