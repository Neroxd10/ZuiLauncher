.class public final enum Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BACKUPED:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

.field public static final enum CLOUD_RECOMMEND_APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

.field public static final enum EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

.field public static final enum INSTALLED:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

.field public static final enum LOCAL_NEW_APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

.field public static final enum LOCAL_NOT_INSTALL:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

.field public static final enum NEW_VERSION:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

.field public static final enum NOT_COMPATIBLE:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

.field public static final enum NOT_COMPATIBLE_NEW:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

.field public static final enum NOT_EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

.field public static final enum NOT_INSTALL:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

.field private static final synthetic b:[Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    const-string v1, "NOT_EXISTS"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NOT_EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    const-string v1, "EXISTS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    const-string v1, "BACKUPED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->BACKUPED:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    const-string v1, "NEW_VERSION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NEW_VERSION:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    const-string v1, "NOT_INSTALL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NOT_INSTALL:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    const-string v1, "INSTALLED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->INSTALLED:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    const-string v1, "NOT_COMPATIBLE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NOT_COMPATIBLE:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    const-string v1, "LOCAL_NOT_INSTALL"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->LOCAL_NOT_INSTALL:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    const-string v1, "NOT_COMPATIBLE_NEW"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NOT_COMPATIBLE_NEW:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    const-string v1, "LOCAL_NEW_APP"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->LOCAL_NEW_APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    const-string v1, "CLOUD_RECOMMEND_APP"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->CLOUD_RECOMMEND_APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    sget-object v13, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NOT_EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    aput-object v13, v1, v2

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->BACKUPED:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NEW_VERSION:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    aput-object v2, v1, v5

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NOT_INSTALL:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    aput-object v2, v1, v6

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->INSTALLED:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    aput-object v2, v1, v7

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NOT_COMPATIBLE:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    aput-object v2, v1, v8

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->LOCAL_NOT_INSTALL:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    aput-object v2, v1, v9

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NOT_COMPATIBLE_NEW:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    aput-object v2, v1, v10

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->LOCAL_NEW_APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->b:[Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;
    .locals 1

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    return-object p0
.end method

.method public static values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->b:[Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    invoke-virtual {v0}, [Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->a:I

    return p0
.end method
