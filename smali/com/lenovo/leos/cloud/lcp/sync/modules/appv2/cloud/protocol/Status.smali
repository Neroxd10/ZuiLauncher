.class public final enum Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BACKUPED:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

.field public static final enum EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

.field public static final enum INSTALLED:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

.field public static final enum NEW_VERSION:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

.field public static final enum NOT_COMPATIBLE:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

.field public static final enum NOT_EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

.field public static final enum NOT_INSTALL:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

.field private static final synthetic b:[Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    const-string v1, "NOT_EXISTS"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->NOT_EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    const-string v1, "EXISTS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    const-string v1, "BACKUPED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->BACKUPED:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    const-string v1, "NEW_VERSION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->NEW_VERSION:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    const-string v1, "NOT_INSTALL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->NOT_INSTALL:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    const-string v1, "INSTALLED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->INSTALLED:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    const-string v1, "NOT_COMPATIBLE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->NOT_COMPATIBLE:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    sget-object v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->NOT_EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    aput-object v9, v1, v2

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    aput-object v2, v1, v3

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->BACKUPED:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    aput-object v2, v1, v4

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->NEW_VERSION:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    aput-object v2, v1, v5

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->NOT_INSTALL:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    aput-object v2, v1, v6

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->INSTALLED:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->b:[Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

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

    iput p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;
    .locals 1

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    return-object p0
.end method

.method public static values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->b:[Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    invoke-virtual {v0}, [Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->a:I

    return p0
.end method
