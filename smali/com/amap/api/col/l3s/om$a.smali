.class final Lcom/amap/api/col/l3s/om$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/om;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/amap/api/col/l3s/of;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/om$a;->a:Lcom/amap/api/col/l3s/of;

    iput-object v0, p0, Lcom/amap/api/col/l3s/om$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/amap/api/col/l3s/of;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/om$a;->a:Lcom/amap/api/col/l3s/of;

    return-object p0
.end method

.method public final a(Lcom/amap/api/col/l3s/of;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/om$a;->a:Lcom/amap/api/col/l3s/of;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/om$a;->b:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "##"

    const-string v1, "#"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/om$a;->b:Ljava/lang/String;

    return-object p0
.end method
