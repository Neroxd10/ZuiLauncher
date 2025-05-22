.class Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/impl/FileResult;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;->a:I

    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "data_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "error"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;-><init>(IILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;->b:I

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;->a:I

    return p0
.end method
