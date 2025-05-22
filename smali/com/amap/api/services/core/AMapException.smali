.class public Lcom/amap/api/services/core/AMapException;
.super Ljava/lang/Exception;
.source ""


# static fields
.field public static final AMAP_ACCESS_TOO_FREQUENT:Ljava/lang/String; = "\u7528\u6237\u8bbf\u95ee\u8fc7\u4e8e\u9891\u7e41"

.field public static final AMAP_CLIENT_ERRORCODE_MISSSING:Ljava/lang/String; = "\u6ca1\u6709\u5bf9\u5e94\u7684\u9519\u8bef"

.field public static final AMAP_CLIENT_ERRORCODE_MISSSING_TPPE:Ljava/lang/String; = "AMAP_CLIENT_ERRORCODE_MISSSING"

.field public static final AMAP_CLIENT_ERROR_PROTOCOL:Ljava/lang/String; = "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

.field public static final AMAP_CLIENT_INVALID_PARAMETER:Ljava/lang/String; = "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

.field public static final AMAP_CLIENT_IO_EXCEPTION:Ljava/lang/String; = "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

.field public static final AMAP_CLIENT_NEARBY_NULL_RESULT:Ljava/lang/String; = "NearbyInfo\u5bf9\u8c61\u4e3a\u7a7a"

.field public static final AMAP_CLIENT_NETWORK_EXCEPTION:Ljava/lang/String; = "http\u6216socket\u8fde\u63a5\u5931\u8d25 - ConnectionException"

.field public static final AMAP_CLIENT_NULLPOINT_EXCEPTION:Ljava/lang/String; = "\u7a7a\u6307\u9488\u5f02\u5e38 - NullPointException"

.field public static final AMAP_CLIENT_OVER_KEYWORD_LEN_MAX_COUNT_EXCEPTION:Ljava/lang/String; = "\u5173\u952e\u5b57\u8fc7\u957f"

.field public static final AMAP_CLIENT_OVER_PASSAREA_ITEM_POINT_COUNT_EXCEPTION:Ljava/lang/String; = "\u907f\u8ba9\u533a\u57df\u70b9\u4e2a\u6570\u8d85\u9650"

.field public static final AMAP_CLIENT_OVER_PASSAREA_MAX_AREA_EXCEPTION:Ljava/lang/String; = "\u907f\u8ba9\u533a\u57df\u5927\u5c0f\u8d85\u9650"

.field public static final AMAP_CLIENT_OVER_PASSAREA_MAX_COUNT_EXCEPTION:Ljava/lang/String; = "\u907f\u8ba9\u533a\u57df\u4e2a\u6570\u8d85\u9650"

.field public static final AMAP_CLIENT_OVER_PASSBY_MAX_COUNT_EXCEPTION:Ljava/lang/String; = "\u9014\u7ecf\u70b9\u4e2a\u6570\u8d85\u9650"

.field public static final AMAP_CLIENT_SOCKET_TIMEOUT_EXCEPTION:Ljava/lang/String; = "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

.field public static final AMAP_CLIENT_UNKNOWHOST_EXCEPTION:Ljava/lang/String; = "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

.field public static final AMAP_CLIENT_UNKNOWN_ERROR:Ljava/lang/String; = "\u672a\u77e5\u9519\u8bef"

.field public static final AMAP_CLIENT_UNKNOWN_ERROR_TYPE:Ljava/lang/String; = "CLIENT_UNKNOWN_ERROR"

.field public static final AMAP_CLIENT_UPLOADAUTO_STARTED_ERROR:Ljava/lang/String; = "\u5df2\u5f00\u542f\u81ea\u52a8\u4e0a\u4f20"

.field public static final AMAP_CLIENT_UPLOAD_LOCATION_ERROR:Ljava/lang/String; = "Point\u4e3a\u7a7a\uff0c\u6216\u4e0e\u524d\u6b21\u4e0a\u4f20\u7684\u76f8\u540c"

