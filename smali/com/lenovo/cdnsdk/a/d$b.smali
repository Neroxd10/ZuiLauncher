.class final Lcom/lenovo/cdnsdk/a/d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/cdnsdk/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/cdnsdk/listener/CdnListener;


# direct methods
.method constructor <init>(Lcom/lenovo/cdnsdk/a/d;Lcom/lenovo/cdnsdk/listener/CdnListener;)V
    .locals 0

    iput-object p2, p0, Lcom/lenovo/cdnsdk/a/d$b;->a:Lcom/lenovo/cdnsdk/listener/CdnListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/lenovo/cdnsdk/a/d$b;->a:Lcom/lenovo/cdnsdk/listener/CdnListener;

    const-string v0, "Success"

    invoke-interface {p0, v0}, Lcom/lenovo/cdnsdk/listener/CdnListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
