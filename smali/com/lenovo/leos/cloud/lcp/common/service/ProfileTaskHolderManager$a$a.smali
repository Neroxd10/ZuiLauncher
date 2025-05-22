.class Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/RestoreProfileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a$a;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;Ljava/io/InputStream;)V
    .locals 7

    new-instance v6, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->getSize()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;Ljava/lang/String;JZ)V

    new-instance p2, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a$a;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->a(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->getDataValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "LogUtil"

    const-string v1, "ProfileTaskHolderManager callback pasre json exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a$a;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->a(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "appKey"

    invoke-virtual {p2, v0, p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a$a;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->b(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->setMetaInfo(Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a$a;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->setBackupEntiy(Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;)V

    return-void
.end method
