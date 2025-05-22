.class final Lcom/lenovo/cdnsdk/b/n$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/cdnsdk/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/cdnsdk/b/n;


# direct methods
.method constructor <init>(Lcom/lenovo/cdnsdk/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/cdnsdk/b/n$b;->a:Lcom/lenovo/cdnsdk/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/cdnsdk/b/n$b;->a:Lcom/lenovo/cdnsdk/b/n;

    invoke-static {v0}, Lcom/lenovo/cdnsdk/b/n;->f(Lcom/lenovo/cdnsdk/b/n;)Lcom/lenovo/cdnsdk/b/a;

    move-result-object v0

    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/n$b;->a:Lcom/lenovo/cdnsdk/b/n;

    invoke-static {p0}, Lcom/lenovo/cdnsdk/b/n;->a(Lcom/lenovo/cdnsdk/b/n;)Lcom/lenovo/cdnsdk/b/o;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/lenovo/cdnsdk/b/a;->a(Lcom/lenovo/cdnsdk/b/o;)V

    return-void
.end method
