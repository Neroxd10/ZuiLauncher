.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version$VersionComparator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_OK:I = 0x0

.field public static final MATCH_OSVERSION_NO_RIGHT:I = 0x1

.field public static final MATCH_SCREEN_FAIL:I = 0x2

.field public static final VERSION:Ljava/util/regex/Pattern;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Z

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([0-9]+)(\\.[0-9]{1,3}){0,2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->VERSION:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version$a;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version$a;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;
    .locals 7

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;-><init>()V

    const-string v1, "backup"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->c:Z

    :cond_0
    const-string v1, "checksum"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->f:Ljava/lang/String;

    const-string v1, "size"

    const-wide/16 v3, 0x0

    invoke-static {p0, v1, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->d:J

    const-string v1, "time"

    invoke-static {p0, v1, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->b:J

    const-string v1, "url"

    invoke-static {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->e:Ljava/lang/String;

    const-string v1, "match"

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->g:I

    const-string v1, "vc"

    invoke-static {p0, v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->versionCode:I

    const-string v1, "vn"

    invoke-static {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static toVersionNumber(Ljava/lang/String;)J
    .locals 11

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_4

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->VERSION:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-lez v0, :cond_4

    array-length v0, p0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    array-length v0, p0

    const/4 v5, 0x1

    if-le v0, v5, :cond_2

    aget-object v0, p0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    goto :goto_1

    :cond_2
    move-wide v5, v1

    :goto_1
    array-length v0, p0

    const/4 v7, 0x2

    if-le v0, v7, :cond_3

    aget-object p0, p0, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    :cond_3
    long-to-double v3, v3

    const-wide v7, 0x408f400000000000L    # 1000.0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v3, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    long-to-double v5, v5

    add-double/2addr v3, v5

    long-to-double v0, v1

    add-double/2addr v3, v0

    double-to-long v0, v3

    return-wide v0

    :cond_4
    :goto_2
    return-wide v1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMatch()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->g:I

    return p0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->d:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->b:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionCode()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->versionCode:I

    return p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->a:Ljava/lang/String;

    return-object p0
.end method

.method public isBackup()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->c:Z

    return p0
.end method

.method public setBackup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->c:Z

    return-void
.end method

.method public setMatch(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->g:I

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->f:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->d:J

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->b:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->e:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->a:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->versionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->c:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
