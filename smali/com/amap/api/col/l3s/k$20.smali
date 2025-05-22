.class final Lcom/amap/api/col/l3s/k$20;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/k;->setIndoorEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/amap/api/col/l3s/k;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$20;->b:Lcom/amap/api/col/l3s/k;

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/k$20;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k$20;->a:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$20;->b:Lcom/amap/api/col/l3s/k;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->showIndoorSwitchControlsEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$20;->b:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->c(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/fo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$20;->b:Lcom/amap/api/col/l3s/k;

    invoke-static {p0}, Lcom/amap/api/col/l3s/k;->c(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/fo;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/fo;->i(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method
