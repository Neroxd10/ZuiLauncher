.class final Lcom/amap/api/col/l3s/fm$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/fm;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/amap/api/col/l3s/fm;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/fm;I)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fm$3;->b:Lcom/amap/api/col/l3s/fm;

    iput p2, p0, Lcom/amap/api/col/l3s/fm$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fm$3;->b:Lcom/amap/api/col/l3s/fm;

    iget p0, p0, Lcom/amap/api/col/l3s/fm$3;->a:I

    invoke-static {v0}, Lcom/amap/api/col/l3s/fm;->b(Lcom/amap/api/col/l3s/fm;)I

    move-result v1

    mul-int/2addr p0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return-void
.end method
