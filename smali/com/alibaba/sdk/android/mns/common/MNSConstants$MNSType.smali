.class public final enum Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/mns/common/MNSConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MNSType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MESSAGE:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

.field public static final enum QUEUE:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

.field private static final synthetic a:[Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    const-string v1, "QUEUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;->QUEUE:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    new-instance v0, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    const-string v1, "MESSAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;->MESSAGE:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    sget-object v4, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;->QUEUE:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;->a:[Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;->a:[Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    return-object v0
.end method
