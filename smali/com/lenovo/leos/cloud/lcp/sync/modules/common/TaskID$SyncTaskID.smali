.class public final enum Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncTaskID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;",
        ">;",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;"
    }
.end annotation


# static fields
.field public static final enum BOOKMARK:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

.field public static final enum CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

.field public static final enum CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

.field public static final enum WIFICONF:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

.field private static final synthetic b:[Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    const-string v1, "CONTACT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    const-string v1, "CALENDAR"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    const-string v1, "BOOKMARK"

    const/4 v4, 0x2

    const/16 v5, 0xa

    invoke-direct {v0, v1, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->BOOKMARK:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    const-string v1, "WIFICONF"

    const/4 v5, 0x3

    const/16 v6, 0xb

    invoke-direct {v0, v1, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->WIFICONF:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    sget-object v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    aput-object v6, v1, v2

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    aput-object v2, v1, v3

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->BOOKMARK:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->b:[Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

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

    iput p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;
    .locals 1

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    return-object p0
.end method

.method public static values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->b:[Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-virtual {v0}, [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->a:I

    return p0
.end method
