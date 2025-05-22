.class public final enum Lcom/lenovo/cdnsdk/a/d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lenovo/cdnsdk/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/lenovo/cdnsdk/a/d;

.field private static final synthetic b:[Lcom/lenovo/cdnsdk/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lenovo/cdnsdk/a/d;

    const-string v1, "INIT"

    invoke-direct {v0, v1}, Lcom/lenovo/cdnsdk/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/cdnsdk/a/d;->a:Lcom/lenovo/cdnsdk/a/d;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/lenovo/cdnsdk/a/d;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/lenovo/cdnsdk/a/d;->b:[Lcom/lenovo/cdnsdk/a/d;

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

.method static synthetic a(Lcom/lenovo/cdnsdk/a/d;Lcom/lenovo/cdnsdk/listener/CdnListener;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/lenovo/cdnsdk/a/d$b;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/cdnsdk/a/d$b;-><init>(Lcom/lenovo/cdnsdk/a/d;Lcom/lenovo/cdnsdk/listener/CdnListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/lenovo/cdnsdk/listener/CdnListener;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x3ec

    invoke-interface {p0, v0}, Lcom/lenovo/cdnsdk/listener/CdnListener;->onError(I)V

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/cdnsdk/a/d;
    .locals 1

    const-class v0, Lcom/lenovo/cdnsdk/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lenovo/cdnsdk/a/d;

    return-object p0
.end method

.method public static values()[Lcom/lenovo/cdnsdk/a/d;
    .locals 1

    sget-object v0, Lcom/lenovo/cdnsdk/a/d;->b:[Lcom/lenovo/cdnsdk/a/d;

    invoke-virtual {v0}, [Lcom/lenovo/cdnsdk/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/cdnsdk/a/d;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/lenovo/cdnsdk/listener/CdnListener;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/cdnsdk/a/d$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/lenovo/cdnsdk/a/d$a;-><init>(Lcom/lenovo/cdnsdk/a/d;Ljava/lang/String;Lcom/lenovo/cdnsdk/listener/CdnListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
