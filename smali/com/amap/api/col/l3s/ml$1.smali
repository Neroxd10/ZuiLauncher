.class final Lcom/amap/api/col/l3s/ml$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amap/api/col/l3s/np;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/ml;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/ml;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ml$1;->a:Lcom/amap/api/col/l3s/ml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/amap/api/col/l3s/np;

    check-cast p2, Lcom/amap/api/col/l3s/np;

    iget p0, p2, Lcom/amap/api/col/l3s/np;->c:I

    iget p1, p1, Lcom/amap/api/col/l3s/np;->c:I

    sub-int/2addr p0, p1

    return p0
.end method