.field public static final AMAP_CLIENT_UPLOAD_TOO_FREQUENT:Ljava/lang/String; = "\u4e24\u6b21\u5355\u6b21\u4e0a\u4f20\u7684\u95f4\u9694\u4f4e\u4e8e7\u79d2"

.field public static final AMAP_CLIENT_URL_EXCEPTION:Ljava/lang/String; = "url\u5f02\u5e38 - MalformedURLException"

.field public static final AMAP_CLIENT_USERID_ILLEGAL:Ljava/lang/String; = "USERID\u975e\u6cd5"

.field public static final AMAP_DAILY_QUERY_OVER_LIMIT:Ljava/lang/String; = "\u8bbf\u95ee\u5df2\u8d85\u51fa\u65e5\u8bbf\u95ee\u91cf"

.field public static final AMAP_ENGINE_CONNECT_TIMEOUT:Ljava/lang/String; = "\u670d\u52a1\u7aef\u8bf7\u6c42\u94fe\u63a5\u8d85\u65f6"

.field public static final AMAP_ENGINE_RESPONSE_DATA_ERROR:Ljava/lang/String; = "\u5f15\u64ce\u8fd4\u56de\u6570\u636e\u5f02\u5e38"

.field public static final AMAP_ENGINE_RESPONSE_ERROR:Ljava/lang/String; = "\u8bf7\u6c42\u670d\u52a1\u54cd\u5e94\u9519\u8bef"

.field public static final AMAP_ENGINE_RETURN_TIMEOUT:Ljava/lang/String; = "\u8bfb\u53d6\u670d\u52a1\u7ed3\u679c\u8d85\u65f6"

.field public static final AMAP_ENGINE_TABLEID_NOT_EXIST:Ljava/lang/String; = "key\u5bf9\u5e94\u7684tableID\u4e0d\u5b58\u5728"

.field public static final AMAP_ERROR_CORE:I = 0x1

.field public static final AMAP_ERROR_LOCAL:I = 0x0

.field public static final AMAP_ERROR_LOCAL_STANDARDIZED:I = 0x4

.field public static final AMAP_ERROR_REST:I = 0x2

.field public static final AMAP_ID_NOT_EXIST:Ljava/lang/String; = "ID\u4e0d\u5b58\u5728"

.field public static final AMAP_INSUFFICIENT_PRIVILEGES:Ljava/lang/String; = "\u6743\u9650\u4e0d\u8db3\uff0c\u670d\u52a1\u8bf7\u6c42\u88ab\u62d2\u7edd"

.field public static final AMAP_INVALID_USER_DOMAIN:Ljava/lang/String; = "\u7528\u6237\u57df\u540d\u65e0\u6548"

.field public static final AMAP_INVALID_USER_IP:Ljava/lang/String; = "\u7528\u6237IP\u65e0\u6548"

.field public static final AMAP_INVALID_USER_KEY:Ljava/lang/String; = "\u7528\u6237key\u4e0d\u6b63\u786e\u6216\u8fc7\u671f"

.field public static final AMAP_INVALID_USER_SCODE:Ljava/lang/String; = "\u7528\u6237MD5\u5b89\u5168\u7801\u672a\u901a\u8fc7"

.field public static final AMAP_IP_QUERY_OVER_LIMIT:Ljava/lang/String; = "IP\u8bbf\u95ee\u8d85\u9650"

.field public static final AMAP_NEARBY_INVALID_USERID:Ljava/lang/String; = "\u627e\u4e0d\u5230\u5bf9\u5e94\u7684userid\u4fe1\u606f,\u8bf7\u68c0\u67e5\u60a8\u63d0\u4f9b\u7684userid\u662f\u5426\u5b58\u5728"

.field public static final AMAP_NEARBY_KEY_NOT_BIND:Ljava/lang/String; = "App key\u672a\u5f00\u901a\u201c\u9644\u8fd1\u201d\u529f\u80fd,\u8bf7\u6ce8\u518c\u9644\u8fd1KEY"

