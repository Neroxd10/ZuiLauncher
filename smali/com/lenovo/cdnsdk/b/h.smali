.class public final enum Lcom/lenovo/cdnsdk/b/h;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lenovo/cdnsdk/b/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/lenovo/cdnsdk/b/h;

.field public static final enum b:Lcom/lenovo/cdnsdk/b/h;

.field private static final synthetic d:[Lcom/lenovo/cdnsdk/b/h;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/lenovo/cdnsdk/b/h;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/lenovo/cdnsdk/b/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/cdnsdk/b/h;->a:Lcom/lenovo/cdnsdk/b/h;

    new-instance v0, Lcom/lenovo/cdnsdk/b/h;

    const-string v1, "POST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/lenovo/cdnsdk/b/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/cdnsdk/b/h;->b:Lcom/lenovo/cdnsdk/b/h;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/lenovo/cdnsdk/b/h;

    sget-object v4, Lcom/lenovo/cdnsdk/b/h;->a:Lcom/lenovo/cdnsdk/b/h;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/lenovo/cdnsdk/b/h;->d:[Lcom/lenovo/cdnsdk/b/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/lenovo/cdnsdk/b/h;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/cdnsdk/b/h;
    .locals 1

    const-class v0, Lcom/lenovo/cdnsdk/b/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lenovo/cdnsdk/b/h;

    return-object p0
.end method

.method public static values()[Lcom/lenovo/cdnsdk/b/h;
    .locals 1

    sget-object v0, Lcom/lenovo/cdnsdk/b/h;->d:[Lcom/lenovo/cdnsdk/b/h;

    invoke-virtual {v0}, [Lcom/lenovo/cdnsdk/b/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/cdnsdk/b/h;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/h;->c:Ljava/lang/String;

    return-object p0
.end method
