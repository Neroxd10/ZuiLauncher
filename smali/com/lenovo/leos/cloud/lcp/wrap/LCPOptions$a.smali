.class final enum Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BackupSimCardContact:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

.field public static final enum BackupSyncTypeSdcard:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

.field public static final enum CalendarSupportSync:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

.field private static final synthetic a:[Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    const-string v1, "BackupSimCardContact"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;->BackupSimCardContact:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    const-string v1, "BackupSyncTypeSdcard"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;->BackupSyncTypeSdcard:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    const-string v1, "CalendarSupportSync"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;->CalendarSupportSync:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;->BackupSimCardContact:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    aput-object v5, v1, v2

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;->BackupSyncTypeSdcard:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;->a:[Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;
    .locals 1

    const-class v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    return-object p0
.end method

.method public static values()[Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;->a:[Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    invoke-virtual {v0}, [Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    return-object v0
.end method
