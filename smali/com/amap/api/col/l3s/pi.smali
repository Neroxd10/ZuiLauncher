.class public Lcom/amap/api/col/l3s/pi;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/CharBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/col/l3s/pi$1;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/pi$1;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3s/pi;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/amap/api/col/l3s/pi$2;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/pi$2;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3s/pi;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3s/pi;->c:Ljava/lang/ThreadLocal;

    return-void
.end method