.field public static final AMAP_NOT_SUPPORT_HTTPS:Ljava/lang/String; = "\u670d\u52a1\u4e0d\u652f\u6301https\u8bf7\u6c42"

.field public static final AMAP_OVER_DIRECTION_RANGE:Ljava/lang/String; = "\u8d77\u70b9\u7ec8\u70b9\u8ddd\u79bb\u8fc7\u957f"

.field public static final AMAP_ROUTE_FAIL:Ljava/lang/String; = "\u8def\u7ebf\u8ba1\u7b97\u5931\u8d25\uff0c\u901a\u5e38\u662f\u7531\u4e8e\u9053\u8def\u8fde\u901a\u5173\u7cfb\u5bfc\u81f4"

.field public static final AMAP_ROUTE_NO_ROADS_NEARBY:Ljava/lang/String; = "\u89c4\u5212\u70b9\uff08\u8d77\u70b9\u3001\u7ec8\u70b9\u3001\u9014\u7ecf\u70b9\uff09\u9644\u8fd1\u641c\u4e0d\u5230\u8def"

.field public static final AMAP_ROUTE_OUT_OF_SERVICE:Ljava/lang/String; = "\u89c4\u5212\u70b9\uff08\u5305\u62ec\u8d77\u70b9\u3001\u7ec8\u70b9\u3001\u9014\u7ecf\u70b9\uff09\u4e0d\u5728\u4e2d\u56fd\u9646\u5730\u8303\u56f4\u5185"

.field public static final AMAP_SERVICE_ILLEGAL_REQUEST:Ljava/lang/String; = "\u8bf7\u6c42\u534f\u8bae\u975e\u6cd5"

.field public static final AMAP_SERVICE_INVALID_PARAMS:Ljava/lang/String; = "\u8bf7\u6c42\u53c2\u6570\u975e\u6cd5"

.field public static final AMAP_SERVICE_MAINTENANCE:Ljava/lang/String; = "\u670d\u52a1\u5668\u7ef4\u62a4\u4e2d"

.field public static final AMAP_SERVICE_MISSING_REQUIRED_PARAMS:Ljava/lang/String; = "\u7f3a\u5c11\u5fc5\u586b\u53c2\u6570"

.field public static final AMAP_SERVICE_NOT_AVAILBALE:Ljava/lang/String; = "\u8bf7\u6c42\u670d\u52a1\u4e0d\u5b58\u5728"

.field public static final AMAP_SERVICE_TABLEID_NOT_EXIST:Ljava/lang/String; = "tableID\u683c\u5f0f\u4e0d\u6b63\u786e\u4e0d\u5b58\u5728"

.field public static final AMAP_SERVICE_UNKNOWN_ERROR:Ljava/lang/String; = "\u5176\u4ed6\u672a\u77e5\u9519\u8bef"

.field public static final AMAP_SHARE_FAILURE:Ljava/lang/String; = "\u77ed\u4e32\u8bf7\u6c42\u5931\u8d25"

.field public static final AMAP_SHARE_LICENSE_IS_EXPIRED:Ljava/lang/String; = "\u77ed\u4e32\u5206\u4eab\u8ba4\u8bc1\u5931\u8d25"

.field public static final AMAP_SHARE_SIGNATURE_FAILURE:Ljava/lang/String; = "\u7528\u6237\u7b7e\u540d\u672a\u901a\u8fc7"

.field public static final AMAP_SIGNATURE_ERROR:Ljava/lang/String; = "\u7528\u6237\u7b7e\u540d\u672a\u901a\u8fc7"

.field public static final AMAP_USERKEY_PLAT_NOMATCH:Ljava/lang/String; = "\u8bf7\u6c42key\u4e0e\u7ed1\u5b9a\u5e73\u53f0\u4e0d\u7b26"

.field public static final AMAP_USER_KEY_RECYCLED:Ljava/lang/String; = "\u5f00\u53d1\u8005\u5220\u9664\u4e86key\uff0ckey\u88ab\u5220\u9664\u540e\u65e0\u6cd5\u6b63\u5e38\u4f7f\u7528"

