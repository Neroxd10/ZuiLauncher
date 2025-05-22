.class public final Lcom/amap/api/col/l3s/fa$b;
.super Lcom/amap/api/col/l3s/dx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3s/dx<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/amap/api/col/l3s/fa;


# direct methods
.method protected constructor <init>(Lcom/amap/api/col/l3s/fa;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fa$b;->d:Lcom/amap/api/col/l3s/fa;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dx;-><init>()V

    return-void
.end method

.method private varargs c([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/fa$b;->d:Lcom/amap/api/col/l3s/fa;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fa;->e()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/fa$b;->d:Lcom/amap/api/col/l3s/fa;

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fa;->b(Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/amap/api/col/l3s/fa$b;->d:Lcom/amap/api/col/l3s/fa;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fa;->d()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/amap/api/col/l3s/fa$b;->d:Lcom/amap/api/col/l3s/fa;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fa;->b()V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/amap/api/col/l3s/fa$b;->d:Lcom/amap/api/col/l3s/fa;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fa;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/fa$b;->c([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
