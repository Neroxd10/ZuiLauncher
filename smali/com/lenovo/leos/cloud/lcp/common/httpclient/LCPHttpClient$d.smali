.class final Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$d;->a:Ljava/lang/String;

    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$d;->b:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$d;)Z
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$d;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$d;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$d;->a:Ljava/lang/String;

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$d;->b:I

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$d;->b:I

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$d;->a:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
