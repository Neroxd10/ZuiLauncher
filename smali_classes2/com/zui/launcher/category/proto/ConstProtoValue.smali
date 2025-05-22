.class public Lcom/zui/launcher/category/proto/ConstProtoValue;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryLogInCallback;,
        Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;
    }
.end annotation


# static fields
.field private static a:Z = false

.field public static currentdvicetype:Ljava/lang/String; = "ph"

.field public static filedownloadlen:Ljava/lang/String; = "filedownloadlen"

.field public static filename:Ljava/lang/String; = "filename"

.field public static filestartpos:Ljava/lang/String; = "startpos"

.field public static protoaccounttype:Ljava/lang/String; = "accounttype"

.field public static protoaddlist:Ljava/lang/String; = "addList"

.field public static protocategoryname:Ljava/lang/String; = "categoryname"

.field public static protocategorynames:Ljava/lang/String; = "categorynames"

.field public static protocontext:Ljava/lang/String; = "context"

.field public static protodataList:Ljava/lang/String; = "data"

.field public static protodefaultcategorynames:Ljava/lang/String; = "defaultcnames"

.field public static protodefaultshortcnames:Ljava/lang/String; = "defaultshortcnames"

.field public static protodeleteapps:Ljava/lang/String; = "deleteapps"

.field public static protodeletelist:Ljava/lang/String; = "deletelist"

.field public static protodensity:Ljava/lang/String; = "density"

.field public static protodeviceId:Ljava/lang/String; = "deviceId"

.field public static protodevicebrand:Ljava/lang/String; = "devicebrand"

.field public static protodevicemodel:Ljava/lang/String; = "devicemodel"

.field public static protodevicetype:Ljava/lang/String; = "devicetype"

.field public static protodevicevendor:Ljava/lang/String; = "devicevendor"

.field public static protodownloadurl:Ljava/lang/String; = "downurl"

.field public static protodpi:Ljava/lang/String; = "dpi"

.field public static protoexpire:Ljava/lang/String; = "expire"

.field public static protofileversion:Ljava/lang/String; = "fileversion"

.field public static protoiconurl:Ljava/lang/String; = "iconurl"

.field public static protoinstalledapps:Ljava/lang/String; = "installapps"

.field public static protoisallinstall:Ljava/lang/String; = "isallinstall"

.field public static protoismerge:Ljava/lang/String; = "ismerge"

.field public static protolang:Ljava/lang/String; = "lang"

.field public static protomaxcounts:Ljava/lang/String; = "maxcounts"

.field public static protomcategory:Ljava/lang/String; = "mcategory"

.field public static protomcategorydata:Ljava/lang/String; = "mcategorydata"

.field public static protomobilType:Ljava/lang/String; = "mobilType"

.field public static protompnamedata:Ljava/lang/String; = "mpnamedata"

.field public static protomsg:Ljava/lang/String; = "msg"

.field public static protonewpw:Ljava/lang/String; = "newpw"

.field public static protoos:Ljava/lang/String; = "os"

.field public static protoosdkVersion:Ljava/lang/String; = "osdkVersion"

.field public static protoosversion:Ljava/lang/String; = "osversion"

.field public static protootherInfos:Ljava/lang/String; = "otherInfos"

.field public static protopackagename:Ljava/lang/String; = "packagename"

.field public static protopackgename:Ljava/lang/String; = "pn"

.field public static protopakagename:Ljava/lang/String; = "packagename"

.field public static protoperf:Ljava/lang/String; = "perf"

.field public static protopn:Ljava/lang/String; = "pn"

.field public static protopostion:Ljava/lang/String; = "postion"

.field public static protopw:Ljava/lang/String; = "pw"

.field public static protoreplacelist:Ljava/lang/String; = "replacelist"

.field public static protoreplacepackagename:Ljava/lang/String; = "replacepackagename"

.field public static protoreqCategorys:Ljava/lang/String; = "reqCategorys"

.field public static protoresolution:Ljava/lang/String; = "resolution"

.field public static protoresult:Ljava/lang/String; = "result"

.field public static protorules:Ljava/lang/String; = "rules"

.field public static protostartindex:Ljava/lang/String; = "startindex"

.field public static prototitle:Ljava/lang/String; = "title"

.field public static prototoken:Ljava/lang/String; = "token"

.field public static protousername:Ljava/lang/String; = "username"

.field public static protoversionCode:Ljava/lang/String; = "versionCode"

.field public static protoversionclinetCode:Ljava/lang/String; = "versionclientCode"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte4ToInt([BI)I
    .locals 3

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static int2byte(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static permmitUseNetWorkIfIn3G()Z
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/category/proto/ConstProtoValue;->a:Z

    return v0
.end method

.method public static setPermmitUseNetWorkIfIn3G(Z)V
    .locals 0

    sput-boolean p0, Lcom/zui/launcher/category/proto/ConstProtoValue;->a:Z

    return-void
.end method
