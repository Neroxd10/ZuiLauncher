.class public final Lcom/lenovo/cdnsdk/b/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Ljava/io/File;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application/octet-stream"

    iput-object v0, p0, Lcom/lenovo/cdnsdk/b/b;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/cdnsdk/b/b;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/lenovo/cdnsdk/b/b;->a:Ljava/io/File;

    return-void
.end method
