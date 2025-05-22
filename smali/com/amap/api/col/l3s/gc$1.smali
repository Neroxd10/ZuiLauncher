.class final Lcom/amap/api/col/l3s/gc$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/gc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/gc;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/gc;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/gc$1;->a:Lcom/amap/api/col/l3s/gc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/gc$1;->a:Lcom/amap/api/col/l3s/gc;

    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/col/l3s/gc;->a(Lcom/amap/api/col/l3s/gc;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
