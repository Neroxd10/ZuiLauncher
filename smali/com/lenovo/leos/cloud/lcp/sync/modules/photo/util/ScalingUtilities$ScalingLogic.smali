.class public final enum Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScalingLogic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CROP:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

.field public static final enum FIT:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

.field private static final synthetic a:[Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    const-string v1, "CROP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;->CROP:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    const-string v1, "FIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;->FIT:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;->CROP:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;->a:[Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;
    .locals 1

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    return-object p0
.end method

.method public static values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;->a:[Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    invoke-virtual {v0}, [Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    return-object v0
.end method
