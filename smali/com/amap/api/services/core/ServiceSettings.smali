.class public Lcom/amap/api/services/core/ServiceSettings;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CHINESE:Ljava/lang/String; = "zh-CN"

.field public static final ENGLISH:Ljava/lang/String; = "en"

.field public static final HTTP:I = 0x1

.field public static final HTTPS:I = 0x2

.field private static c:Lcom/amap/api/services/core/ServiceSettings;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "zh-CN"

    iput-object v0, p0, Lcom/amap/api/services/core/ServiceSettings;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/core/ServiceSettings;->b:I

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/amap/api/services/core/ServiceSettings;->d:I

    iput v0, p0, Lcom/amap/api/services/core/ServiceSettings;->e:I

    return-void
.end method

.method public static getInstance()Lcom/amap/api/services/core/ServiceSettings;
    .locals 1

    sget-object v0, Lcom/amap/api/services/core/ServiceSettings;->c:Lcom/amap/api/services/core/ServiceSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/services/core/ServiceSettings;

    invoke-direct {v0}, Lcom/amap/api/services/core/ServiceSettings;-><init>()V

    sput-object v0, Lcom/amap/api/services/core/ServiceSettings;->c:Lcom/amap/api/services/core/ServiceSettings;

    :cond_0
    sget-object v0, Lcom/amap/api/services/core/ServiceSettings;->c:Lcom/amap/api/services/core/ServiceSettings;

    return-object v0
.end method


# virtual methods
.method public destroyInnerAsynThreadPool()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/hr;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ServiceSettings"

    const-string v1, "destroyInnerAsynThreadPool"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getConnectionTimeOut()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/core/ServiceSettings;->d:I

    return p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/core/ServiceSettings;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getProtocol()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/core/ServiceSettings;->b:I

    return p0
.end method

.method public getSoTimeOut()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/core/ServiceSettings;->e:I

    return p0
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/amap/api/col/l3s/iw;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setConnectionTimeOut(I)V
    .locals 1

    const/16 v0, 0x1388

    if-ge p1, v0, :cond_0

    iput v0, p0, Lcom/amap/api/services/core/ServiceSettings;->d:I

    return-void

    :cond_0
    const/16 v0, 0x7530

    if-le p1, v0, :cond_1

    iput v0, p0, Lcom/amap/api/services/core/ServiceSettings;->d:I

    return-void

    :cond_1
    iput p1, p0, Lcom/amap/api/services/core/ServiceSettings;->d:I

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/ServiceSettings;->a:Ljava/lang/String;

    return-void
.end method

.method public setProtocol(I)V
    .locals 1

    iput p1, p0, Lcom/amap/api/services/core/ServiceSettings;->b:I

    invoke-static {}, Lcom/amap/api/col/l3s/ja;->a()Lcom/amap/api/col/l3s/ja;

    move-result-object p1

    iget p0, p0, Lcom/amap/api/services/core/ServiceSettings;->b:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/ja;->a(Z)V

    return-void
.end method

.method public setSoTimeOut(I)V
    .locals 1

    const/16 v0, 0x1388

    if-ge p1, v0, :cond_0

    iput v0, p0, Lcom/amap/api/services/core/ServiceSettings;->e:I

    return-void

    :cond_0
    const/16 v0, 0x7530

    if-le p1, v0, :cond_1

    iput v0, p0, Lcom/amap/api/services/core/ServiceSettings;->e:I

    return-void

    :cond_1
    iput p1, p0, Lcom/amap/api/services/core/ServiceSettings;->e:I

    return-void
.end method
