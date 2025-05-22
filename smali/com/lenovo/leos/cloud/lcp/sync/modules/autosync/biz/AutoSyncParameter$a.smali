.class final enum Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

.field public static final enum CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

.field public static final enum CONTACT_PHOTO:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

.field public static final enum SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

.field private static final synthetic a:[Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    const-string v1, "CONTACT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    const-string v1, "CONTACT_PHOTO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;->CONTACT_PHOTO:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    const-string v1, "SMS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    const-string v1, "CALENDAR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    sget-object v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    aput-object v6, v1, v2

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;->CONTACT_PHOTO:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;->a:[Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;
    .locals 1

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    return-object p0
.end method

.method public static values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;->a:[Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    invoke-virtual {v0}, [Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;

    return-object v0
.end method
