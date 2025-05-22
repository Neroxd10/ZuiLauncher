.class public final enum Lcom/lenovo/cdnsdk/b/c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lenovo/cdnsdk/b/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/lenovo/cdnsdk/b/c;

.field public static b:Landroid/app/Application;

.field private static i:Landroid/os/Handler;

.field private static final synthetic j:[Lcom/lenovo/cdnsdk/b/c;


# instance fields
.field c:Lcom/lenovo/cdnsdk/b/i;

.field d:Lcom/lenovo/cdnsdk/b/g;

.field e:I

.field f:I

.field g:I

.field h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lenovo/cdnsdk/b/c;

    const-string v1, "instance"

    invoke-direct {v0, v1}, Lcom/lenovo/cdnsdk/b/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/cdnsdk/b/c;->a:Lcom/lenovo/cdnsdk/b/c;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/lenovo/cdnsdk/b/c;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/lenovo/cdnsdk/b/c;->j:[Lcom/lenovo/cdnsdk/b/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/lenovo/cdnsdk/b/c;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/app/Application;)Lcom/lenovo/cdnsdk/b/c;
    .locals 1

    sput-object p0, Lcom/lenovo/cdnsdk/b/c;->b:Landroid/app/Application;

    invoke-static {p0}, Lcom/lenovo/cdnsdk/b/e;->a(Landroid/app/Application;)V

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/lenovo/cdnsdk/b/c;->i:Landroid/os/Handler;

    sget-object p0, Lcom/lenovo/cdnsdk/b/c;->a:Lcom/lenovo/cdnsdk/b/c;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/lenovo/cdnsdk/b/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lenovo/cdnsdk/b/n<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/lenovo/cdnsdk/b/n;

    sget-object v1, Lcom/lenovo/cdnsdk/b/h;->a:Lcom/lenovo/cdnsdk/b/h;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/cdnsdk/b/n;-><init>(Lcom/lenovo/cdnsdk/b/h;Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/cdnsdk/b/c;
    .locals 1

    const-class v0, Lcom/lenovo/cdnsdk/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lenovo/cdnsdk/b/c;

    return-object p0
.end method

.method public static values()[Lcom/lenovo/cdnsdk/b/c;
    .locals 1

    sget-object v0, Lcom/lenovo/cdnsdk/b/c;->j:[Lcom/lenovo/cdnsdk/b/c;

    invoke-virtual {v0}, [Lcom/lenovo/cdnsdk/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/cdnsdk/b/c;

    return-object v0
.end method