.field public static final CODE_AMAP_ACCESS_TOO_FREQUENT:I = 0x3ed

.field public static final CODE_AMAP_CLIENT_ERRORCODE_MISSSING:I = 0x708

.field public static final CODE_AMAP_CLIENT_ERROR_PROTOCOL:I = 0x709

.field public static final CODE_AMAP_CLIENT_INVALID_PARAMETER:I = 0x76d

.field public static final CODE_AMAP_CLIENT_IO_EXCEPTION:I = 0x76e

.field public static final CODE_AMAP_CLIENT_NEARBY_NULL_RESULT:I = 0x89a

.field public static final CODE_AMAP_CLIENT_NETWORK_EXCEPTION:I = 0x70e

.field public static final CODE_AMAP_CLIENT_NULLPOINT_EXCEPTION:I = 0x76f

.field public static final CODE_AMAP_CLIENT_OVER_KEYWORD_LEN_MAX_COUNT_EXCEPTION:I = 0x715

.field public static final CODE_AMAP_CLIENT_OVER_PASSAREA_ITEM_POINT_COUNT_EXCEPTION:I = 0x714

.field public static final CODE_AMAP_CLIENT_OVER_PASSAREA_MAX_AREA_EXCEPTION:I = 0x713

.field public static final CODE_AMAP_CLIENT_OVER_PASSAREA_MAX_COUNT_EXCEPTION:I = 0x712

.field public static final CODE_AMAP_CLIENT_OVER_PASSBY_MAX_COUNT_EXCEPTION:I = 0x711

.field public static final CODE_AMAP_CLIENT_SOCKET_TIMEOUT_EXCEPTION:I = 0x70a

.field public static final CODE_AMAP_CLIENT_UNKNOWHOST_EXCEPTION:I = 0x70c

.field public static final CODE_AMAP_CLIENT_UNKNOWN_ERROR:I = 0x76c

.field public static final CODE_AMAP_CLIENT_UPLOADAUTO_STARTED_ERROR:I = 0x898

.field public static final CODE_AMAP_CLIENT_UPLOAD_LOCATION_ERROR:I = 0x89c

.field public static final CODE_AMAP_CLIENT_UPLOAD_TOO_FREQUENT:I = 0x89b

.field public static final CODE_AMAP_CLIENT_URL_EXCEPTION:I = 0x70b

.field public static final CODE_AMAP_CLIENT_USERID_ILLEGAL:I = 0x899

.field public static final CODE_AMAP_DAILY_QUERY_OVER_LIMIT:I = 0x3ec

.field public static final CODE_AMAP_ENGINE_CONNECT_TIMEOUT:I = 0x44e

.field public static final CODE_AMAP_ENGINE_RESPONSE_DATA_ERROR:I = 0x44d

.field public static final CODE_AMAP_ENGINE_RESPONSE_ERROR:I = 0x44c

.field public static final CODE_AMAP_ENGINE_RETURN_TIMEOUT:I = 0x44f

.field public static final CODE_AMAP_ENGINE_TABLEID_NOT_EXIST:I = 0x7d3

.field public static final CODE_AMAP_ID_NOT_EXIST:I = 0x7d1

.field public static final CODE_AMAP_INSUFFICIENT_PRIVILEGES:I = 0x3f4

.field public static final CODE_AMAP_INVALID_USER_DOMAIN:I = 0x3ef

.field public static final CODE_AMAP_INVALID_USER_IP:I = 0x3ee

.field public static final CODE_AMAP_INVALID_USER_KEY:I = 0x3ea

.field public static final CODE_AMAP_INVALID_USER_SCODE:I = 0x3f0

.field public static final CODE_AMAP_IP_QUERY_OVER_LIMIT:I = 0x3f2

.field public static final CODE_AMAP_NEARBY_INVALID_USERID:I = 0x834

.field public static final CODE_AMAP_NEARBY_KEY_NOT_BIND:I = 0x835

