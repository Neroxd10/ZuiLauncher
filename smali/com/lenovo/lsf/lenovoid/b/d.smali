.class public final enum Lcom/lenovo/lsf/lenovoid/b/d;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum a:Lcom/lenovo/lsf/lenovoid/b/d;

.field public static final enum b:Lcom/lenovo/lsf/lenovoid/b/d;

.field private static final synthetic c:[Lcom/lenovo/lsf/lenovoid/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/lenovo/lsf/lenovoid/b/d;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lenovo/lsf/lenovoid/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/lsf/lenovoid/b/d;->a:Lcom/lenovo/lsf/lenovoid/b/d;

    new-instance v0, Lcom/lenovo/lsf/lenovoid/b/d;

    const-string v1, "POST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/lenovo/lsf/lenovoid/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/lsf/lenovoid/b/d;->b:Lcom/lenovo/lsf/lenovoid/b/d;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/lenovo/lsf/lenovoid/b/d;

    sget-object v4, Lcom/lenovo/lsf/lenovoid/b/d;->a:Lcom/lenovo/lsf/lenovoid/b/d;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/lenovo/lsf/lenovoid/b/d;->c:[Lcom/lenovo/lsf/lenovoid/b/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/lsf/lenovoid/b/d;
    .locals 1

    const-class v0, Lcom/lenovo/lsf/lenovoid/b/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lenovo/lsf/lenovoid/b/d;

    return-object p0
.end method

.method public static values()[Lcom/lenovo/lsf/lenovoid/b/d;
    .locals 1

    sget-object v0, Lcom/lenovo/lsf/lenovoid/b/d;->c:[Lcom/lenovo/lsf/lenovoid/b/d;

    invoke-virtual {v0}, [Lcom/lenovo/lsf/lenovoid/b/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/lsf/lenovoid/b/d;

    return-object v0
.end method
