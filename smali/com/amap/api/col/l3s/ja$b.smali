.class final Lcom/amap/api/col/l3s/ja$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field protected a:Z

.field private b:I

.field private final c:Z

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/ja$b;->b:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/ja$b;->a:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/ja$b;->c:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ja$b;->d:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ja$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/amap/api/col/l3s/ja$b;->b:I

    if-gtz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p1, p0, Lcom/amap/api/col/l3s/ja$b;->b:I

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/ja$b;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 5

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/ja$b;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-boolean v4, p0, Lcom/amap/api/col/l3s/ja$b;->a:Z

    if-eqz v4, :cond_4

    iget p0, p0, Lcom/amap/api/col/l3s/ja$b;->b:I

    if-gtz p0, :cond_1

    move p0, v2

    :cond_1
    if-lt p0, v2, :cond_2

    move p0, v1

    goto :goto_1

    :cond_2
    move p0, v3

    :goto_1
    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move p0, v3

    goto :goto_3

    :cond_4
    :goto_2
    move p0, v1

    :goto_3
    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    move p0, v1

    goto :goto_4

    :cond_5
    move p0, v3

    :goto_4
    if-eqz p0, :cond_6

    goto :goto_5

    :cond_6
    return v3

    :cond_7
    :goto_5
    return v1
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/ja$b;->d:Z

    return-void
.end method