.field public static final CODE_AMAP_NOT_SUPPORT_HTTPS:I = 0x3f3

.field public static final CODE_AMAP_OVER_DIRECTION_RANGE:I = 0xbbb

.field public static final CODE_AMAP_ROUTE_FAIL:I = 0xbba

.field public static final CODE_AMAP_ROUTE_NO_ROADS_NEARBY:I = 0xbb9

.field public static final CODE_AMAP_ROUTE_OUT_OF_SERVICE:I = 0xbb8

.field public static final CODE_AMAP_SERVICE_ILLEGAL_REQUEST:I = 0x4b2

.field public static final CODE_AMAP_SERVICE_INVALID_PARAMS:I = 0x4b0

.field public static final CODE_AMAP_SERVICE_MAINTENANCE:I = 0x7d2

.field public static final CODE_AMAP_SERVICE_MISSING_REQUIRED_PARAMS:I = 0x4b1

.field public static final CODE_AMAP_SERVICE_NOT_AVAILBALE:I = 0x3eb

.field public static final CODE_AMAP_SERVICE_TABLEID_NOT_EXIST:I = 0x7d0

.field public static final CODE_AMAP_SERVICE_UNKNOWN_ERROR:I = 0x4b3

.field public static final CODE_AMAP_SHARE_FAILURE:I = 0xfa1

.field public static final CODE_AMAP_SHARE_LICENSE_IS_EXPIRED:I = 0xfa0

.field public static final CODE_AMAP_SHARE_SIGNATURE_FAILURE:I = 0xfa2

.field public static final CODE_AMAP_SIGNATURE_ERROR:I = 0x3e9

.field public static final CODE_AMAP_SUCCESS:I = 0x3e8

.field public static final CODE_AMAP_USERKEY_PLAT_NOMATCH:I = 0x3f1

