.class public final Lcom/amap/api/col/l3s/nt;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field public d:[B

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/nt;->b:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/nt;->c:Z

    const/16 v0, 0x2710

    iput v0, p0, Lcom/amap/api/col/l3s/nt;->e:I

    return-void
.end method
