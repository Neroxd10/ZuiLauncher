.class public Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AES_256_SERVER_SIDE_ENCRYPTION:Ljava/lang/String; = "AES256"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "Cache-Control"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "Content-Disposition"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "Content-Length"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "Content-MD5"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "ETag"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "Expires"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "Last-Modified"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public getObjectType()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "x-oss-object-type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRawExpiresValue()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "Expires"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRawMetadata()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getServerSideEncryption()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "x-oss-server-side-encryption"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUserMetadata()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->a:Ljava/util/Map;

    return-object p0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "Cache-Control"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "Content-Disposition"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentLength(J)V
    .locals 2

    const-wide v0, 0x140000000L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Content-Length"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5185\u5bb9\u957f\u5ea6\u4e0d\u80fd\u8d85\u8fc75G\u5b57\u8282\u3002"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "Content-MD5"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "Content-Type"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Expires"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "Last-Modified"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setServerSideEncryption(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->b:Ljava/util/Map;

    const-string v0, "x-oss-server-side-encryption"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUserMetadata(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
