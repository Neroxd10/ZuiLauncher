.class final Lcom/amap/api/col/l3s/cd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/cd$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/bz;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/cd$1;->a:Lcom/amap/api/col/l3s/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cd$1;->a:Lcom/amap/api/col/l3s/bz;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/amap/api/col/l3s/bz;->m()V

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/cd$1;->a:Lcom/amap/api/col/l3s/bz;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cd$1;->a:Lcom/amap/api/col/l3s/bz;

    invoke-interface {p0, p1, p2}, Lcom/amap/api/col/l3s/bz;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