.field public static final CODE_AMAP_USER_KEY_RECYCLED:I = 0x3f5


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/core/AMapException;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/core/AMapException;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/services/core/AMapException;->c:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/core/AMapException;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/services/core/AMapException;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/amap/api/services/core/AMapException;->c:Ljava/lang/String;

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    iput-object p1, p0, Lcom/amap/api/services/core/AMapException;->c:Ljava/lang/String;

    iput v0, p0, Lcom/amap/api/services/core/AMapException;->a:I

    invoke-direct {p0, p1}, Lcom/amap/api/services/core/AMapException;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/core/AMapException;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/core/AMapException;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/services/core/AMapException;->c:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/amap/api/services/core/AMapException;->d:I

    iput-object p1, p0, Lcom/amap/api/services/core/AMapException;->c:Ljava/lang/String;

    iput p2, p0, Lcom/amap/api/services/core/AMapException;->a:I

    iput-object p3, p0, Lcom/amap/api/services/core/AMapException;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/amap/api/services/core/AMapException;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amap/api/services/core/AMapException;->c:Ljava/lang/String;

    iput p2, p0, Lcom/amap/api/services/core/AMapException;->a:I

    iput-object p3, p0, Lcom/amap/api/services/core/AMapException;->b:Ljava/lang/String;

    iput p4, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u7528\u6237\u7b7e\u540d\u672a\u901a\u8fc7"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x3e9

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_0
    const-string v1, "\u7528\u6237key\u4e0d\u6b63\u786e\u6216\u8fc7\u671f"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, 0x3ea

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_1
    const-string v1, "\u8bf7\u6c42\u670d\u52a1\u4e0d\u5b58\u5728"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p1, 0x3eb

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_2
    const-string v1, "\u8bbf\u95ee\u5df2\u8d85\u51fa\u65e5\u8bbf\u95ee\u91cf"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p1, 0x3ec

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_3
    const-string v1, "\u7528\u6237\u8bbf\u95ee\u8fc7\u4e8e\u9891\u7e41"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p1, 0x3ed

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_4
    const-string v1, "\u7528\u6237IP\u65e0\u6548"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 p1, 0x3ee

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_5
    const-string v1, "\u7528\u6237\u57df\u540d\u65e0\u6548"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 p1, 0x3ef

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_6
    const-string v1, "\u7528\u6237MD5\u5b89\u5168\u7801\u672a\u901a\u8fc7"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 p1, 0x3f0

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_7
    const-string v1, "\u8bf7\u6c42key\u4e0e\u7ed1\u5b9a\u5e73\u53f0\u4e0d\u7b26"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 p1, 0x3f1

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_8
    const-string v1, "IP\u8bbf\u95ee\u8d85\u9650"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 p1, 0x3f2

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_9
    const-string v1, "\u670d\u52a1\u4e0d\u652f\u6301https\u8bf7\u6c42"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 p1, 0x3f3

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_a
    const-string v1, "\u6743\u9650\u4e0d\u8db3\uff0c\u670d\u52a1\u8bf7\u6c42\u88ab\u62d2\u7edd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 p1, 0x3f4

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_b
    const-string v1, "\u5f00\u53d1\u8005\u5220\u9664\u4e86key\uff0ckey\u88ab\u5220\u9664\u540e\u65e0\u6cd5\u6b63\u5e38\u4f7f\u7528"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 p1, 0x3f5

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_c
    const-string v1, "\u8bf7\u6c42\u670d\u52a1\u54cd\u5e94\u9519\u8bef"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 p1, 0x44c

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_d
    const-string v1, "\u5f15\u64ce\u8fd4\u56de\u6570\u636e\u5f02\u5e38"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 p1, 0x44d

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_e
    const-string v1, "\u670d\u52a1\u7aef\u8bf7\u6c42\u94fe\u63a5\u8d85\u65f6"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 p1, 0x44e

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_f
    const-string v1, "\u8bfb\u53d6\u670d\u52a1\u7ed3\u679c\u8d85\u65f6"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 p1, 0x44f

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_10
    const-string v1, "\u8bf7\u6c42\u53c2\u6570\u975e\u6cd5"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 p1, 0x4b0

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_11
    const-string v1, "\u7f3a\u5c11\u5fc5\u586b\u53c2\u6570"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 p1, 0x4b1

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_12
    const-string v1, "\u8bf7\u6c42\u534f\u8bae\u975e\u6cd5"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 p1, 0x4b2

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_13
    const-string v1, "\u5176\u4ed6\u672a\u77e5\u9519\u8bef"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 p1, 0x4b3

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_14
    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 p1, 0x709

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_15
    const-string v1, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 p1, 0x70a

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_16
    const-string v1, "url\u5f02\u5e38 - MalformedURLException"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 p1, 0x70b

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_17
    const-string v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 p1, 0x70c

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_18
    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 p1, 0x76d

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_19
    const-string v1, "http\u6216socket\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 p1, 0x70e

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_1a
    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 p1, 0x76e

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_1b
    const-string v1, "\u7a7a\u6307\u9488\u5f02\u5e38 - NullPointException"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 p1, 0x76f

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_1c
    const-string v1, "tableID\u683c\u5f0f\u4e0d\u6b63\u786e\u4e0d\u5b58\u5728"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/16 p1, 0x7d0

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_1d
    const-string v1, "ID\u4e0d\u5b58\u5728"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 p1, 0x7d1

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_1e
    const-string v1, "\u670d\u52a1\u5668\u7ef4\u62a4\u4e2d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 p1, 0x7d2

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_1f
    const-string v1, "key\u5bf9\u5e94\u7684tableID\u4e0d\u5b58\u5728"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 p1, 0x7d3

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_20
    const-string v1, "\u627e\u4e0d\u5230\u5bf9\u5e94\u7684userid\u4fe1\u606f,\u8bf7\u68c0\u67e5\u60a8\u63d0\u4f9b\u7684userid\u662f\u5426\u5b58\u5728"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/16 p1, 0x834

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_21
    const-string v1, "App key\u672a\u5f00\u901a\u201c\u9644\u8fd1\u201d\u529f\u80fd,\u8bf7\u6ce8\u518c\u9644\u8fd1KEY"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 p1, 0x835

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_22
    const-string v1, "\u89c4\u5212\u70b9\uff08\u5305\u62ec\u8d77\u70b9\u3001\u7ec8\u70b9\u3001\u9014\u7ecf\u70b9\uff09\u4e0d\u5728\u4e2d\u56fd\u9646\u5730\u8303\u56f4\u5185"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 p1, 0xbb8

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_23
    const-string v1, "\u89c4\u5212\u70b9\uff08\u8d77\u70b9\u3001\u7ec8\u70b9\u3001\u9014\u7ecf\u70b9\uff09\u9644\u8fd1\u641c\u4e0d\u5230\u8def"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/16 p1, 0xbb9

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_24
    const-string v1, "\u8def\u7ebf\u8ba1\u7b97\u5931\u8d25\uff0c\u901a\u5e38\u662f\u7531\u4e8e\u9053\u8def\u8fde\u901a\u5173\u7cfb\u5bfc\u81f4"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 p1, 0xbba

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_25
    const-string v1, "\u8d77\u70b9\u7ec8\u70b9\u8ddd\u79bb\u8fc7\u957f"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 p1, 0xbbb

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_26
    const-string v1, "\u5df2\u5f00\u542f\u81ea\u52a8\u4e0a\u4f20"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 p1, 0x898

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_27
    const-string v1, "USERID\u975e\u6cd5"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 p1, 0x899

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_28
    const-string v1, "NearbyInfo\u5bf9\u8c61\u4e3a\u7a7a"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 p1, 0x89a

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_29
    const-string v1, "\u4e24\u6b21\u5355\u6b21\u4e0a\u4f20\u7684\u95f4\u9694\u4f4e\u4e8e7\u79d2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/16 p1, 0x89b

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_2a
    const-string v1, "Point\u4e3a\u7a7a\uff0c\u6216\u4e0e\u524d\u6b21\u4e0a\u4f20\u7684\u76f8\u540c"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 p1, 0x89c

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_2b
    const-string v1, "\u77ed\u4e32\u5206\u4eab\u8ba4\u8bc1\u5931\u8d25"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/16 p1, 0xfa0

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_2c
    const-string v1, "\u77ed\u4e32\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/16 p1, 0xfa1

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_2d
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 p1, 0xfa2

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_2e
    const-string v0, "\u672a\u77e5\u9519\u8bef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 p1, 0x76c

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    const-string p1, "CLIENT_UNKNOWN_ERROR"

    iput-object p1, p0, Lcom/amap/api/services/core/AMapException;->b:Ljava/lang/String;

    return-void

    :cond_2f
    const-string v0, "\u907f\u8ba9\u533a\u57df\u70b9\u4e2a\u6570\u8d85\u9650"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 p1, 0x714

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_30
    const-string v0, "\u5173\u952e\u5b57\u8fc7\u957f"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 p1, 0x715

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_31
    const-string v0, "\u907f\u8ba9\u533a\u57df\u5927\u5c0f\u8d85\u9650"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/16 p1, 0x713

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_32
    const-string v0, "\u907f\u8ba9\u533a\u57df\u4e2a\u6570\u8d85\u9650"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 p1, 0x712

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_33
    const-string v0, "\u9014\u7ecf\u70b9\u4e2a\u6570\u8d85\u9650"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    const/16 p1, 0x711

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return-void

    :cond_34
    const/16 p1, 0x708

    iput p1, p0, Lcom/amap/api/services/core/AMapException;->d:I

    const-string p1, "AMAP_CLIENT_ERRORCODE_MISSSING"

    iput-object p1, p0, Lcom/amap/api/services/core/AMapException;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/core/AMapException;->d:I

    return p0
.end method

.method public getErrorLevel()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/core/AMapException;->a:I

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/core/AMapException;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/core/AMapException;->b:Ljava/lang/String;

    return-object p0
.end method
