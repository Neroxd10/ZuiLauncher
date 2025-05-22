.class public final enum Lcom/lenovo/cdnsdk/CdnSdk;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lenovo/cdnsdk/CdnSdk;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFUALT_PAGE:I = 0x1

.field public static final enum INIT:Lcom/lenovo/cdnsdk/CdnSdk;

.field private static final synthetic a:[Lcom/lenovo/cdnsdk/CdnSdk;


# instance fields
.field public app:Landroid/app/Application;

.field public mobileDeviceId:Ljava/lang/String;

.field public mobileType:Ljava/lang/String;

.field public positionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lenovo/cdnsdk/CdnSdk;

    const-string v1, "INIT"

    invoke-direct {v0, v1}, Lcom/lenovo/cdnsdk/CdnSdk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/cdnsdk/CdnSdk;->INIT:Lcom/lenovo/cdnsdk/CdnSdk;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/lenovo/cdnsdk/CdnSdk;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/lenovo/cdnsdk/CdnSdk;->a:[Lcom/lenovo/cdnsdk/CdnSdk;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/cdnsdk/CdnSdk;
    .locals 1

    const-class v0, Lcom/lenovo/cdnsdk/CdnSdk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lenovo/cdnsdk/CdnSdk;

    return-object p0
.end method

.method public static values()[Lcom/lenovo/cdnsdk/CdnSdk;
    .locals 1

    sget-object v0, Lcom/lenovo/cdnsdk/CdnSdk;->a:[Lcom/lenovo/cdnsdk/CdnSdk;

    invoke-virtual {v0}, [Lcom/lenovo/cdnsdk/CdnSdk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/cdnsdk/CdnSdk;

    return-object v0
.end method


# virtual methods
.method public final clickReport(Ljava/lang/String;I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "clickReport:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/cdnsdk/b/e;->b(Ljava/lang/String;)V

    sget p0, Lcom/lenovo/cdnsdk/a/b;->a:I

    const/4 p0, 0x0

    invoke-static {p1, p2, p0}, Lcom/lenovo/cdnsdk/a/b;->a(Ljava/lang/String;ILcom/lenovo/cdnsdk/listener/CdnListener;)V

    return-void
.end method

.method public final clickReport(Ljava/lang/String;ILcom/lenovo/cdnsdk/listener/CdnListener;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "clickReport:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/cdnsdk/b/e;->b(Ljava/lang/String;)V

    sget p0, Lcom/lenovo/cdnsdk/a/b;->a:I

    invoke-static {p1, p2, p3}, Lcom/lenovo/cdnsdk/a/b;->a(Ljava/lang/String;ILcom/lenovo/cdnsdk/listener/CdnListener;)V

    return-void
.end method

.method public final content(Ljava/lang/String;ILcom/lenovo/cdnsdk/listener/ContentListener;)V
    .locals 4

    if-ltz p2, :cond_2

    const/4 p0, 0x2

    if-gt p2, p0, :cond_2

    sget p0, Lcom/lenovo/cdnsdk/a/b;->a:I

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/lenovo/cdnsdk/CdnSdk;->INIT:Lcom/lenovo/cdnsdk/CdnSdk;

    invoke-virtual {v0, p1}, Lcom/lenovo/cdnsdk/CdnSdk;->reset(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/lenovo/cdnsdk/c/a$a;

    invoke-direct {v0}, Lcom/lenovo/cdnsdk/c/a$a;-><init>()V

    sget-object v1, Lcom/lenovo/cdnsdk/CdnSdk;->INIT:Lcom/lenovo/cdnsdk/CdnSdk;

    iget-object v1, v1, Lcom/lenovo/cdnsdk/CdnSdk;->positionId:Ljava/lang/String;

    iget-object v2, v0, Lcom/lenovo/cdnsdk/c/a$a;->a:Lcom/lenovo/cdnsdk/b/i;

    sget-object v3, Lcom/lenovo/cdnsdk/c/a$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/cdnsdk/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/lenovo/cdnsdk/CdnSdk;->INIT:Lcom/lenovo/cdnsdk/CdnSdk;

    iget-object v1, v1, Lcom/lenovo/cdnsdk/CdnSdk;->mobileDeviceId:Ljava/lang/String;

    iget-object v2, v0, Lcom/lenovo/cdnsdk/c/a$a;->a:Lcom/lenovo/cdnsdk/b/i;

    sget-object v3, Lcom/lenovo/cdnsdk/c/a$b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/cdnsdk/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/lenovo/cdnsdk/CdnSdk;->INIT:Lcom/lenovo/cdnsdk/CdnSdk;

    iget-object v1, v1, Lcom/lenovo/cdnsdk/CdnSdk;->mobileType:Ljava/lang/String;

    iget-object v2, v0, Lcom/lenovo/cdnsdk/c/a$a;->a:Lcom/lenovo/cdnsdk/b/i;

    sget-object v3, Lcom/lenovo/cdnsdk/c/a$b;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/cdnsdk/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/lenovo/cdnsdk/c/a$a;->a:Lcom/lenovo/cdnsdk/b/i;

    sget-object v2, Lcom/lenovo/cdnsdk/c/a$b;->c:Ljava/lang/String;

    const-string v3, "api"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/cdnsdk/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/lenovo/cdnsdk/c/a$a;->a:Lcom/lenovo/cdnsdk/b/i;

    sget-object v2, Lcom/lenovo/cdnsdk/c/a$b;->d:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/cdnsdk/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/cdnsdk/DeviceUtil;->getVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/lenovo/cdnsdk/c/a$a;->a:Lcom/lenovo/cdnsdk/b/i;

    sget-object v3, Lcom/lenovo/cdnsdk/c/a$b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/cdnsdk/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/lenovo/cdnsdk/CdnSdk;->INIT:Lcom/lenovo/cdnsdk/CdnSdk;

    iget-object v1, v1, Lcom/lenovo/cdnsdk/CdnSdk;->app:Landroid/app/Application;

    invoke-static {v1}, Lcom/lenovo/cdnsdk/DeviceUtil;->getNetworkState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/lenovo/cdnsdk/c/a$a;->a:Lcom/lenovo/cdnsdk/b/i;

    sget-object v3, Lcom/lenovo/cdnsdk/c/a$b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/cdnsdk/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/cdnsdk/DeviceUtil;->getModel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/lenovo/cdnsdk/c/a$a;->a:Lcom/lenovo/cdnsdk/b/i;

    sget-object v3, Lcom/lenovo/cdnsdk/c/a$b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/cdnsdk/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/lenovo/cdnsdk/c/a$a;->a:Lcom/lenovo/cdnsdk/b/i;

    sget-object v2, Lcom/lenovo/cdnsdk/c/a$b;->l:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/lenovo/cdnsdk/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, v0, Lcom/lenovo/cdnsdk/c/a$a;->a:Lcom/lenovo/cdnsdk/b/i;

    sget-object v1, Lcom/lenovo/cdnsdk/c/a$b;->j:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Lcom/lenovo/cdnsdk/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/cdnsdk/CdnSdk;->INIT:Lcom/lenovo/cdnsdk/CdnSdk;

    iget-object v1, v1, Lcom/lenovo/cdnsdk/CdnSdk;->app:Landroid/app/Application;

    invoke-static {v1}, Lcom/lenovo/cdnsdk/a/a;->a(Landroid/content/Context;)Lcom/lenovo/cdnsdk/a/a;

    invoke-static {p1}, Lcom/lenovo/cdnsdk/a/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/cdnsdk/a/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, v0, Lcom/lenovo/cdnsdk/c/a$a;->a:Lcom/lenovo/cdnsdk/b/i;

    sget-object v2, Lcom/lenovo/cdnsdk/c/a$b;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/lenovo/cdnsdk/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/cdnsdk/a/c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/lenovo/cdnsdk/b/c;->a(Ljava/lang/String;)Lcom/lenovo/cdnsdk/b/n;

    move-result-object p2

    iget-object v0, v0, Lcom/lenovo/cdnsdk/c/a$a;->a:Lcom/lenovo/cdnsdk/b/i;

    iget-object v1, p2, Lcom/lenovo/cdnsdk/b/n;->a:Lcom/lenovo/cdnsdk/b/i;

    invoke-virtual {v1, v0}, Lcom/lenovo/cdnsdk/b/i;->a(Lcom/lenovo/cdnsdk/b/i;)V

    new-instance v0, Lcom/lenovo/cdnsdk/a/b$1;

    const-class v1, Lcom/lenovo/cdnsdk/bean/ContenBean;

    invoke-direct {v0, p0, v1, p1, p3}, Lcom/lenovo/cdnsdk/a/b$1;-><init>(ILjava/lang/Class;Ljava/lang/String;Lcom/lenovo/cdnsdk/listener/ContentListener;)V

    iput-object v0, p2, Lcom/lenovo/cdnsdk/b/n;->c:Lcom/lenovo/cdnsdk/b/a;

    new-instance p0, Lcom/lenovo/cdnsdk/b/o;

    invoke-direct {p0}, Lcom/lenovo/cdnsdk/b/o;-><init>()V

    iput-object p0, p2, Lcom/lenovo/cdnsdk/b/n;->d:Lcom/lenovo/cdnsdk/b/o;

    const-string p0, "------------execute:"

    invoke-static {p0}, Lcom/lenovo/cdnsdk/b/e;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/cdnsdk/b/f;->a()Lcom/lenovo/cdnsdk/b/f;

    iget p0, p2, Lcom/lenovo/cdnsdk/b/n;->b:I

    new-instance p1, Lcom/lenovo/cdnsdk/b/n$3;

    invoke-direct {p1, p2}, Lcom/lenovo/cdnsdk/b/n$3;-><init>(Lcom/lenovo/cdnsdk/b/n;)V

    invoke-static {p0, p1}, Lcom/lenovo/cdnsdk/b/f;->a(ILjava/lang/Runnable;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "loadAction has to be the right value"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final feedback(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "feedback:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/cdnsdk/b/e;->b(Ljava/lang/String;)V

    sget p0, Lcom/lenovo/cdnsdk/a/b;->a:I

    const/4 p0, 0x0

    invoke-static {p1, p2, p0}, Lcom/lenovo/cdnsdk/a/b;->a(Ljava/lang/String;Ljava/util/List;Lcom/lenovo/cdnsdk/listener/CdnListener;)V

    return-void
.end method

.method public final feedback(Ljava/lang/String;Ljava/util/List;Lcom/lenovo/cdnsdk/listener/CdnListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lenovo/cdnsdk/listener/CdnListener;",
            ")V"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "feedback:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/cdnsdk/b/e;->b(Ljava/lang/String;)V

    sget p0, Lcom/lenovo/cdnsdk/a/b;->a:I

    invoke-static {p1, p2, p3}, Lcom/lenovo/cdnsdk/a/b;->a(Ljava/lang/String;Ljava/util/List;Lcom/lenovo/cdnsdk/listener/CdnListener;)V

    return-void
.end method

.method public final getSitePage(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/lenovo/cdnsdk/CdnSdk;->app:Landroid/app/Application;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/lenovo/cdnsdk/a/a;->a(Landroid/content/Context;)Lcom/lenovo/cdnsdk/a/a;

    invoke-static {p1}, Lcom/lenovo/cdnsdk/a/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/cdnsdk/a/a;->a(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final impression(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "impression:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/cdnsdk/b/e;->b(Ljava/lang/String;)V

    sget p0, Lcom/lenovo/cdnsdk/a/b;->a:I

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/lenovo/cdnsdk/a/b;->a(Ljava/lang/String;Lcom/lenovo/cdnsdk/listener/CdnListener;)V

    return-void
.end method

.method public final impression(Ljava/lang/String;Lcom/lenovo/cdnsdk/listener/CdnListener;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "impression:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/cdnsdk/b/e;->b(Ljava/lang/String;)V

    sget p0, Lcom/lenovo/cdnsdk/a/b;->a:I

    invoke-static {p1, p2}, Lcom/lenovo/cdnsdk/a/b;->a(Ljava/lang/String;Lcom/lenovo/cdnsdk/listener/CdnListener;)V

    return-void
.end method

.method public final init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/lenovo/cdnsdk/CdnSdk;->app:Landroid/app/Application;

    iput-object p2, p0, Lcom/lenovo/cdnsdk/CdnSdk;->positionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/cdnsdk/CdnSdk;->mobileDeviceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/cdnsdk/CdnSdk;->mobileType:Ljava/lang/String;

    invoke-static {p1}, Lcom/lenovo/cdnsdk/b/c;->a(Landroid/app/Application;)Lcom/lenovo/cdnsdk/b/c;

    invoke-static {p1}, Lcom/lenovo/cdnsdk/a/a;->a(Landroid/content/Context;)Lcom/lenovo/cdnsdk/a/a;

    invoke-static {}, Lcom/lenovo/cdnsdk/a/a;->a()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "positionId is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "mobileDeviceId is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reset()V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/cdnsdk/CdnSdk;->app:Landroid/app/Application;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/lenovo/cdnsdk/a/a;->a(Landroid/content/Context;)Lcom/lenovo/cdnsdk/a/a;

    invoke-static {}, Lcom/lenovo/cdnsdk/a/a;->a()V

    :cond_0
    return-void
.end method

.method public final reset(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/lenovo/cdnsdk/CdnSdk;->app:Landroid/app/Application;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/lenovo/cdnsdk/a/a;->a(Landroid/content/Context;)Lcom/lenovo/cdnsdk/a/a;

    move-result-object p0

    invoke-static {p1}, Lcom/lenovo/cdnsdk/a/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/cdnsdk/a/a;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
