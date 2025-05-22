.class Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->c()[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$b;->a:Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$b;->a:Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->a(Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
