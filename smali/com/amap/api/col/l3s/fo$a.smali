.class public final Lcom/amap/api/col/l3s/fo$a;
.super Landroid/view/ViewGroup$LayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/fo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/autonavi/base/amap/mapcore/FPoint;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(IILcom/autonavi/base/amap/mapcore/FPoint;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fo$a;->a:Lcom/autonavi/base/amap/mapcore/FPoint;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/fo$a;->b:Z

    iput p1, p0, Lcom/amap/api/col/l3s/fo$a;->c:I

    iput p1, p0, Lcom/amap/api/col/l3s/fo$a;->d:I

    const/16 p1, 0x33

    iput p1, p0, Lcom/amap/api/col/l3s/fo$a;->e:I

    iput-object p3, p0, Lcom/amap/api/col/l3s/fo$a;->a:Lcom/autonavi/base/amap/mapcore/FPoint;

    iput p4, p0, Lcom/amap/api/col/l3s/fo$a;->c:I

    iput p5, p0, Lcom/amap/api/col/l3s/fo$a;->d:I

    iput p6, p0, Lcom/amap/api/col/l3s/fo$a;->e:I

    return-void
.end method
