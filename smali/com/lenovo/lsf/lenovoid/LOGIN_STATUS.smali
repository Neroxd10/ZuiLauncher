.class public final enum Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum OFFLINE:Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

.field public static final enum ONLINE:Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

.field private static final synthetic a:[Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    const-string v1, "ONLINE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->ONLINE:Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    new-instance v0, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    const-string v1, "OFFLINE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->OFFLINE:Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    new-array v1, v4, [Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    sget-object v4, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->ONLINE:Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->a:[Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;
    .locals 1

    const-class v0, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    return-object p0
.end method

.method public static values()[Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;
    .locals 1

    sget-object v0, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->a:[Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    invoke-virtual {v0}, [Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    return-object v0
.end method
