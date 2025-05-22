.class Lcom/zui/fss/file/q;
.super Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;
.source ""


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/fss/file/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/fss/file/q;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/fss/file/q;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/zui/fss/file/q;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/zui/fss/file/q;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;
    .locals 8

    const-string v0, "Fss"

    const-string v1, "getFederationToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    iget-object v3, p0, Lcom/zui/fss/file/q;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/zui/fss/file/q;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/zui/fss/file/q;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/fss/file/q;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/fss/file/a;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method
