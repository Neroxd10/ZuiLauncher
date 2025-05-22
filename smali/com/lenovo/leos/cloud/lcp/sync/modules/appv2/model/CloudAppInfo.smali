.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo$a;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo$a;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;I)I
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->f:I

    return p1
.end method

.method static synthetic d(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    return-object p1
.end method

.method static synthetic e(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->a:Ljava/util/List;

    return-object p1
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;
    .locals 7

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;-><init>()V

    const-string v1, "pn"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->packageName:Ljava/lang/String;

    const-string v1, "icon"

    invoke-static {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->iconUrl:Ljava/lang/String;

    const-string v1, "an"

    invoke-static {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->name:Ljava/lang/String;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->fromJson(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    const-string v1, "dataurl"

    invoke-static {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->d:Ljava/lang/String;

    const-string v1, "realsize"

    const-wide/16 v3, 0x0

    invoke-static {p0, v1, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->appDataSize:Ljava/lang/Long;

    const-string v1, "datasize"

    invoke-static {p0, v1, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->zipedDataSize:Ljava/lang/Long;

    const-string v1, "pk"

    invoke-static {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->e:Ljava/lang/String;

    const-string v1, "match"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->f:I

    return-object v0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    const-string p0, "MD5"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/ByteArrayUtil;->base16([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public asJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "package_name"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version_code"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getVersionCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "version_name"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "checksum"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getChecksum()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public clearCacheData()V
    .locals 0

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getMd5()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getCloudPKMD5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getDataurl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->c:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getLastVersion()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;
    .locals 11

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->toVersionNumber(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getTime()J

    move-result-wide v4

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->a:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getVersionName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->toVersionNumber(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getMatch()I

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_2

    :cond_0
    cmp-long v9, v2, v7

    if-gez v9, :cond_1

    :goto_1
    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getTime()J

    move-result-wide v1

    move-wide v4, v1

    move-object v1, v6

    move-wide v2, v7

    goto :goto_2

    :cond_1
    if-nez v9, :cond_2

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getTime()J

    move-result-wide v9

    cmp-long v9, v4, v9

    if-gez v9, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    :cond_4
    return-object v1
.end method

.method public getMatch()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->f:I

    return p0
.end method

.method public getPKMD5(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/SignatureUtil;->getAPKPublicKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSize()J
    .locals 2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getSize()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getVersion()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    return-object p0
.end method

.method public getVersionCode()I
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getVersionCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getVersionName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public getVersions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->a:Ljava/util/List;

    return-object p0
.end method

.method public loadIcon(Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p0, "CloudAppInfo"

    const-string p1, "loadIcon deprecated,use NewIconCache.asyncLoad()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCloudPKMD5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setDataurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMatch(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->f:I

    return-void
.end method

.method public setVersion(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudAppInfo [versions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dataurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->appDataSize:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->zipedDataSize:Ljava/lang/Long;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->appStatus:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->a:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
