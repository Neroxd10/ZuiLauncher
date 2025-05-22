.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$FaultUri;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaultUri"
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$FaultUri;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/net/URI;)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$FaultUri;->d(Ljava/net/URI;)V

    return-void
.end method

.method static synthetic b([Ljava/net/URI;)Z
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$FaultUri;->e([Ljava/net/URI;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Ljava/net/URI;)Z
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$FaultUri;->f(Ljava/net/URI;)Z

    move-result p0

    return p0
.end method

.method private static d(Ljava/net/URI;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$FaultUri;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$FaultUri;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static e([Ljava/net/URI;)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$FaultUri;->a:Ljava/util/List;

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static f(Ljava/net/URI;)Z
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$FaultUri;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
