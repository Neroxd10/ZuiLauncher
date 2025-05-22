.class final Lcom/amap/api/col/l3s/k$b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/k$b;->a(Lcom/amap/api/col/l3s/ax;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/fm;

.field final synthetic b:Lcom/amap/api/col/l3s/k$b;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k$b;Lcom/amap/api/col/l3s/fm;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$b$1;->b:Lcom/amap/api/col/l3s/k$b;

    iput-object p2, p0, Lcom/amap/api/col/l3s/k$b$1;->a:Lcom/amap/api/col/l3s/fm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$b$1;->a:Lcom/amap/api/col/l3s/fm;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/fm;->a(Z)V

    return-void
.end method
