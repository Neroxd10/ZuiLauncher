.class public final Lcom/amap/api/col/l3s/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/dp$a;
.implements Lcom/amap/api/col/l3s/j$a;
.implements Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
.implements Lcom/autonavi/base/amap/mapcore/interfaces/IAMapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/k$b;,
        Lcom/amap/api/col/l3s/k$c;,
        Lcom/amap/api/col/l3s/k$d;,
        Lcom/amap/api/col/l3s/k$a;
    }
.end annotation


# instance fields
.field private A:Lcom/autonavi/base/amap/api/mapcore/IProjectionDelegate;

.field private final B:Lcom/amap/api/col/l3s/aj;

.field private C:Z

.field private final D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

.field private E:Lcom/amap/api/col/l3s/fo;

.field private F:Lcom/amap/api/col/l3s/ai;

.field private G:Ljava/lang/Object;

.field private final H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

.field private I:Z

.field private J:I

.field private K:Z

.field private L:Lcom/amap/api/col/l3s/w;

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Lcom/amap/api/col/l3s/dc;

.field private Q:Lcom/amap/api/maps/LocationSource;

.field private R:Z

.field private S:Lcom/amap/api/maps/model/Marker;

.field private T:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:Z

.field protected a:Z

.field private volatile aA:Z

.field private volatile aB:Z

.field private aC:Z

.field private aD:Z

.field private aE:Ljava/util/concurrent/locks/Lock;

.field private aF:I

.field private aG:I

.field private aH:I

.field private aI:Lcom/amap/api/col/l3s/k$b;

.field private aJ:Lcom/amap/api/col/l3s/dl;

.field private aK:Lcom/amap/api/col/l3s/ab;

.field private aL:Lcom/amap/api/col/l3s/be;

.field private aM:Lcom/amap/api/col/l3s/j;

.field private aN:J

.field private aO:Lcom/amap/api/col/l3s/k$a;

.field private aP:Lcom/amap/api/col/l3s/k$a;

.field private aQ:Lcom/amap/api/col/l3s/k$a;

.field private aR:Lcom/amap/api/col/l3s/k$a;

.field private aS:Lcom/amap/api/col/l3s/k$a;

.field private aT:Lcom/amap/api/col/l3s/k$a;

.field private aU:Lcom/amap/api/col/l3s/k$a;

.field private aV:Lcom/amap/api/col/l3s/k$a;

.field private aW:Lcom/amap/api/col/l3s/k$a;

.field private aX:Lcom/amap/api/col/l3s/k$a;

.field private aY:Lcom/amap/api/col/l3s/k$a;

.field private aZ:Lcom/amap/api/col/l3s/k$a;

.field private aa:Landroid/graphics/Rect;

.field private ab:I

.field private ac:Lcom/amap/api/maps/model/MyTrafficStyle;

.field private ad:Ljava/lang/Thread;

.field private ae:Ljava/lang/Thread;

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:I

.field private aj:Lcom/amap/api/maps/CustomRenderer;

.field private final ak:Lcom/amap/api/col/l3s/ae;

.field private al:I

.field private am:I

.field private an:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/af;",
            ">;"
        }
    .end annotation
.end field

.field private ao:Lcom/amap/api/col/l3s/dn;

.field private ap:Lcom/amap/api/col/l3s/dp;

.field private aq:J

.field private ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

.field private as:Lcom/amap/api/col/l3s/x;

.field private at:Z

.field private au:F

.field private av:F

.field private aw:F

.field private ax:Z

.field private ay:Z

.field private az:Z

.field protected final b:Lcom/amap/api/col/l3s/ad;

.field private ba:Ljava/lang/Runnable;

.field private bb:Lcom/amap/api/col/l3s/k$a;

.field private bc:Lcom/amap/api/col/l3s/pf;

.field private bd:Ljava/lang/String;

.field private be:Ljava/lang/String;

.field private bf:Z

.field private bg:Z

.field private bh:I

.field private bi:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

.field private bj:J

.field private bk:Lcom/amap/api/col/l3s/ax;

.field private bl:[Lcom/autonavi/amap/mapcore/IPoint;

.field protected c:Lcom/autonavi/base/amap/mapcore/MapConfig;

.field protected d:Lcom/amap/api/col/l3s/ax;

.field e:Lcom/amap/api/col/l3s/eo;

.field protected f:Landroid/content/Context;

.field protected g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

.field public h:I

.field public i:I

.field protected final j:Landroid/os/Handler;

.field k:Landroid/graphics/Point;

.field l:Landroid/graphics/Rect;

.field protected m:Ljava/lang/String;

.field n:[F

.field o:[F

.field p:[F

.field q:[F

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:I

.field private u:Lcom/amap/api/col/l3s/o;

.field private v:Lcom/amap/api/col/l3s/p;

.field private w:Lcom/amap/api/maps/model/AMapGestureListener;

.field private x:Lcom/amap/api/col/l3s/ay;

.field private y:Lcom/amap/api/col/l3s/dh;

.field private z:Lcom/amap/api/maps/UiSettings;


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/col/l3s/k;-><init>(Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;Landroid/content/Context;Z)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->u:Lcom/amap/api/col/l3s/o;

    new-instance v1, Lcom/amap/api/col/l3s/p;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/p;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->y:Lcom/amap/api/col/l3s/dh;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->a:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->C:Z

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/k;->G:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->I:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->K:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->M:Z

    new-instance v2, Lcom/autonavi/base/amap/mapcore/MapConfig;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;-><init>(Z)V

    iput-object v2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->N:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->O:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->R:Z

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->S:Lcom/amap/api/maps/model/Marker;

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->T:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->U:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->V:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->W:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->X:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->Y:Z

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/k;->Z:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/k;->aa:Landroid/graphics/Rect;

    iput v3, p0, Lcom/amap/api/col/l3s/k;->ab:I

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->ac:Lcom/amap/api/maps/model/MyTrafficStyle;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->af:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->ag:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->ah:Z

    iput v1, p0, Lcom/amap/api/col/l3s/k;->ai:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/amap/api/col/l3s/k;->al:I

    iput v2, p0, Lcom/amap/api/col/l3s/k;->am:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->an:Ljava/util/List;

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->e:Lcom/amap/api/col/l3s/eo;

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/amap/api/col/l3s/k;->aq:J

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->at:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/amap/api/col/l3s/k;->au:F

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/amap/api/col/l3s/k;->av:F

    iput v4, p0, Lcom/amap/api/col/l3s/k;->aw:F

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/k;->ax:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->ay:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->az:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->aB:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->aC:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->aD:Z

    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->aE:Ljava/util/concurrent/locks/Lock;

    iput v1, p0, Lcom/amap/api/col/l3s/k;->aF:I

    new-instance v4, Lcom/amap/api/col/l3s/k$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/amap/api/col/l3s/k$1;-><init>(Lcom/amap/api/col/l3s/k;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    new-instance v4, Lcom/amap/api/col/l3s/k$11;

    invoke-direct {v4, p0}, Lcom/amap/api/col/l3s/k$11;-><init>(Lcom/amap/api/col/l3s/k;)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->aO:Lcom/amap/api/col/l3s/k$a;

    new-instance v4, Lcom/amap/api/col/l3s/k$21;

    invoke-direct {v4, p0}, Lcom/amap/api/col/l3s/k$21;-><init>(Lcom/amap/api/col/l3s/k;)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->aP:Lcom/amap/api/col/l3s/k$a;

    new-instance v4, Lcom/amap/api/col/l3s/k$32;

    invoke-direct {v4, p0}, Lcom/amap/api/col/l3s/k$32;-><init>(Lcom/amap/api/col/l3s/k;)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->aQ:Lcom/amap/api/col/l3s/k$a;

    new-instance v4, Lcom/amap/api/col/l3s/k$36;

    invoke-direct {v4, p0}, Lcom/amap/api/col/l3s/k$36;-><init>(Lcom/amap/api/col/l3s/k;)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->aR:Lcom/amap/api/col/l3s/k$a;

    new-instance v4, Lcom/amap/api/col/l3s/k$37;

    invoke-direct {v4, p0}, Lcom/amap/api/col/l3s/k$37;-><init>(Lcom/amap/api/col/l3s/k;)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->aS:Lcom/amap/api/col/l3s/k$a;

    new-instance v4, Lcom/amap/api/col/l3s/k$38;

    invoke-direct {v4, p0}, Lcom/amap/api/col/l3s/k$38;-><init>(Lcom/amap/api/col/l3s/k;)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->aT:Lcom/amap/api/col/l3s/k$a;

    new-instance v4, Lcom/amap/api/col/l3s/k$39;

    invoke-direct {v4, p0}, Lcom/amap/api/col/l3s/k$39;-><init>(Lcom/amap/api/col/l3s/k;)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->aU:Lcom/amap/api/col/l3s/k$a;

    new-instance v4, Lcom/amap/api/col/l3s/k$40;

    invoke-direct {v4, p0}, Lcom/amap/api/col/l3s/k$40;-><init>(Lcom/amap/api/col/l3s/k;)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->aV:Lcom/amap/api/col/l3s/k$a;

    new-instance v4, Lcom/amap/api/col/l3s/k$2;

    invoke-direct {v4, p0}, Lcom/amap/api/col/l3s/k$2;-><init>(Lcom/amap/api/col/l3s/k;)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->aW:Lcom/amap/api/col/l3s/k$a;

    new-instance v4, Lcom/amap/api/col/l3s/k$3;

    invoke-direct {v4, p0}, Lcom/amap/api/col/l3s/k$3;-><init>(Lcom/amap/api/col/l3s/k;)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->aX:Lcom/amap/api/col/l3s/k$a;

    new-instance v4, Lcom/amap/api/col/l3s/k$4;

    invoke-direct {v4, p0}, Lcom/amap/api/col/l3s/k$4;-><init>(Lcom/amap/api/col/l3s/k;)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->aY:Lcom/amap/api/col/l3s/k$a;

    new-instance v4, Lcom/amap/api/col/l3s/k$5;

    invoke-direct {v4, p0}, Lcom/amap/api/col/l3s/k$5;-><init>(Lcom/amap/api/col/l3s/k;)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->aZ:Lcom/amap/api/col/l3s/k$a;

    new-instance v4, Lcom/amap/api/col/l3s/k$6;

    invoke-direct {v4, p0}, Lcom/amap/api/col/l3s/k$6;-><init>(Lcom/amap/api/col/l3s/k;)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->ba:Ljava/lang/Runnable;

    new-instance v4, Lcom/amap/api/col/l3s/k$7;

    invoke-direct {v4, p0}, Lcom/amap/api/col/l3s/k$7;-><init>(Lcom/amap/api/col/l3s/k;)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->bb:Lcom/amap/api/col/l3s/k$a;

    const-string v4, ""

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->bd:Ljava/lang/String;

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->be:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->bf:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->bg:Z

    iput v1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    new-instance v4, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {v4}, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->bi:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->k:Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->l:Landroid/graphics/Rect;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/amap/api/col/l3s/k;->bj:J

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->bk:Lcom/amap/api/col/l3s/ax;

    const/16 v4, 0x10

    new-array v5, v4, [F

    iput-object v5, p0, Lcom/amap/api/col/l3s/k;->n:[F

    new-array v5, v4, [F

    iput-object v5, p0, Lcom/amap/api/col/l3s/k;->o:[F

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/amap/api/col/l3s/k;->p:[F

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->bl:[Lcom/autonavi/amap/mapcore/IPoint;

    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->q:[F

    const-string v0, "precision highp float;\nattribute vec3 aVertex;//\u9876\u70b9\u6570\u7ec4,\u4e09\u7ef4\u5750\u6807\nuniform mat4 aMVPMatrix;//mvp\u77e9\u9635\nvoid main(){\n  gl_Position = aMVPMatrix * vec4(aVertex, 1.0);\n}"

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->r:Ljava/lang/String;

    const-string v0, "//\u6709\u989c\u8272 \u6ca1\u6709\u7eb9\u7406\nprecision highp float;\nvoid main(){\n  gl_FragColor = vec4(1.0,0,0,1.0);\n}"

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->s:Ljava/lang/String;

    iput v2, p0, Lcom/amap/api/col/l3s/k;->t:I

    iput-object p2, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-static {p2}, Lcom/amap/api/col/l3s/fd;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    const-string v2, "init map delegate"

    invoke-static {v0, v2}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/col/l3s/pf;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/pf;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/pf;->a()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/pf;->b()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ka;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/amap/api/col/l3s/eh;->a()Lcom/amap/api/col/l3s/eh;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/l3s/eh;->a(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/amap/api/col/l3s/iu;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3s/u;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/dy;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/amap/api/col/l3s/x;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/x;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->as:Lcom/amap/api/col/l3s/x;

    new-instance v0, Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    new-instance v0, Lcom/autonavi/base/ae/gmap/GLMapRender;

    invoke-direct {v0, p0}, Lcom/autonavi/base/ae/gmap/GLMapRender;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    new-instance p1, Lcom/amap/api/col/l3s/aj;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/aj;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    new-instance p1, Lcom/amap/api/col/l3s/fo;

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/amap/api/col/l3s/fo;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    new-instance v0, Lcom/amap/api/col/l3s/k$c;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3s/k$c;-><init>(Lcom/amap/api/col/l3s/k;B)V

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3s/fo;->a(Lcom/amap/api/col/l3s/fm$a;)V

    new-instance p1, Lcom/amap/api/col/l3s/k$b;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/k$b;-><init>(Lcom/amap/api/col/l3s/k;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->aI:Lcom/amap/api/col/l3s/k$b;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "amap_param"

    const-string v2, "overlay_use_old_type"

    invoke-static {p2, v0, v2, p1}, Lcom/amap/api/col/l3s/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getPolyline2Enable()Z

    move-result v0

    xor-int/2addr v0, v3

    or-int/2addr p1, v0

    if-nez p1, :cond_0

    new-instance p1, Lcom/amap/api/col/l3s/z;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/z;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amap/api/col/l3s/aa;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/aa;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    :goto_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    new-instance p1, Lcom/amap/api/col/l3s/ad;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/ad;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    new-instance p1, Lcom/amap/api/col/l3s/w;

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/amap/api/col/l3s/w;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->L:Lcom/amap/api/col/l3s/w;

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {p1, v1}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->setRenderMode(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p1, v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->setRenderFps(F)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p1, p0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setMapListener(Lcom/autonavi/base/amap/mapcore/interfaces/IAMapListener;)V

    new-instance p1, Lcom/amap/api/col/l3s/ag;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/ag;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->A:Lcom/autonavi/base/amap/api/mapcore/IProjectionDelegate;

    new-instance p1, Lcom/amap/api/col/l3s/o;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/o;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->u:Lcom/amap/api/col/l3s/o;

    new-instance p1, Lcom/amap/api/col/l3s/dh;

    invoke-direct {p1, p0, p2}, Lcom/amap/api/col/l3s/dh;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->y:Lcom/amap/api/col/l3s/dh;

    new-instance p1, Lcom/amap/api/col/l3s/ay;

    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3s/ay;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->x:Lcom/amap/api/col/l3s/ay;

    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ay;->a(Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->x:Lcom/amap/api/col/l3s/ay;

    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->y:Lcom/amap/api/col/l3s/dh;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ay;->b(Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;)V

    new-instance p1, Lcom/amap/api/col/l3s/ae;

    invoke-direct {p1}, Lcom/amap/api/col/l3s/ae;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->ak:Lcom/amap/api/col/l3s/ae;

    new-instance p1, Lcom/amap/api/col/l3s/s;

    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/amap/api/col/l3s/s;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->ad:Ljava/lang/Thread;

    new-instance p1, Lcom/amap/api/col/l3s/az;

    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3s/az;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    new-instance p1, Lcom/amap/api/col/l3s/be;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/be;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->aL:Lcom/amap/api/col/l3s/be;

    new-instance p1, Lcom/amap/api/col/l3s/ab;

    invoke-direct {p1}, Lcom/amap/api/col/l3s/ab;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->aK:Lcom/amap/api/col/l3s/ab;

    new-instance p1, Lcom/amap/api/col/l3s/dn;

    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/amap/api/col/l3s/dn;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->ao:Lcom/amap/api/col/l3s/dn;

    new-instance p1, Lcom/amap/api/col/l3s/dp;

    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3s/dp;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->ap:Lcom/amap/api/col/l3s/dp;

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/dp;->a(Lcom/amap/api/col/l3s/dp$a;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/pf;->j()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p2, v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAbroadEnable(Z)V

    :cond_2
    if-eqz p3, :cond_3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v1}, Lcom/amap/api/maps/MapsInitializer;->setSupportRecycleView(Z)V

    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/pf;->j()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    move-object p3, p1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/amap/api/col/l3s/fo;->a(Z)V

    :cond_4
    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/pf;->j()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_5

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_5

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/k;->ai:I

    :cond_5
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isAbroadEnable()Z

    move-result v1

    :cond_6
    new-instance p1, Lcom/amap/api/col/l3s/j;

    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-direct {p1, p0, p2, v1}, Lcom/amap/api/col/l3s/j;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->aM:Lcom/amap/api/col/l3s/j;

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/j;->a(Lcom/amap/api/col/l3s/j$a;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/k;I)I
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/k;->al:I

    return p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/k;II)Lcom/amap/api/maps/model/Poi;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/k;->b(II)Lcom/amap/api/maps/model/Poi;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 1

    new-instance v0, Lcom/amap/api/col/l3s/k$12;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/k$12;-><init>(Lcom/amap/api/col/l3s/k;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized a(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)V
    .locals 12

    move-object v10, p0

    move v0, p3

    monitor-enter p0

    :try_start_0
    iget-boolean v1, v10, Lcom/amap/api/col/l3s/k;->aB:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v10, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v10, Lcom/amap/api/col/l3s/k;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, v10, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    iget-object v1, v10, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/fo;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v10, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/fo;->g(Ljava/lang/Boolean;)V

    iget-object v1, v10, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    :goto_0
    invoke-virtual {v1}, Lcom/amap/api/col/l3s/fo;->c()V

    goto :goto_1

    :cond_0
    iget-object v1, v10, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/fo;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v10, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/fo;->g(Ljava/lang/Boolean;)V

    iget-object v1, v10, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v11, Lcom/amap/api/col/l3s/k$13;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/col/l3s/k$13;-><init>(Lcom/amap/api/col/l3s/k;IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)V

    invoke-virtual {p0, v11}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v1, v10, Lcom/amap/api/col/l3s/k;->aQ:Lcom/amap/api/col/l3s/k$a;

    move v2, p1

    iput v2, v1, Lcom/amap/api/col/l3s/k$a;->g:I

    iget-object v1, v10, Lcom/amap/api/col/l3s/k;->aQ:Lcom/amap/api/col/l3s/k$a;

    move v2, p2

    iput v2, v1, Lcom/amap/api/col/l3s/k$a;->d:I

    iget-object v1, v10, Lcom/amap/api/col/l3s/k;->aQ:Lcom/amap/api/col/l3s/k$a;

    iput v0, v1, Lcom/amap/api/col/l3s/k$a;->e:I

    iget-object v0, v10, Lcom/amap/api/col/l3s/k;->aQ:Lcom/amap/api/col/l3s/k$a;

    move/from16 v1, p4

    iput v1, v0, Lcom/amap/api/col/l3s/k$a;->f:I

    iget-object v0, v10, Lcom/amap/api/col/l3s/k;->aQ:Lcom/amap/api/col/l3s/k$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/col/l3s/k$a;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(IILcom/autonavi/base/amap/mapcore/FPoint;)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/base/ae/gmap/GLMapState;->p20ToScreenPoint(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 10

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->R:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->S:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->T:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/high16 v1, 0x42700000    # 60.0f

    sub-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->T:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRealPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->T:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v3

    invoke-virtual {p0, v0, p1, v3}, Lcom/amap/api/col/l3s/k;->getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance p1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, v3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    add-double/2addr v4, v6

    iget-wide v6, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    iget-wide v6, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v8, v3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double/2addr v6, v8

    iget-wide v0, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v6, v0

    invoke-direct {p1, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->S:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    const-class v0, Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->S:Lcom/amap/api/maps/model/Marker;

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDrag(Lcom/amap/api/maps/model/Marker;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/k;Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/col/l3s/k$9;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/k$9;-><init>(Lcom/amap/api/col/l3s/k;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/k;Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/maps/model/CameraPosition;)V

    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->N:Z

    iput-boolean v0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->isUseAnchor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->anchorX:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->anchorY:I

    :cond_0
    iget v0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->width:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapWidth()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->width:I

    :cond_1
    iget v0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->height:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapHeight()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->height:I

    :cond_2
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iput-object p0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->mapConfig:Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;

    return-void
.end method

.method private a(Lcom/autonavi/base/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p0, :cond_0

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, p2, p3, p0}, Lcom/autonavi/base/ae/gmap/GLMapState;->screenToP20Point(IILandroid/graphics/Point;)V

    iget p1, p0, Landroid/graphics/Point;->x:I

    int-to-long p1, p1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-long v0, p0

    const/16 p0, 0x14

    invoke-static {p1, p2, v0, v1, p0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->pixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p0

    iget-wide p1, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iput-wide p1, p4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide p1, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iput-wide p1, p4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    :cond_0
    return-void
.end method

.method private a(Z[BZ)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setCustomStyleEnable(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isHideLogoEnable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/amap/api/col/l3s/aj;->setLogoEnable(Z)V

    :cond_1
    if-eqz p1, :cond_a

    invoke-virtual {p0, v2, v2}, Lcom/amap/api/col/l3s/k;->c(IZ)V

    new-instance p1, Lcom/amap/api/col/l3s/du;

    invoke-direct {p1}, Lcom/amap/api/col/l3s/du;-><init>()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ac:Lcom/amap/api/maps/model/MyTrafficStyle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ac:Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyTrafficStyle;->getTrafficRoadBackgroundColor()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ac:Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyTrafficStyle;->getTrafficRoadBackgroundColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3s/du;->a(I)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isProFunctionAuthEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCustomTextureResourcePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p1, p2, v1}, Lcom/amap/api/col/l3s/du;->a([BZ)Lcom/amap/api/col/l3s/dv;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/dv;->c()[Lcom/autonavi/base/ae/gmap/style/StyleItem;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3, v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setUseProFunction(Z)V

    goto :goto_1

    :cond_4
    move-object p2, v0

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/amap/api/col/l3s/du;->a(Ljava/lang/String;Z)Lcom/amap/api/col/l3s/dv;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/dv;->c()[Lcom/autonavi/base/ae/gmap/style/StyleItem;

    move-result-object v0

    :cond_6
    invoke-virtual {p1}, Lcom/amap/api/col/l3s/du;->a()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/du;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setCustomBackgroundColor(I)V

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/dv;->d()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->ap:Lcom/amap/api/col/l3s/dp;

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/dv;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p3, p0, Lcom/amap/api/col/l3s/k;->ap:Lcom/amap/api/col/l3s/dp;

    invoke-virtual {p3, p1}, Lcom/amap/api/col/l3s/dp;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->ap:Lcom/amap/api/col/l3s/dp;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/dp;->a(Lcom/amap/api/col/l3s/dv;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->ap:Lcom/amap/api/col/l3s/dp;

    invoke-static {}, Lcom/amap/api/col/l3s/ew;->a()Lcom/amap/api/col/l3s/ew;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/ew;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    invoke-direct {p0, v0, p3}, Lcom/amap/api/col/l3s/k;->a([Lcom/autonavi/base/ae/gmap/style/StyleItem;Z)V

    :cond_9
    return-void

    :cond_a
    invoke-virtual {p0, v2, v1}, Lcom/amap/api/col/l3s/k;->c(IZ)V

    const/4 v1, 0x1

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleMode()I

    move-result v2

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleTime()I

    move-result v3

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleState()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/amap/api/col/l3s/k;->a(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a([Lcom/autonavi/base/ae/gmap/style/StyleItem;Z)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    array-length p2, p1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    :goto_1
    if-eqz p2, :cond_2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p0

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/amap/api/col/l3s/k;->a(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/amap/api/col/l3s/ev;->a(Landroid/content/Context;Z)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/amap/api/col/l3s/ev;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method private a(II)Z
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/k;->c()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->N:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/aj;->isZoomInByScreenCenter()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->k:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->k:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->k:Landroid/graphics/Point;

    invoke-static {v1, p1}, Lcom/amap/api/col/l3s/ao;->a(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-static {v1, p1}, Lcom/amap/api/col/l3s/ao;->a(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/k;->animateCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string p2, "AMapDelegateImp"

    const-string v0, "onDoubleTap"

    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/k;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    return p0
.end method

.method private a(ZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/k;->bg:Z

    if-eqz p1, :cond_0

    const-string p0, "setCustomMapStyle \u548c setWorldVectorMapStyle \u4e0d\u80fd\u540c\u65f6\u4f7f\u7528\uff0csetCustomMapStyle\u5c06\u4e0d\u4f1a\u751f\u6548"

    :goto_0
    invoke-static {p0}, Lcom/amap/api/col/l3s/dz;->a(Ljava/lang/String;)V

    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/k;->bf:Z

    :cond_1
    if-eqz p2, :cond_3

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/k;->bf:Z

    if-eqz p1, :cond_2

    const-string p0, "setCustomMapStyle \u548c setWorldVectorMapStyle \u4e0d\u80fd\u540c\u65f6\u4f7f\u7528\uff0csetWorldVectorMapStyle\u5c06\u4e0d\u4f1a\u751f\u6548"

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/k;->bg:Z

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    return-object p0
.end method

.method private b(II)Lcom/amap/api/maps/model/Poi;
    .locals 12

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    const/16 v2, 0x14

    const/4 v3, 0x0

    if-nez v0, :cond_1

    :goto_0
    move-object v0, v1

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/16 v5, 0x19

    const/4 v6, 0x1

    invoke-virtual {v4, v6, p1, p2, v5}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getLabelBuffer(IIII)[B

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1, v3}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result p2

    if-lez p2, :cond_3

    move p2, v6

    goto :goto_1

    :cond_3
    move p2, v3

    :goto_1
    const/4 v4, 0x4

    move v5, v3

    :goto_2
    if-ge v5, p2, :cond_8

    new-instance v7, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;

    invoke-direct {v7}, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;-><init>()V

    invoke-static {p1, v4}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v8

    add-int/lit8 v4, v4, 0x4

    invoke-static {p1, v4}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v9

    add-int/lit8 v4, v4, 0x4

    iput v8, v7, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->x:I

    iget-object v8, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v9

    iput v8, v7, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->y:I

    invoke-static {p1, v4}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v8

    iput v8, v7, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->pixel20X:I

    add-int/lit8 v4, v4, 0x4

    invoke-static {p1, v4}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v8

    iput v8, v7, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->pixel20Y:I

    add-int/lit8 v4, v4, 0x4

    invoke-static {p1, v4}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v8

    iput v8, v7, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->pixel20Z:I

    add-int/lit8 v4, v4, 0x4

    invoke-static {p1, v4}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v8

    iput v8, v7, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->type:I

    add-int/lit8 v4, v4, 0x4

    invoke-static {p1, v4}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v8

    iput v8, v7, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->mSublayerId:I

    add-int/lit8 v4, v4, 0x4

    invoke-static {p1, v4}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v8

    iput v8, v7, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->timeStamp:I

    add-int/lit8 v4, v4, 0x4

    aget-byte v8, p1, v4

    if-eqz v8, :cond_4

    move v8, v6

    goto :goto_3

    :cond_4
    move v8, v3

    :goto_3
    iput-boolean v8, v7, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->mIsFouces:Z

    add-int/lit8 v4, v4, 0x1

    aget-byte v8, p1, v4

    if-nez v8, :cond_5

    iput-object v1, v7, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->poiid:Ljava/lang/String;

    goto :goto_5

    :cond_5
    const-string v8, ""

    move v9, v3

    :goto_4
    if-ge v9, v2, :cond_6

    add-int v10, v9, v4

    aget-byte v11, p1, v10

    if-eqz v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v8, p1, v10

    int-to-char v8, v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    iput-object v8, v7, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->poiid:Ljava/lang/String;

    :goto_5
    add-int/lit8 v4, v4, 0x14

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, p1, v4

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move v10, v3

    :goto_6
    if-ge v10, v4, :cond_7

    invoke-static {p1, v8}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getShort([BI)S

    move-result v11

    int-to-char v11, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move v4, v8

    goto/16 :goto_2

    :cond_8
    :goto_7
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;

    goto :goto_8

    :cond_9
    move-object p0, v1

    :goto_8
    if-eqz p0, :cond_a

    iget p1, p0, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->pixel20X:I

    int-to-long p1, p1

    iget v0, p0, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->pixel20Y:I

    int-to-long v3, v0

    invoke-static {p1, p2, v3, v4, v2}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->pixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    new-instance p2, Lcom/amap/api/maps/model/Poi;

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->name:Ljava/lang/String;

    new-instance v8, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v5, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->poiid:Ljava/lang/String;

    invoke-direct {p2, v0, v8, p0}, Lcom/amap/api/maps/model/Poi;-><init>(Ljava/lang/String;Lcom/amap/api/maps/model/LatLng;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :catchall_0
    :cond_a
    return-object v1
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->renderPause()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/k;->d(I)V

    return-void
.end method

.method private b(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/k;->c(Lcom/amap/api/maps/model/CameraPosition;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->Z:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/k;->Z:Z

    invoke-virtual {p0, v1, p1}, Lcom/amap/api/col/l3s/k;->b(IZ)V

    :cond_0
    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/amap/api/col/l3s/k;->Z:Z

    if-nez p1, :cond_2

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->Z:Z

    invoke-virtual {p0, v1, v1}, Lcom/amap/api/col/l3s/k;->b(IZ)V

    :cond_2
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    const-class v2, Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v3, p1, v2}, Lcom/amap/api/col/l3s/k;->getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance p1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v5, v2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {p1, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0, p1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getHitOverlay(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/Polyline;

    move-result-object p0

    if-eqz p0, :cond_1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    invoke-interface {v2, p0}, Lcom/amap/api/maps/AMap$OnPolylineClickListener;->onPolylineClick(Lcom/amap/api/maps/model/Polyline;)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_1
    return v0
.end method

.method private c()F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/fo;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    return-object p0
.end method

.method private c(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/k;->d(I)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->renderResume()V

    :cond_0
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/ad;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ad;->c()Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v2, Lcom/amap/api/maps/model/Marker;

    move-object v3, p1

    check-cast v3, Lcom/amap/api/col/l3s/db;

    invoke-direct {v2, v3}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    move-object v4, p1

    check-cast v4, Lcom/amap/api/col/l3s/db;

    invoke-virtual {v3, v4}, Lcom/amap/api/col/l3s/ad;->a(Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    const-class v4, Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    invoke-interface {v4, v2}, Lcom/amap/api/maps/AMap$OnMarkerClickListener;->onMarkerClick(Lcom/amap/api/maps/model/Marker;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/ad;->f()I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit v3

    return v1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    invoke-interface {v6, v2}, Lcom/amap/api/maps/AMap$OnMarkerClickListener;->onMarkerClick(Lcom/amap/api/maps/model/Marker;)Z

    move-result v6

    or-int/2addr v5, v6

    goto :goto_1

    :cond_4
    if-nez v5, :cond_6

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/ad;->f()I

    move-result v2

    if-gtz v2, :cond_5

    goto :goto_3

    :cond_5
    move v1, v5

    :goto_2
    monitor-exit v3

    goto :goto_4

    :cond_6
    :goto_3
    monitor-exit v3

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_7
    :goto_4
    move-object v2, p1

    check-cast v2, Lcom/amap/api/col/l3s/db;

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/k;->showInfoWindow(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->isViewMode()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRealPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v8

    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v5, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v2, p0

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/col/l3s/k;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {v8}, Lcom/amap/api/col/l3s/ao;->a(Landroid/graphics/Point;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/k;->moveCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    return v1

    :catchall_1
    move-exception p0

    const-string p1, "AMapDelegateImp"

    const-string v1, "onMarkerTap"

    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    return v0
.end method

.method private c(Lcom/amap/api/maps/model/CameraPosition;)Z
    .locals 2

    iget v0, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/high16 v1, 0x40c00000    # 6.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-boolean p1, p1, Lcom/amap/api/maps/model/CameraPosition;->isAbroad:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getClipRect()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/eq;->a([Lcom/autonavi/amap/mapcore/IPoint;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    return v1
.end method

.method private declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->an:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->an:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->an:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3s/af;

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/af;->k()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->an:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(I)V
    .locals 1

    new-instance v0, Lcom/amap/api/col/l3s/k$14;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/k$14;-><init>(Lcom/amap/api/col/l3s/k;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    const-class v2, Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->x:Lcom/amap/api/col/l3s/ay;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->x:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/ay;->c()Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;->onInfoWindowTap(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ad;->c()Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->isInfoWindowEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    return p1

    :cond_1
    new-instance v2, Lcom/amap/api/maps/model/Marker;

    check-cast p0, Lcom/amap/api/col/l3s/db;

    invoke-direct {v2, p0}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move p0, v0

    :goto_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p0, v3, :cond_2

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    invoke-interface {v3, v2}, Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/amap/api/maps/model/Marker;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :goto_2
    return p1

    :catchall_1
    :cond_4
    return v0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/k;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/k;->az:Z

    return p0
.end method

.method private e()V
    .locals 12

    const-class v0, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/k;->ah:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/k;->f()V

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/k;->ah:Z

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCurTileIds()[I

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getCurTileIDs(I[I)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v1, v4}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getViewMatrix()[F

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->getViewMatrix([F)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getProjectionMatrix()[F

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->getProjectionMatrix([F)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->updateFinalMatrix()V

    invoke-virtual {v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapGeoCenter()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v3

    iget-object v5, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget-wide v6, v3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-virtual {v5, v6, v7}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSX(D)V

    iget-object v5, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget-wide v6, v3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-virtual {v5, v6, v7}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSY(D)V

    iget-object v5, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSZ(F)V

    iget-object v5, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getCameraDegree()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSC(F)V

    iget-object v5, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapAngle()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSR(F)V

    iget-object v5, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isMapStateChange()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getSkyHeight()F

    move-result v1

    invoke-virtual {v5, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSkyHeight(F)V

    iget-wide v5, v3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v7, v3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    const/16 v1, 0x14

    invoke-static {v5, v6, v7, v8, v1}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->pixelsToLatLong(DDI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    new-instance v3, Lcom/amap/api/maps/model/CameraPosition;

    new-instance v11, Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v8, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget-object v5, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v5

    iget-object v6, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v6}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v6

    iget-object v7, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v7}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v7

    invoke-direct {v3, v11, v5, v6, v7}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v5, 0xa

    iput v5, v1, Landroid/os/Message;->what:I

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v4, p0, Lcom/amap/api/col/l3s/k;->az:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->redrawInfoWindow()V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/k;->f()V

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/aj;->isZoomControlsEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move v3, v2

    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    iget-object v6, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v6}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v6

    invoke-interface {v5, v6}, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;->invalidateZoomController(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getChangeGridRatio()D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v5, v7

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->b()V

    :cond_4
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/aj;->isCompassEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTiltChanged()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isBearingChanged()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v4, v2

    :cond_6
    :goto_2
    if-eqz v4, :cond_8

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move v3, v2

    :goto_3
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    invoke-interface {v4}, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;->invalidateCompassView()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    monitor-exit v1

    goto :goto_4

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/aj;->isScaleControlsEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_5
    :try_start_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    invoke-interface {v0}, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;->invalidateScaleView()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_a
    return-void

    :catchall_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->ay:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getAnimateionsCount()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getStateMessageCount()I

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->onChangeFinish()V

    :cond_c
    return-void
.end method

.method static synthetic e(Lcom/amap/api/col/l3s/k;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/k;->az:Z

    return v0
.end method

.method static synthetic f(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/ai;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    return-object p0
.end method

.method private f()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapRect([Lcom/autonavi/base/amap/mapcore/FPoint;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNewMapState(I)Lcom/autonavi/amap/api/mapcore/IGLMapState;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/ae/gmap/GLMapState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->recalculate()V

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->l:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapHeight()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/autonavi/base/ae/gmap/GLMapState;->getPixel20Bound(Landroid/graphics/Rect;II)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->l:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/autonavi/base/amap/mapcore/Rectangle;->updateRect(Landroid/graphics/Rect;II)V

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getGLUnitWithWin(I)F

    move-result v1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapPerPixelUnitLength(F)V

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private g()V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->isRenderPause()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->requestRender()V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/amap/api/col/l3s/k;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/k;->X:Z

    return p0
.end method

.method private h()V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->ag:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ae:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/q;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3s/q;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->ae:Ljava/lang/Thread;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ae:Ljava/lang/Thread;

    const-string v1, "AuthProThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ae:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/k;->ag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/amap/api/col/l3s/k;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/k;->X:Z

    return v0
.end method

.method static synthetic i(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/ay;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->x:Lcom/amap/api/col/l3s/ay;

    return-object p0
.end method

.method static synthetic j(Lcom/amap/api/col/l3s/k;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/k;->O:Z

    return p0
.end method

.method static synthetic k(Lcom/amap/api/col/l3s/k;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/k;->aG:I

    return p0
.end method

.method static synthetic l(Lcom/amap/api/col/l3s/k;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/k;->aH:I

    return p0
.end method

.method static synthetic m(Lcom/amap/api/col/l3s/k;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/k;->M:Z

    return p0
.end method

.method static synthetic n(Lcom/amap/api/col/l3s/k;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    return p0
.end method

.method static synthetic o(Lcom/amap/api/col/l3s/k;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/k;->J:I

    return p0
.end method

.method static synthetic p(Lcom/amap/api/col/l3s/k;)Lcom/autonavi/base/ae/gmap/GLMapRender;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    return-object p0
.end method

.method static synthetic q(Lcom/amap/api/col/l3s/k;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/k;->ah:Z

    return v0
.end method

.method static synthetic r(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/k$b;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aI:Lcom/amap/api/col/l3s/k$b;

    return-object p0
.end method

.method static synthetic s(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/ax;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->bk:Lcom/amap/api/col/l3s/ax;

    return-object p0
.end method

.method static synthetic t(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/aj;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/pf;->i()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(IIII)V
    .locals 8

    monitor-enter p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/amap/api/col/l3s/k;->a(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aB:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    new-instance v0, Lcom/amap/api/col/l3s/k$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/col/l3s/k$15;-><init>(Lcom/amap/api/col/l3s/k;IZ)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aS:Lcom/amap/api/col/l3s/k$a;

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/k$a;->c:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/k$a;->b:Z

    iput p1, p0, Lcom/amap/api/col/l3s/k$a;->g:I

    return-void
.end method

.method protected final a(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getChangedCounter()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->ay:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getAnimateionsCount()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getStateMessageCount()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->w:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->w:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-interface {v0}, Lcom/amap/api/maps/model/AMapGestureListener;->onMapStable()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->isEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_2

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    const-class v1, Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_5

    if-nez p1, :cond_3

    :try_start_2
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    const-string v2, "AMapDelegateImp"

    const-string v3, "cameraChangeFinish"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    invoke-interface {v2, p1}, Lcom/amap/api/maps/AMap$OnCameraChangeListener;->onCameraChangeFinish(Lcom/amap/api/maps/model/CameraPosition;)V

    goto :goto_1

    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    :cond_5
    :goto_2
    :try_start_6
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->resetChangedCounter()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_6
    return-void

    :catchall_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/amap/api/col/l3s/dv;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/k;->setCustomTextureResourcePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/dv;->c()[Lcom/autonavi/base/ae/gmap/style/StyleItem;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/k;->a([Lcom/autonavi/base/ae/gmap/style/StyleItem;Z)V

    :cond_0
    return-void
.end method

.method public final accelerateNetworkInChinese(Z)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/pf;->i()V

    :cond_0
    return-void
.end method

.method public final addArc(Lcom/amap/api/maps/model/ArcOptions;)Lcom/amap/api/maps/model/Arc;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    const-string v2, "ARC"

    invoke-interface {v1, v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/Arc;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-direct {v2, v3, p1, v1}, Lcom/amap/api/maps/model/Arc;-><init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/ArcOptions;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0, v1, v2, p1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->addOverlayObject(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOverlay;Lcom/amap/api/maps/model/BaseOptions;)Lcom/amap/api/maps/model/BaseOverlay;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/amap/api/maps/model/Arc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v2

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final addBuildingOverlay()Lcom/amap/api/maps/model/BuildingOverlay;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ev;->g(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    const-string v2, "BUILDINGOVERLAY"

    invoke-interface {v1, v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/BuildingOverlay;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-direct {v2, v3, v1}, Lcom/amap/api/maps/model/BuildingOverlay;-><init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "buildingOverlayTotalOptions"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v4, :cond_1

    instance-of v4, v3, Lcom/amap/api/maps/model/BaseOptions;

    if-eqz v4, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    check-cast v3, Lcom/amap/api/maps/model/BaseOptions;

    invoke-interface {p0, v1, v2, v3}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->addOverlayObject(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOverlay;Lcom/amap/api/maps/model/BaseOptions;)Lcom/amap/api/maps/model/BaseOverlay;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/amap/api/maps/model/BuildingOverlay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final addCircle(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/maps/model/Circle;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    const-string v2, "CIRCLE"

    invoke-interface {v1, v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/Circle;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-direct {v2, v3, p1, v1}, Lcom/amap/api/maps/model/Circle;-><init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/CircleOptions;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0, v1, v2, p1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->addOverlayObject(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOverlay;Lcom/amap/api/maps/model/BaseOptions;)Lcom/amap/api/maps/model/BaseOverlay;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/amap/api/maps/model/Circle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v2

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final addCrossVector(Lcom/amap/api/maps/model/CrossOverlayOptions;)Lcom/amap/api/maps/model/CrossOverlay;
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CrossOverlayOptions;->getRes()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;-><init>(ILandroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CrossOverlayOptions;->getAttribute()Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->setAttribute(Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;)V

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/amap/api/col/l3s/k$34;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/col/l3s/k$34;-><init>(Lcom/amap/api/col/l3s/k;Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;)V

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CrossOverlayOptions;->getRes()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->resumeMarker(Landroid/graphics/Bitmap;)V

    :cond_2
    new-instance p0, Lcom/amap/api/maps/model/CrossOverlay;

    invoke-direct {p0, p1, v0}, Lcom/amap/api/maps/model/CrossOverlay;-><init>(Lcom/amap/api/maps/model/CrossOverlayOptions;Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;)V

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final addGLModel(Lcom/amap/api/maps/model/GL3DModelOptions;)Lcom/amap/api/maps/model/GL3DModel;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->L:Lcom/amap/api/col/l3s/w;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/w;->a(Lcom/amap/api/maps/model/GL3DModelOptions;)Lcom/amap/api/maps/model/GL3DModel;

    move-result-object p0

    return-object p0
.end method

.method public final addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V
    .locals 7

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->N:Z

    iput-boolean v0, p2, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->isUseAnchor:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v0

    iput v0, p2, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->anchorX:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v0

    iput v0, p2, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->anchorY:I

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/aj;->isGestureScaleByMapCenter()Z

    move-result v4

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v5

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v6

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->addGestureMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final addGroundOverlay(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/amap/api/maps/model/GroundOverlay;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    const-string v2, "GROUNDOVERLAY"

    invoke-interface {v1, v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/GroundOverlay;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-direct {v2, v3, p1, v1}, Lcom/amap/api/maps/model/GroundOverlay;-><init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/GroundOverlayOptions;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0, v1, v2, p1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->addOverlayObject(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOverlay;Lcom/amap/api/maps/model/BaseOptions;)Lcom/amap/api/maps/model/BaseOverlay;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/amap/api/maps/model/GroundOverlay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v2

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final addHeatMapLayer(Lcom/amap/api/maps/model/HeatMapLayerOptions;)Lcom/amap/api/maps/model/HeatMapLayer;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    const-string v2, "HEATMAPLAYER"

    invoke-interface {v1, v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/HeatMapLayer;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-direct {v2, v3, p1, v1}, Lcom/amap/api/maps/model/HeatMapLayer;-><init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/HeatMapLayerOptions;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0, v1, v2, p1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->addOverlayObject(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOverlay;Lcom/amap/api/maps/model/BaseOptions;)Lcom/amap/api/maps/model/BaseOverlay;

    move-result-object p0

    check-cast p0, Lcom/amap/api/maps/model/HeatMapLayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ad;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/amap/api/col/l3s/fc;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addMarker failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/maps/model/MarkerOptions;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addMarkers(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/MarkerOptions;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/col/l3s/ad;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    sget-object p2, Lcom/amap/api/col/l3s/fc;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addMarkers failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addMultiPointOverlay(Lcom/amap/api/maps/model/MultiPointOverlayOptions;)Lcom/amap/api/maps/model/MultiPointOverlay;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aL:Lcom/amap/api/col/l3s/be;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/be;->a(Lcom/amap/api/maps/model/MultiPointOverlayOptions;)Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lcom/amap/api/maps/model/MultiPointOverlay;

    invoke-direct {p1, p0}, Lcom/amap/api/maps/model/MultiPointOverlay;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final addNaviRouteOverlay()Lcom/amap/api/maps/model/RouteOverlay;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addNavigateArrow(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/maps/model/NavigateArrow;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    const-string v2, "NAVIGATEARROW"

    invoke-interface {v1, v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/NavigateArrow;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-direct {v2, v3, p1, v1}, Lcom/amap/api/maps/model/NavigateArrow;-><init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/NavigateArrowOptions;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0, v1, v2, p1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->addOverlayObject(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOverlay;Lcom/amap/api/maps/model/BaseOptions;)Lcom/amap/api/maps/model/BaseOverlay;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/amap/api/maps/model/NavigateArrow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v2

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final addOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final addOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final addOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final addOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMapClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final addOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final addOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final addOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMapTouchListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final addOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final addOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final addOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final addOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnPOIClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final addOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final addOverlayTexture(ILcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getOverlayBundle(I)Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->addOverlayTexture(ILcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;)V

    iget v2, p2, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mId:I

    iget v3, p2, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mAnchor:I

    iget v4, p2, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mXRatio:F

    iget v5, p2, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mYRatio:F

    iget-object p0, p2, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object p0, p2, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;->addOverlayTextureItem(IIFFII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final addParticleOverlay(Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;)Lcom/amap/api/maps/model/particle/ParticleOverlay;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ev;->c(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    const-string v2, "PARTICLEOVERLAY"

    invoke-interface {v1, v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/particle/ParticleOverlay;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-direct {v2, v3, p1, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlay;-><init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0, v1, v2, p1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->addOverlayObject(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOverlay;Lcom/amap/api/maps/model/BaseOptions;)Lcom/amap/api/maps/model/BaseOverlay;

    move-result-object p0

    check-cast p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public final addPolygon(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/maps/model/Polygon;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    const-string v2, "POLYGON"

    invoke-interface {v1, v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/Polygon;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-direct {v2, v3, p1, v1}, Lcom/amap/api/maps/model/Polygon;-><init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/PolygonOptions;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0, v1, v2, p1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->addOverlayObject(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOverlay;Lcom/amap/api/maps/model/BaseOptions;)Lcom/amap/api/maps/model/BaseOverlay;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/amap/api/maps/model/Polygon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v2

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/amap/api/col/l3s/fc;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addPolygon failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/maps/model/PolygonOptions;)V

    return-object v0
.end method

.method public final addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    const-string v2, "POLYLINE"

    invoke-interface {v1, v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/Polyline;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-direct {v2, v3, p1, v1}, Lcom/amap/api/maps/model/Polyline;-><init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/PolylineOptions;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0, v1, v2, p1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->addOverlayObject(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOverlay;Lcom/amap/api/maps/model/BaseOptions;)Lcom/amap/api/maps/model/BaseOverlay;

    move-result-object p0

    check-cast p0, Lcom/amap/api/maps/model/Polyline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/amap/api/col/l3s/fc;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addPolyline failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/maps/model/PolylineOptions;)V

    return-object v0
.end method

.method public final addText(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ad;->a(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addTextureItem(Lcom/amap/api/col/l3s/af;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/col/l3s/af;->l()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->an:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->an:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addTileOverlay(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->G:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/col/l3s/ai;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/amap/api/col/l3s/ai;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v2, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps/model/TileProvider;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v1, v1, Lcom/amap/api/maps/model/HeatmapTileProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ev;->a(Landroid/content/Context;)V

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ai;->a(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :cond_2
    return-object v0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final afterAnimation()V
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->redrawInfoWindow()V

    return-void
.end method

.method public final afterDrawFrame(ILcom/autonavi/base/ae/gmap/GLMapState;)V
    .locals 2

    invoke-virtual {p2}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapZoomer()F

    move-result p2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->isInMapAction(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->isInMapAnimation(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    iget p1, p0, Lcom/amap/api/col/l3s/k;->am:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapRender;->setRenderFps(F)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p1, v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->setRenderFps(F)V

    :goto_1
    iget p1, p0, Lcom/amap/api/col/l3s/k;->au:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_3

    iput p2, p0, Lcom/amap/api/col/l3s/k;->au:F

    :cond_3
    iget-boolean p1, p0, Lcom/amap/api/col/l3s/k;->aD:Z

    if-nez p1, :cond_4

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->aD:Z

    :cond_4
    return-void
.end method

.method public final afterDrawLabel(ILcom/autonavi/base/ae/gmap/GLMapState;)V
    .locals 3

    invoke-direct {p0}, Lcom/amap/api/col/l3s/k;->e()V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/pf;->e()V

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->pushRendererState()V

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ai;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    iget p2, p0, Lcom/amap/api/col/l3s/k;->ai:I

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->draw(ZI)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    add-int/lit8 p1, p1, 0x1

    :goto_1
    iput p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aL:Lcom/amap/api/col/l3s/be;

    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getViewMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getProjectionMatrix()[F

    move-result-object v2

    invoke-virtual {p1, p2, v1, v2}, Lcom/amap/api/col/l3s/be;->a(Lcom/autonavi/base/amap/mapcore/MapConfig;[F[F)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    add-int/lit8 p1, p1, 0x1

    :goto_2
    iput p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    :cond_6
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->L:Lcom/amap/api/col/l3s/w;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/w;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    goto :goto_3

    :cond_7
    iget p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    add-int/lit8 p1, p1, 0x1

    :goto_3
    iput p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    :cond_8
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3s/ad;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    goto :goto_4

    :cond_9
    iget p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    add-int/lit8 p1, p1, 0x1

    :goto_4
    iput p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    :cond_a
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->y:Lcom/amap/api/col/l3s/dh;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/amap/api/col/l3s/dh;->a(II)Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    goto :goto_5

    :cond_b
    iget p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    add-int/lit8 p1, p1, 0x1

    :goto_5
    iput p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    :cond_c
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->popRendererState()V

    :cond_d
    return-void
.end method

.method public final afterRendererOver(ILcom/autonavi/base/ae/gmap/GLMapState;)V
    .locals 0

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->pushRendererState()V

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ad;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    add-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->popRendererState()V

    :cond_3
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aj:Lcom/amap/api/maps/CustomRenderer;

    if-eqz p0, :cond_4

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_4
    return-void
.end method

.method public final animateCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/k;->animateCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V

    return-void
.end method

.method public final animateCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    .locals 3

    const-wide/16 v0, 0xfa

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/amap/api/col/l3s/k;->animateCameraWithDurationAndCallback(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    return-void
.end method

.method public final animateCameraWithCallback(Lcom/amap/api/maps/CameraUpdate;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/amap/api/col/l3s/k;->animateCameraWithDurationAndCallback(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    return-void
.end method

.method public final animateCameraWithDurationAndCallback(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amap/api/col/l3s/k;->animateCameraWithDurationAndCallback(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    return-void
.end method

.method public final animateCameraWithDurationAndCallback(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 1

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object p4, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->mCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

    iput-wide p2, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->mDuration:J

    iget-boolean p2, p0, Lcom/amap/api/col/l3s/k;->M:Z

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapHeight()I

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapWidth()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->interruptAnimation()V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/k;->a(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->addMessage(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/k;->moveCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V

    iget-object p0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->mCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->mCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

    invoke-interface {p0}, Lcom/amap/api/maps/AMap$CancelableCallback;->onFinish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method final b()V
    .locals 3

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b(IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aB:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    new-instance v0, Lcom/amap/api/col/l3s/k$16;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/col/l3s/k$16;-><init>(Lcom/amap/api/col/l3s/k;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aY:Lcom/amap/api/col/l3s/k$a;

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/k$a;->c:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/k$a;->b:Z

    iput p1, p0, Lcom/amap/api/col/l3s/k$a;->g:I

    return-void
.end method

.method public final beforeDrawLabel(ILcom/autonavi/base/ae/gmap/GLMapState;)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/k;->e()V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->pushRendererState()V

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    iget p2, p0, Lcom/amap/api/col/l3s/k;->ai:I

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->draw(ZI)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    add-int/2addr p1, v0

    :goto_0
    iput p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->popRendererState()V

    :cond_2
    return-void
.end method

.method public final c(IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aB:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    new-instance v0, Lcom/amap/api/col/l3s/k$17;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/col/l3s/k$17;-><init>(Lcom/amap/api/col/l3s/k;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->bb:Lcom/amap/api/col/l3s/k$a;

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/k$a;->c:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/k$a;->b:Z

    iput p1, p0, Lcom/amap/api/col/l3s/k$a;->g:I

    return-void
.end method

.method public final calculateZoomToSpanLevel(IIIILcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/amap/api/maps/model/LatLng;",
            "Lcom/amap/api/maps/model/LatLng;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-ne p1, p2, :cond_0

    if-ne p2, p3, :cond_0

    if-ne p3, p4, :cond_0

    iget-wide v0, p5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v2, p6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p5, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    new-instance p1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMaxZoomLevel()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {p1, p0, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-nez v1, :cond_2

    new-instance v1, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    invoke-virtual {v1, p5}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-virtual {v1, p6}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    new-instance p5, Lcom/autonavi/base/ae/gmap/GLMapState;

    const/4 p6, 0x1

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNativeInstance()J

    move-result-wide v2

    invoke-direct {p5, p6, v2, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;-><init>(IJ)V

    invoke-virtual {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapHeight()I

    move-result v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Lcom/amap/api/col/l3s/ex;->a(Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;IIIILcom/amap/api/maps/model/LatLngBounds;II)Landroid/util/Pair;

    move-result-object p0

    invoke-virtual {p5}, Lcom/autonavi/base/ae/gmap/GLMapState;->recycle()V

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, Lcom/autonavi/amap/mapcore/IPoint;

    iget p3, p3, Landroid/graphics/Point;->x:I

    check-cast p2, Lcom/autonavi/amap/mapcore/IPoint;

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p3, p2, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance p2, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    new-instance p3, Lcom/amap/api/maps/model/LatLng;

    iget-wide p4, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v0, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {p3, p4, p5, v0, v1}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p2, p0, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide p1

    double-to-int p1, p1

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2, p0}, Lcom/autonavi/base/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance p1, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-instance p3, Lcom/amap/api/maps/model/LatLng;

    iget-wide p4, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {p3, p4, p5, v0, v1}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object p1
.end method

.method public final canShowIndoorSwitch()Z
    .locals 3

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getZoomLevel()F

    move-result v0

    const/high16 v1, 0x41880000    # 17.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->d:Lcom/amap/api/col/l3s/ax;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/api/col/l3s/ax;->g:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->d:Lcom/amap/api/col/l3s/ax;

    iget-object v1, v1, Lcom/amap/api/col/l3s/ax;->g:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2, v1, v0}, Lcom/amap/api/col/l3s/k;->a(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aa:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final canStopMapRender()Z
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->canStopMapRender(I)Z

    :cond_0
    return v0
.end method

.method public final changeGLOverlayIndex()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->changeOverlayIndex()V

    return-void
.end method

.method public final changeLogoIconStyle(Ljava/lang/String;ZI)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/api/col/l3s/fo;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/aj;->requestRefreshLogo()V

    :cond_1
    return-void
.end method

.method public final changeMapLogo(IZ)V
    .locals 1

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    const-class v0, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-nez p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fo;->g(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public final changeSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/amap/api/col/l3s/k;->h:I

    iput p2, p0, Lcom/amap/api/col/l3s/k;->i:I

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapWidth(I)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0, p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapHeight(I)V

    :cond_0
    return-void
.end method

.method public final changeSurface(ILjavax/microedition/khronos/opengles/GL10;II)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    sget-object v5, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "changeSurface "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/amap/api/col/l3s/k;->aD:Z

    iget-boolean v6, v1, Lcom/amap/api/col/l3s/k;->aA:Z

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v2, v6}, Lcom/amap/api/col/l3s/k;->createSurface(ILjavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_0
    iget-object v6, v1, Lcom/amap/api/col/l3s/k;->as:Lcom/amap/api/col/l3s/x;

    if-eqz v6, :cond_2

    iget-object v7, v1, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    if-eqz v7, :cond_2

    iget v7, v1, Lcom/amap/api/col/l3s/k;->h:I

    invoke-virtual {v6}, Lcom/amap/api/col/l3s/x;->b()I

    move-result v6

    if-ne v7, v6, :cond_1

    iget v6, v1, Lcom/amap/api/col/l3s/k;->i:I

    iget-object v7, v1, Lcom/amap/api/col/l3s/k;->as:Lcom/amap/api/col/l3s/x;

    invoke-virtual {v7}, Lcom/amap/api/col/l3s/x;->c()I

    move-result v7

    if-eq v6, v7, :cond_2

    :cond_1
    iget-object v6, v1, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz v6, :cond_2

    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v6, v1, Lcom/amap/api/col/l3s/k;->as:Lcom/amap/api/col/l3s/x;

    iget v8, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v6, v8, v7}, Lcom/amap/api/col/l3s/x;->a(II)V

    :cond_2
    iput v3, v1, Lcom/amap/api/col/l3s/k;->h:I

    iput v4, v1, Lcom/amap/api/col/l3s/k;->i:I

    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/amap/api/col/l3s/k;->ah:Z

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, v1, Lcom/amap/api/col/l3s/k;->aa:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    iget v8, v1, Lcom/amap/api/col/l3s/k;->h:I

    iget v9, v1, Lcom/amap/api/col/l3s/k;->i:I

    invoke-direct {v7, v5, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v8, v1, Lcom/amap/api/col/l3s/k;->h:I

    iget v9, v1, Lcom/amap/api/col/l3s/k;->i:I

    iget-object v10, v1, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v10, :cond_4

    if-ltz v0, :cond_4

    invoke-virtual {v10, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getEngineIDWithType(I)I

    move-result v0

    iget-object v10, v1, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v10, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->isEngineCreated(I)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v1, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v11, v1, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v8, v9, v10}, Lcom/autonavi/base/ae/gmap/GLMapState;->calMapZoomScalefactor(III)F

    move-result v10

    iput v10, v1, Lcom/amap/api/col/l3s/k;->av:F

    new-instance v10, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;

    invoke-direct {v10}, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;-><init>()V

    iput v0, v10, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->engineId:I

    iget v12, v7, Landroid/graphics/Rect;->left:I

    iput v12, v10, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->x:I

    iget v12, v7, Landroid/graphics/Rect;->top:I

    iput v12, v10, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->y:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v12

    iput v12, v10, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->width:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v10, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->height:I

    iput v8, v10, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->screenWidth:I

    iput v9, v10, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->screenHeight:I

    iput v11, v10, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->screenScale:F

    iget v7, v1, Lcom/amap/api/col/l3s/k;->aw:F

    mul-float/2addr v7, v11

    iput v7, v10, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->textScale:F

    iget v7, v1, Lcom/amap/api/col/l3s/k;->av:F

    iput v7, v10, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->mapZoomScale:F

    const/4 v7, 0x3

    iput v7, v10, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->taskThreadCount:I

    iget-object v7, v1, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v7, v10}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->createAMapEngineWithFrame(Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;)V

    iget-object v7, v1, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v7, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v7

    iget-object v8, v1, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapZoomer(F)V

    iget-object v8, v1, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/autonavi/base/ae/gmap/GLMapState;->setCameraDegree(F)V

    iget-object v8, v1, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapAngle(F)V

    iget-object v8, v1, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v8

    iget-object v10, v1, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v10}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapGeoCenter(DD)V

    iget-object v8, v1, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v8, v0, v7}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setMapState(ILcom/autonavi/base/ae/gmap/GLMapState;)V

    new-instance v7, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;

    invoke-direct {v7, v0, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;-><init>(ILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iget-object v8, v1, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v8, v0, v7}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setOvelayBundle(ILcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;)V

    goto :goto_0

    :cond_3
    iget v12, v7, Landroid/graphics/Rect;->left:I

    iget v13, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v15

    iget-object v10, v1, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v10, :cond_5

    move v11, v0

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setServiceViewRect(IIIIIII)V

    goto :goto_0

    :cond_4
    move v0, v5

    :cond_5
    :goto_0
    iput v0, v1, Lcom/amap/api/col/l3s/k;->J:I

    sget-object v0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    const-string v7, "create engine with frame complete"

    invoke-static {v0, v7}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/k;->aB:Z

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_6

    iget v7, v1, Lcom/amap/api/col/l3s/k;->av:F

    invoke-virtual {v0, v7}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapZoomScale(F)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0, v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapWidth(I)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0, v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapHeight(I)V

    :cond_6
    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v7, v1, Lcom/amap/api/col/l3s/k;->J:I

    invoke-virtual {v0, v7, v5}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setIndoorEnable(IZ)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v7, v1, Lcom/amap/api/col/l3s/k;->J:I

    invoke-virtual {v0, v7, v5}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setSimple3DEnable(IZ)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v7, v1, Lcom/amap/api/col/l3s/k;->J:I

    invoke-virtual {v0, v7, v5}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setStyleChangeGradualEnable(IZ)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v5, v1, Lcom/amap/api/col/l3s/k;->J:I

    invoke-virtual {v0, v5}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->initNativeTexture(I)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const-string v5, "{\"bounds\" : [{\"x2\" : 235405312,\"x1\" : 188874751,\"y2\" : 85065727,\"y1\" : 122421247}],\"sublyr\" : [{\"type\" : 4,\"sid\" : 9000006,\"zlevel\" : 2}],\"id\" : 9006,\"minzoom\" : 6,\"update_period\" : 90,\"maxzoom\" : 20,\"cachemode\" : 2,\"url\" : \"http://mpsapi.amap.com/ws/mps/lyrdata/ugc/\"}"

    invoke-virtual {v0, v5}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->initMapOpenLayer(Ljava/lang/String;)V

    :cond_7
    monitor-enter p0

    :try_start_0
    iput-boolean v6, v1, Lcom/amap/api/col/l3s/k;->aB:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/k;->N:Z

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    shr-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAnchorX(I)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    shr-int/lit8 v5, v4, 0x1

    goto :goto_1

    :cond_8
    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget v5, v1, Lcom/amap/api/col/l3s/k;->aG:I

    add-int/lit8 v7, v3, -0x1

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAnchorX(I)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget v5, v1, Lcom/amap/api/col/l3s/k;->aH:I

    add-int/lit8 v7, v4, -0x1

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_1
    invoke-virtual {v0, v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAnchorY(I)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v5, v1, Lcom/amap/api/col/l3s/k;->J:I

    iget-object v7, v1, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v7}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v7

    iget-object v8, v1, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v8

    invoke-virtual {v0, v5, v7, v8}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setProjectionCenter(III)V

    iput-boolean v6, v1, Lcom/amap/api/col/l3s/k;->a:Z

    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->aY:Lcom/amap/api/col/l3s/k$a;

    iget-boolean v5, v0, Lcom/amap/api/col/l3s/k$a;->b:Z

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/k$a;->run()V

    :cond_9
    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->aQ:Lcom/amap/api/col/l3s/k$a;

    iget-boolean v5, v0, Lcom/amap/api/col/l3s/k$a;->b:Z

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/k$a;->run()V

    :cond_a
    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->aR:Lcom/amap/api/col/l3s/k$a;

    iget-boolean v5, v0, Lcom/amap/api/col/l3s/k$a;->b:Z

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/k$a;->run()V

    :cond_b
    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->aO:Lcom/amap/api/col/l3s/k$a;

    iget-boolean v5, v0, Lcom/amap/api/col/l3s/k$a;->b:Z

    if-eqz v5, :cond_c

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/k$a;->run()V

    :cond_c
    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->aS:Lcom/amap/api/col/l3s/k$a;

    iget-boolean v5, v0, Lcom/amap/api/col/l3s/k$a;->b:Z

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/k$a;->run()V

    :cond_d
    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->bb:Lcom/amap/api/col/l3s/k$a;

    iget-boolean v5, v0, Lcom/amap/api/col/l3s/k$a;->b:Z

    if-eqz v5, :cond_e

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/k$a;->run()V

    :cond_e
    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->aT:Lcom/amap/api/col/l3s/k$a;

    iget-boolean v5, v0, Lcom/amap/api/col/l3s/k$a;->b:Z

    if-eqz v5, :cond_f

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/k$a;->run()V

    :cond_f
    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->aU:Lcom/amap/api/col/l3s/k$a;

    iget-boolean v5, v0, Lcom/amap/api/col/l3s/k$a;->b:Z

    if-eqz v5, :cond_10

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/k$a;->run()V

    :cond_10
    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->aV:Lcom/amap/api/col/l3s/k$a;

    iget-boolean v5, v0, Lcom/amap/api/col/l3s/k$a;->b:Z

    if-eqz v5, :cond_11

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/k$a;->run()V

    :cond_11
    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->aZ:Lcom/amap/api/col/l3s/k$a;

    iget-boolean v5, v0, Lcom/amap/api/col/l3s/k$a;->b:Z

    if-eqz v5, :cond_12

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/k$a;->run()V

    :cond_12
    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->aP:Lcom/amap/api/col/l3s/k$a;

    iget-boolean v5, v0, Lcom/amap/api/col/l3s/k$a;->b:Z

    if-eqz v5, :cond_13

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/k$a;->run()V

    :cond_13
    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->aW:Lcom/amap/api/col/l3s/k$a;

    iget-boolean v5, v0, Lcom/amap/api/col/l3s/k$a;->b:Z

    if-eqz v5, :cond_14

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/k$a;->run()V

    :cond_14
    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->aX:Lcom/amap/api/col/l3s/k$a;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/k$a;->run()V

    :cond_15
    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->aj:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_16

    invoke-interface {v0, v2, v3, v4}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_16
    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/pf;->d()V

    :cond_17
    iget-object v0, v1, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    if-eqz v0, :cond_18

    iget-object v2, v1, Lcom/amap/api/col/l3s/k;->ba:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3s/k;->redrawInfoWindow()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final changeSurface(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amap/api/col/l3s/k;->changeSurface(ILjavax/microedition/khronos/opengles/GL10;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final checkMapState(Lcom/autonavi/amap/api/mapcore/IGLMapState;)V
    .locals 12

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getLimitLatLngBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getLimitIPoints()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    iget-object v4, v0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v6, v0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    iget-object v5, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v5, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v0, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v7, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6, v7, v8, v4}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/amap/mapcore/IPoint;

    aput-object v1, v0, v3

    aput-object v4, v0, v2

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1, v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V

    move-object v1, v0

    :cond_1
    iget-object v4, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    aget-object v0, v1, v3

    iget v5, v0, Landroid/graphics/Point;->x:I

    aget-object v0, v1, v3

    iget v6, v0, Landroid/graphics/Point;->y:I

    aget-object v0, v1, v2

    iget v7, v0, Landroid/graphics/Point;->x:I

    aget-object v0, v1, v2

    iget v8, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapHeight()I

    move-result v10

    invoke-static/range {v4 .. v10}, Lcom/amap/api/col/l3s/ex;->a(Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;IIIIII)F

    move-result v0

    invoke-interface {p1}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->getMapZoomer()F

    move-result v4

    iget-object v5, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v5

    iget-object v6, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v6}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    cmpg-float v0, v5, v6

    if-gez v0, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-lez v5, :cond_5

    cmpg-float v5, v4, v0

    if-gez v5, :cond_5

    goto :goto_1

    :cond_5
    move v0, v4

    :goto_1
    invoke-interface {p1, v0}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->setMapZoomer(F)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->getMapGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iget v10, v0, Landroid/graphics/Point;->x:I

    iget v11, v0, Landroid/graphics/Point;->y:I

    aget-object v4, v1, v3

    iget v4, v4, Landroid/graphics/Point;->x:I

    aget-object v5, v1, v3

    iget v5, v5, Landroid/graphics/Point;->y:I

    aget-object v6, v1, v2

    iget v6, v6, Landroid/graphics/Point;->x:I

    aget-object v1, v1, v2

    iget v7, v1, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-object v9, p1

    invoke-static/range {v4 .. v11}, Lcom/amap/api/col/l3s/ex;->a(IIIILcom/autonavi/amap/mapcore/interfaces/IMapConfig;Lcom/autonavi/amap/api/mapcore/IGLMapState;II)[I

    move-result-object p0

    aget v1, p0, v3

    aget p0, p0, v2

    int-to-double v1, v1

    int-to-double v3, p0

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->setMapGeoCenter(DD)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->getMapZoomer()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-interface {p1, p0}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->setMapZoomer(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final checkMarkerInRect(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final checkZoomLevel(F)F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/ex;->a(Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;F)F

    move-result p0

    return p0
.end method

.method public final clear()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->clear(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "AMapDelegateImp"

    const-string v1, "clear"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final clear(Z)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->hideInfoWindow()V

    const/4 v0, 0x0

    const-string v1, ""

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/dc;->d()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/dc;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/dc;->f()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p1, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->clear(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ai;->c()V

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3s/ad;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->L:Lcom/amap/api/col/l3s/w;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/w;->b()V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aL:Lcom/amap/api/col/l3s/be;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aL:Lcom/amap/api/col/l3s/be;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/be;->c()V

    :cond_3
    new-instance p1, Lcom/amap/api/col/l3s/k$18;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/k$18;-><init>(Lcom/amap/api/col/l3s/k;)V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AMapDelegateImp"

    const-string v0, "clear"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final clearTileCache()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ai;->h()V

    :cond_0
    return-void
.end method

.method public final createGLOverlay(I)J
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->createOverlay(II)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public final createId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized createSurface(ILjavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    const-string v0, "createSurface"

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/k;->aN:J

    iget p1, p0, Lcom/amap/api/col/l3s/k;->ab:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/fo;->d()Lcom/amap/api/col/l3s/fk;

    move-result-object p1

    sget v0, Lcom/amap/api/col/l3s/fk;->b:I

    :goto_0
    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3s/fk;->a(I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/fo;->d()Lcom/amap/api/col/l3s/fk;

    move-result-object p1

    sget v0, Lcom/amap/api/col/l3s/fk;->a:I

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/k;->aB:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/k;->h:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/k;->i:I

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/k;->aD:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 p1, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/base/amap/mapcore/AeUtil;->loadLib(Landroid/content/Context;)Z

    sget-object v0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    const-string v1, "load lib complete"

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/base/amap/mapcore/AeUtil;->initCrashHandle(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/base/amap/mapcore/AeUtil;->initResource(Landroid/content/Context;)Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;

    move-result-object v0

    sget-object v1, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    const-string v2, "load res complete"

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v1, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->createAMapInstance(Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;)Z

    sget-object v0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    const-string v1, "create engine complete"

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->G:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    if-nez v1, :cond_1

    new-instance v1, Lcom/amap/api/col/l3s/ai;

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/amap/api/col/l3s/ai;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Lcom/amap/api/col/l3s/dl;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/dl;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->aJ:Lcom/amap/api/col/l3s/dl;

    sget-object v0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    const-string v1, "init shader complete"

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->aJ:Lcom/amap/api/col/l3s/dl;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->setGlShaderManager(Lcom/amap/api/col/l3s/dl;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/pf;->i()V

    :cond_2
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    const/16 v0, 0x1f01

    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->m:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapDElegateImp"

    const-string v2, "createSurface"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createSurface failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amap/api/col/l3s/ev;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->getNativeInstance()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v1

    double-to-int v1, v1

    int-to-double v1, v1

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v3

    double-to-int v3, v3

    int-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapGeoCenter(DD)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapAngle(F)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapZoomer(F)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->setCameraDegree(F)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->aK:Lcom/amap/api/col/l3s/ab;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/ab;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->loadBitmapDescription(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->af:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v0, :cond_4

    :try_start_7
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ad:Ljava/lang/Thread;

    const-string v1, "AuthThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ad:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/k;->af:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p1}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aj:Lcom/amap/api/maps/CustomRenderer;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aj:Lcom/amap/api/maps/CustomRenderer;

    invoke-interface {p1, p2, p3}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_5
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/pf;->c()V

    :cond_6
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineInit()V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->onCreateAMapInstance()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final createSurface(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/k;->aq:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/amap/api/col/l3s/k;->createSurface(ILjavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final destroy()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    sget-object v0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    const-string v1, "destroy map"

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->aL:Lcom/amap/api/col/l3s/be;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->aL:Lcom/amap/api/col/l3s/be;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/be;->b()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->aI:Lcom/amap/api/col/l3s/k$b;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    invoke-virtual {v1}, Lcom/autonavi/base/ae/gmap/GLMapRender;->renderPause()V

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->aK:Lcom/amap/api/col/l3s/ab;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->aK:Lcom/amap/api/col/l3s/ab;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ab;->d()V

    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->as:Lcom/amap/api/col/l3s/x;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->as:Lcom/amap/api/col/l3s/x;

    iput-object v0, v1, Lcom/amap/api/col/l3s/x;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->as:Lcom/amap/api/col/l3s/x;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/x;->d()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->as:Lcom/amap/api/col/l3s/x;

    :cond_4
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->destroy()V

    :cond_5
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ad;->g()V

    :cond_6
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ai;->c()V

    iget-object v3, v1, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/dj;->onPause()V

    iget-object v3, v1, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    invoke-virtual {v3, v2}, Lcom/amap/api/col/l3s/dj;->destroy(Z)V

    :cond_7
    iput-object v0, v1, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    :cond_8
    invoke-direct {p0}, Lcom/amap/api/col/l3s/k;->d()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->ad:Ljava/lang/Thread;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->ad:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->ad:Ljava/lang/Thread;

    :cond_9
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->ae:Ljava/lang/Thread;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->ae:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->ae:Ljava/lang/Thread;

    :cond_a
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->ao:Lcom/amap/api/col/l3s/dn;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->ao:Lcom/amap/api/col/l3s/dn;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/dn;->a()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->ao:Lcom/amap/api/col/l3s/dn;

    :cond_b
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->ap:Lcom/amap/api/col/l3s/dp;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->ap:Lcom/amap/api/col/l3s/dp;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3s/dp;->a(Lcom/amap/api/col/l3s/dp$a;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->ap:Lcom/amap/api/col/l3s/dp;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/dp;->a()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->ap:Lcom/amap/api/col/l3s/dp;

    :cond_c
    invoke-static {}, Lcom/amap/api/col/l3s/eh;->b()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v1, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setMapListener(Lcom/autonavi/base/amap/mapcore/interfaces/IAMapListener;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->releaseNetworkState()V

    new-instance v1, Lcom/amap/api/col/l3s/k$33;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/k$33;-><init>(Lcom/amap/api/col/l3s/k;)V

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_d

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x32

    if-ge v2, v3, :cond_d

    const-wide/16 v2, 0x14

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v2}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_d
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->L:Lcom/amap/api/col/l3s/w;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->L:Lcom/amap/api/col/l3s/w;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/w;->c()V

    :cond_e
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->x:Lcom/amap/api/col/l3s/ay;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->x:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ay;->b()V

    :cond_f
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_10

    :try_start_3
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->onDetachedGLThread()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v1}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_10
    :goto_2
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/fo;->g()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    :cond_11
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/dc;->c()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    :cond_12
    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->u:Lcom/amap/api/col/l3s/o;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/p;->a()V

    :cond_13
    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->ac:Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-static {}, Lcom/amap/api/col/l3s/fd;->a()V

    invoke-static {}, Lcom/amap/api/col/l3s/ka;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "AMapDelegateImp"

    const-string v1, "destroy"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final destroySurface(I)V
    .locals 2

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aE:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean p1, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz p1, :cond_6

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aK:Lcom/amap/api/col/l3s/ab;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aK:Lcom/amap/api/col/l3s/ab;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ab;->c()V

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aJ:Lcom/amap/api/col/l3s/dl;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aJ:Lcom/amap/api/col/l3s/dl;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/dl;->b()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->aJ:Lcom/amap/api/col/l3s/dl;

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/amap/api/col/l3s/k;->J:I

    invoke-virtual {p1, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getOverlayBundle(I)Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/amap/api/col/l3s/k;->J:I

    invoke-virtual {p1, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getOverlayBundle(I)Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;->removeAll(Z)V

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->destroyAMapEngine()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget p1, p0, Lcom/amap/api/col/l3s/k;->bh:I

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    iget v0, p0, Lcom/amap/api/col/l3s/k;->bh:I

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/ev;->a(Landroid/content/Context;I)V

    :cond_3
    sget-object p1, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    const-string v0, "destroy engine complete"

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p1

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->L:Lcom/amap/api/col/l3s/w;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/w;->d()V

    :cond_5
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/pf;->f()V

    :cond_6
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/k;->aB:Z

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/k;->aD:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aE:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aE:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aE:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isMapEnable()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 p0, 0x4100

    invoke-static {p0}, Landroid/opengl/GLES20;->glClear(I)V

    return-void

    :cond_2
    iget v0, p0, Lcom/amap/api/col/l3s/k;->am:I

    const/4 v1, -0x1

    const/16 v2, 0xf

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->setRenderFps(F)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v3}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->isInMapAction(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->ay:Z

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v3}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->isInMapAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapRender;->setRenderFps(F)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    invoke-virtual {v0, v2}, Lcom/autonavi/base/ae/gmap/GLMapRender;->resetTickCount(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    const/high16 v1, 0x41700000    # 15.0f

    goto :goto_1

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    const/high16 v1, 0x42200000    # 40.0f

    :goto_1
    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapRender;->setRenderFps(F)V

    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isWorldMapEnable()Z

    move-result v0

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v1

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->b()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setWorldMapEnable(Z)V

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->renderAMap()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->pushRendererState()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->aj:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_8
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aM:Lcom/amap/api/col/l3s/j;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/j;->a()V

    :cond_9
    iget-boolean p1, p0, Lcom/amap/api/col/l3s/k;->Y:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p1, v3}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->canStopMapRender(I)Z

    move-result p1

    iget-object v4, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v5, p0, Lcom/amap/api/col/l3s/k;->J:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapHeight()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getScreenShot(IIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/k;->Y:Z

    :cond_a
    iget-boolean p1, p0, Lcom/amap/api/col/l3s/k;->O:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/k;->O:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->b()V

    :cond_b
    iget-wide v0, p0, Lcom/amap/api/col/l3s/k;->bj:J

    const-wide/16 v4, 0x2

    cmp-long p1, v0, v4

    if-gez p1, :cond_c

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/amap/api/col/l3s/k;->bj:J

    goto :goto_3

    :cond_c
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/fo;->d()Lcom/amap/api/col/l3s/fk;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    iget-wide v4, p0, Lcom/amap/api/col/l3s/k;->aN:J

    sub-long/2addr v0, v4

    invoke-static {v2, v0, v1}, Lcom/amap/api/col/l3s/ev;->a(Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/col/l3s/k$10;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/k$10;-><init>(Lcom/amap/api/col/l3s/k;Lcom/amap/api/col/l3s/fk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v0, p0, Lcom/amap/api/col/l3s/k;->J:I

    invoke-virtual {p1, v0, v3}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setStyleChangeGradualEnable(IZ)V

    :cond_d
    :goto_3
    iget-boolean p1, p0, Lcom/amap/api/col/l3s/k;->aC:Z

    if-nez p1, :cond_e

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/k;->aC:Z

    :cond_e
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->popRendererState()V

    invoke-static {}, Lcom/amap/api/col/l3s/eo;->a()Z

    move-result p1

    if-eqz p1, :cond_13

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    instance-of p1, p1, Lcom/amap/api/col/l3s/n;

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->e:Lcom/amap/api/col/l3s/eo;

    if-nez p1, :cond_f

    new-instance p1, Lcom/amap/api/col/l3s/eo;

    invoke-direct {p1}, Lcom/amap/api/col/l3s/eo;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->e:Lcom/amap/api/col/l3s/eo;

    :cond_f
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->e:Lcom/amap/api/col/l3s/eo;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/eo;->e()V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->e:Lcom/amap/api/col/l3s/eo;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/eo;->f()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->e:Lcom/amap/api/col/l3s/eo;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/eo;->d()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    check-cast p1, Lcom/amap/api/col/l3s/n;

    invoke-virtual {p1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->e:Lcom/amap/api/col/l3s/eo;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/eo;->a(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {}, Lcom/amap/api/col/l3s/eo;->b()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->removecache()V

    :cond_10
    invoke-static {}, Lcom/amap/api/col/l3s/eo;->c()Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-static {}, Lcom/amap/api/col/l3s/eo;->g()V

    :cond_11
    sget-object p0, Lcom/amap/api/col/l3s/fc;->g:Ljava/lang/String;

    const-string p1, "pure screen: found pure check"

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/fd;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_12
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AMapDelegateImp"

    const-string v0, "PureScreenCheckTool.checkBlackScreen"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_4
    return-void
.end method

.method public final geo2Latlng(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 2

    int-to-long p0, p1

    int-to-long v0, p2

    const/16 p2, 0x14

    invoke-static {p0, p1, v0, v1, p2}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->pixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p0

    iget-wide p1, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iput-wide p1, p3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide p1, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iput-wide p1, p3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-void
.end method

.method public final geo2Map(IILcom/autonavi/base/amap/mapcore/FPoint;)V
    .locals 4

    int-to-double v0, p1

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int p1, v0

    int-to-float p1, p1

    iput p1, p3, Landroid/graphics/PointF;->x:F

    int-to-double p1, p2

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v0

    sub-double/2addr p1, v0

    double-to-int p0, p1

    int-to-float p0, p0

    iput p0, p3, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public final getAMapExtraInterfaceManager()Lcom/amap/api/col/l3s/pf;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    return-object p0
.end method

.method public final getAMapProjection()Lcom/amap/api/maps/Projection;
    .locals 1

    new-instance v0, Lcom/amap/api/maps/Projection;

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->A:Lcom/autonavi/base/amap/api/mapcore/IProjectionDelegate;

    invoke-direct {v0, p0}, Lcom/amap/api/maps/Projection;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IProjection;)V

    return-object v0
.end method

.method public final getAMapUiSettings()Lcom/amap/api/maps/UiSettings;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->z:Lcom/amap/api/maps/UiSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/maps/UiSettings;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/UiSettings;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->z:Lcom/amap/api/maps/UiSettings;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->z:Lcom/amap/api/maps/UiSettings;

    return-object p0
.end method

.method public final getBaseOverlayTextureID()I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aK:Lcom/amap/api/col/l3s/ab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ab;->b()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getCamerInfo()Lcom/amap/api/maps/model/AMapCameraInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCameraAngle()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3s/k;->J:I

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->getCameraDegree(I)F

    move-result p0

    return p0
.end method

.method public final getCameraDegree(I)F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->N:Z

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->getCameraPositionPrj(Z)Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getCameraPositionPrj(Z)Lcom/amap/api/maps/model/CameraPosition;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/k;->M:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/amap/api/col/l3s/k;->getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v1

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v3

    const/16 p1, 0x14

    invoke-static {v1, v2, v3, v4, p1}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->pixelsToLatLong(DDI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    new-instance v7, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    move-object v1, v7

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/amap/api/col/l3s/k;->geo2Latlng(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    return-object p0
.end method

.method public final getCurrentWorldVectorMapStyle()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/pf;->j()Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public final getDottedLineTextureID(I)I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aK:Lcom/amap/api/col/l3s/ab;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ab;->a(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getFinalMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMvpMatrix()[F

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->n:[F

    return-object p0
.end method

.method public final getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    return-object p0
.end method

.method public final getGLMapView()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getGLShader(I)Lcom/amap/api/col/l3s/dk;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aJ:Lcom/amap/api/col/l3s/dl;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dl;->a(I)Lcom/amap/api/col/l3s/dk;

    move-result-object p0

    return-object p0
.end method

.method public final getGLShaderManager()Lcom/amap/api/col/l3s/dl;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aJ:Lcom/amap/api/col/l3s/dl;

    return-object p0
.end method

.method public final getGeoCenter(ILcom/autonavi/amap/mapcore/IPoint;)V
    .locals 2

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p2, Landroid/graphics/Point;->x:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide p0

    double-to-int p0, p0

    iput p0, p2, Landroid/graphics/Point;->y:I

    :cond_0
    return-void
.end method

.method public final getGlOverlayMgrPtr()J
    .locals 2

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getGlOverlayMgrPtr(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getInfoWindowAnimationManager()Lcom/amap/api/maps/InfoWindowAnimationManager;
    .locals 1

    new-instance v0, Lcom/amap/api/maps/InfoWindowAnimationManager;

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->y:Lcom/amap/api/col/l3s/dh;

    invoke-direct {v0, p0}, Lcom/amap/api/maps/InfoWindowAnimationManager;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;)V

    return-object v0
.end method

.method public final getLatLng2Map(DDLcom/autonavi/base/amap/mapcore/FPoint;)V
    .locals 7

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/l3s/k;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget p1, v6, Landroid/graphics/Point;->x:I

    iget p2, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, p2, p5}, Lcom/amap/api/col/l3s/k;->geo2Map(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    return-void
.end method

.method public final getLatLng2Pixel(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    :try_start_0
    invoke-static {p1, p2, p3, p4, v0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->latLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object p1

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object p2

    iget p3, p1, Landroid/graphics/Point;->x:I

    iget p4, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p3, p4, p2}, Lcom/amap/api/col/l3s/k;->a(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    iget p3, p2, Landroid/graphics/PointF;->x:F

    const p4, -0x39e3c000    # -10000.0f

    cmpl-float p3, p3, p4

    if-nez p3, :cond_0

    iget p3, p2, Landroid/graphics/PointF;->y:F

    cmpl-float p3, p3, p4

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNewMapState(I)Lcom/autonavi/amap/api/mapcore/IGLMapState;

    move-result-object p0

    check-cast p0, Lcom/autonavi/base/ae/gmap/GLMapState;

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/autonavi/base/ae/gmap/GLMapState;->setCameraDegree(F)V

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/GLMapState;->recalculate()V

    iget p3, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p3, p1, p2}, Lcom/autonavi/base/ae/gmap/GLMapState;->p20ToScreenPoint(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/GLMapState;->recycle()V

    :cond_0
    iget p0, p2, Landroid/graphics/PointF;->x:F

    float-to-int p0, p0

    iput p0, p5, Landroid/graphics/Point;->x:I

    iget p0, p2, Landroid/graphics/PointF;->y:F

    float-to-int p0, p0

    iput p0, p5, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Lcom/autonavi/base/amap/mapcore/FPoint;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public final getLatLngRect([Lcom/autonavi/amap/mapcore/DPoint;)V
    .locals 4

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getClipRect()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v2, p0, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    aget-object v3, p1, v0

    invoke-static {v1, v2, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getLineTextureID()I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aK:Lcom/amap/api/col/l3s/ab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ab;->a()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getLineTextureRatio()F
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aK:Lcom/amap/api/col/l3s/ab;

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final getLogoMarginRate(I)F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fo;->a(I)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getLogoPosition()I
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/aj;->getLogoPosition()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "AMapDelegateImp"

    const-string v1, "getLogoPosition"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final getMainHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    return-object p0
.end method

.method public final getMapAngle(I)F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getMapBounds(Lcom/amap/api/maps/model/LatLng;FFF)Lcom/amap/api/maps/model/LatLngBounds;
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3s/k;->getMapWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3s/k;->getMapHeight()I

    move-result v8

    if-lez v7, :cond_2

    if-lez v8, :cond_2

    iget-boolean v1, v6, Lcom/amap/api/col/l3s/k;->K:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, v6, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    move/from16 v2, p2

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/ex;->a(Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;F)F

    move-result v9

    new-instance v10, Lcom/autonavi/base/ae/gmap/GLMapState;

    const/4 v1, 0x1

    iget-object v2, v6, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNativeInstance()J

    move-result-wide v2

    invoke-direct {v10, v1, v2, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;-><init>(IJ)V

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v11

    iget-wide v1, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v3, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p0

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/l3s/k;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->setCameraDegree(F)V

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapAngle(F)V

    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iget v2, v11, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapGeoCenter(DD)V

    invoke-virtual {v10, v9}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapZoomer(F)V

    invoke-virtual {v10}, Lcom/autonavi/base/ae/gmap/GLMapState;->recalculate()V

    invoke-virtual {v11}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_1
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v6, v10, v1, v1, v0}, Lcom/amap/api/col/l3s/k;->a(Lcom/autonavi/base/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v12, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v14, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-direct {v6, v10, v7, v8, v0}, Lcom/amap/api/col/l3s/k;->a(Lcom/autonavi/base/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v5, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/16 v22, 0x0

    move-object/from16 v17, v2

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    invoke-direct/range {v17 .. v22}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    invoke-virtual {v10}, Lcom/autonavi/base/ae/gmap/GLMapState;->recycle()V

    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    return-object p0
.end method

.method public final getMapContentApprovalNumber()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ev;->d(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    const-string v0, "approval_number"

    const-string v1, "mc"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/amap/api/col/l3s/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "GS(2019)6378\u53f7 | GS(2020)2189\u53f7"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMapHeight()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/k;->i:I

    return p0
.end method

.method public final getMapPrintScreen(Lcom/amap/api/maps/AMap$onMapPrintScreenListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    const-class v1, Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amap/api/col/l3s/p;->a(Ljava/lang/Integer;Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/k;->Y:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapRect([Lcom/autonavi/base/amap/mapcore/FPoint;)V

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object p0

    return-object p0
.end method

.method public final getMapScreenMarkers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/ex;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ad;->d()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getMapScreenShot(Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    const-class v1, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amap/api/col/l3s/p;->a(Ljava/lang/Integer;Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/k;->Y:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getMapTextZIndex()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/k;->ai:I

    return p0
.end method

.method public final getMapType()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/k;->ab:I

    return p0
.end method

.method public final getMapWidth()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/k;->h:I

    return p0
.end method

.method public final getMapZoomScale()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/k;->av:F

    return p0
.end method

.method public final getMaskLayerType()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/k;->al:I

    return p0
.end method

.method public final getMaxZoomLevel()F
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/high16 p0, 0x41a00000    # 20.0f

    return p0
.end method

.method public final getMinZoomLevel()F
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/high16 p0, 0x40400000    # 3.0f

    return p0
.end method

.method public final getMyLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->u:Lcom/amap/api/col/l3s/o;

    iget-object p0, p0, Lcom/amap/api/col/l3s/o;->a:Landroid/location/Location;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMyLocationStyle()Lcom/amap/api/maps/model/MyLocationStyle;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dc;->a()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNativeMapController()J
    .locals 2

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNativeMapController(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getOnCameraChangeListener()Lcom/amap/api/maps/AMap$OnCameraChangeListener;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    const-class v1, Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/maps/AMap$OnCameraChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getPixel2Geo(IILcom/autonavi/amap/mapcore/IPoint;)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/base/ae/gmap/GLMapState;->screenToP20Point(IILandroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public final getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->screenToP20Point(IILandroid/graphics/Point;)V

    iget p0, v0, Landroid/graphics/Point;->x:I

    int-to-long p0, p0

    iget p2, v0, Landroid/graphics/Point;->y:I

    int-to-long v1, p2

    const/16 p2, 0x14

    invoke-static {p0, p1, v1, v2, p2}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->pixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p0

    iget-wide p1, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iput-wide p1, p3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide p1, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iput-wide p1, p3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    :cond_0
    return-void
.end method

.method public final getPreciseLevel(I)F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getProjection()Lcom/autonavi/base/amap/api/mapcore/IProjectionDelegate;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->A:Lcom/autonavi/base/amap/api/mapcore/IProjectionDelegate;

    return-object p0
.end method

.method public final getProjectionMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getProjectionMatrix()[F

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->p:[F

    return-object p0
.end method

.method public final getRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aa:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getRenderMode()I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {p0}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->getRenderMode()I

    move-result p0

    return p0
.end method

.method public final getSX()I
    .locals 2

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v0

    double-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final getSY()I
    .locals 2

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v0

    double-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final getSatelliteImageApprovalNumber()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ev;->e(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    const-string v0, "approval_number"

    const-string v1, "si"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/amap/api/col/l3s/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "GS(2020)6513\u53f7"

    return-object p0
.end method

.method public final getScalePerPixel()F
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getZoomLevel()F

    move-result v1

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v6

    mul-double/2addr v2, v4

    const-wide v4, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    float-to-double v0, v1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v4

    div-double/2addr v2, v0

    double-to-float v0, v2

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapZoomScale()F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float/2addr v0, p0

    return v0

    :catchall_0
    move-exception p0

    const-string v0, "AMapDelegateImp"

    const-string v1, "getScalePerPixel"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final getSkyHeight()F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSkyHeight()F

    move-result p0

    return p0
.end method

.method public final getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/col/l3s/af;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/col/l3s/k;->getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;Z)Lcom/amap/api/col/l3s/af;

    move-result-object p0

    return-object p0
.end method

.method public final getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;Z)Lcom/amap/api/col/l3s/af;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->an:Ljava/util/List;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->an:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->an:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3s/af;

    if-eqz p2, :cond_1

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/af;->l()I

    move-result v4

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getBaseOverlayTextureID()I

    move-result v5

    if-eq v4, v5, :cond_2

    :cond_1
    invoke-virtual {v3}, Lcom/amap/api/col/l3s/af;->k()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v1

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    return-object p0
.end method

.method public final getUnitLengthByZoom(I)F
    .locals 3

    new-instance v0, Lcom/autonavi/base/ae/gmap/GLMapState;

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNativeInstance()J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/autonavi/base/ae/gmap/GLMapState;-><init>(IJ)V

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapZoomer(F)V

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->recalculate()V

    invoke-virtual {v0, p0}, Lcom/autonavi/base/ae/gmap/GLMapState;->getGLUnitWithWin(I)F

    move-result p0

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->recycle()V

    return p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    return-object p0
.end method

.method public final getViewMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getViewMatrix()[F

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->o:[F

    return-object p0
.end method

.method public final getWaterMarkerPositon()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fo;->a()Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    return-object p0
.end method

.method public final getWorldVectorMapLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->bd:Ljava/lang/String;

    return-object p0
.end method

.method public final getWorldVectorMapStyle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->be:Ljava/lang/String;

    return-object p0
.end method

.method public final getZoomLevel()F
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/k;->c()F

    move-result p0

    return p0
.end method

.method public final getZoomToSpanLevel(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-virtual {v1, p2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    new-instance p1, Lcom/autonavi/base/ae/gmap/GLMapState;

    const/4 p2, 0x1

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNativeInstance()J

    move-result-wide v2

    invoke-direct {p1, p2, v2, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;-><init>(IJ)V

    const/4 p2, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getMapHeight()I

    move-result v7

    move v1, p2

    invoke-static/range {v0 .. v7}, Lcom/amap/api/col/l3s/ex;->a(Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;IIIILcom/amap/api/maps/model/LatLngBounds;II)Landroid/util/Pair;

    move-result-object p0

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->recycle()V

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapZoomer()F

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final hideInfoWindow()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->x:Lcom/amap/api/col/l3s/ay;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ay;->c()Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;->hideInfoWindow()V

    :cond_0
    return-void
.end method

.method public final isIndoorEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isIndoorEnable()Z

    move-result p0

    return p0
.end method

.method public final isInfoWindowShown(Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;)Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->x:Lcom/amap/api/col/l3s/ay;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ay;->c()Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;->isInfoWindowShown()Z

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public final isLockMapAngle(I)Z
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getSrvViewStateBoolValue(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isLockMapCameraDegree(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isMaploaded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/k;->O:Z

    return p0
.end method

.method public final isMyLocationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/k;->I:Z

    return p0
.end method

.method public final isTouchPoiEnable()Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTouchPoiEnable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isTrafficEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTrafficEnabled()Z

    move-result p0

    return p0
.end method

.method public final isUseAnchor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/k;->N:Z

    return p0
.end method

.method public final latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 0

    const/16 p0, 0x14

    invoke-static {p1, p2, p3, p4, p0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->latLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Point;->x:I

    iput p1, p5, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, p5, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public final loadWorldVectorMap(Z)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAbroadEnable(Z)V

    :cond_0
    return-void
.end method

.method public final map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 4

    float-to-double v0, p1

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p3, Landroid/graphics/Point;->x:I

    float-to-double p1, p2

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v0

    add-double/2addr p1, v0

    double-to-int p0, p1

    iput p0, p3, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public final moveCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/k;->moveCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final moveCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/amap/api/col/l3s/k;->M:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getStateMessageCount()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Lcom/amap/api/col/l3s/al;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/al;-><init>()V

    sget-object v2, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->changeGeoCenterZoomTiltBearing:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    iput-object v2, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    new-instance v2, Lcom/autonavi/amap/mapcore/DPoint;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v3

    iget-object v5, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/autonavi/amap/mapcore/DPoint;-><init>(DD)V

    iput-object v2, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->geoPoint:Lcom/autonavi/amap/mapcore/DPoint;

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v2

    iput v2, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->zoom:F

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v2

    iput v2, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->bearing:F

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v2

    iput v2, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->tilt:F

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v2, p1, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->addMessage(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;Z)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getStateMessageCount()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getStateMessage()Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->mergeCameraUpdateDelegate(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    move-object p1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->clearAnimations(IZ)V

    iput-boolean v2, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->isChangeFinished:Z

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/k;->a(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p0, p1, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->addMessage(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final onActivityPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/k;->M:Z

    iget v0, p0, Lcom/amap/api/col/l3s/k;->J:I

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/k;->b(I)V

    return-void
.end method

.method public final onActivityResume()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/k;->M:Z

    iget v1, p0, Lcom/amap/api/col/l3s/k;->J:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v1, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getEngineIDWithType(I)I

    move-result v1

    :cond_0
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/k;->c(I)V

    return-void
.end method

.method public final onChangeFinish()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onDoubleTap(ILandroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/k;->a(II)Z

    return v0
.end method

.method public final onFling()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/ai;->b(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->X:Z

    return-void
.end method

.method public final onIndoorBuildingActivity(I[B)V
    .locals 7

    const-string p1, "utf-8"

    if-eqz p2, :cond_3

    :try_start_0
    array-length v0, p2

    if-lez v0, :cond_3

    new-instance v0, Lcom/amap/api/col/l3s/ax;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/ax;-><init>()V

    const/4 v1, 0x0

    aget-byte v2, p2, v1

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v3, p2, v4, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, v0, Lcom/amap/api/col/l3s/ax;->a:Ljava/lang/String;

    add-int/2addr v2, v4

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p2, v2

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v3, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v0, Lcom/amap/api/col/l3s/ax;->b:Ljava/lang/String;

    add-int/2addr v3, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p2, v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    add-int/2addr v2, v3

    invoke-static {p2, v2}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v3

    iput v3, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorIndex:I

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p2, v2

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v3, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    add-int/2addr v3, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p2, v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v0, Lcom/amap/api/col/l3s/ax;->h:Ljava/lang/String;

    add-int/2addr v2, v3

    invoke-static {p2, v2}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v3

    iput v3, v0, Lcom/amap/api/col/l3s/ax;->c:I

    add-int/lit8 v2, v2, 0x4

    new-array v4, v3, [I

    iput-object v4, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_indexs:[I

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_names:[Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v0, Lcom/amap/api/col/l3s/ax;->d:[Ljava/lang/String;

    move v3, v1

    :goto_0
    iget v4, v0, Lcom/amap/api/col/l3s/ax;->c:I

    if-ge v3, v4, :cond_2

    iget-object v4, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_indexs:[I

    invoke-static {p2, v2}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p2, v2

    if-lez v2, :cond_0

    iget-object v5, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_names:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2, v4, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v3

    add-int/2addr v4, v2

    :cond_0
    add-int/lit8 v2, v4, 0x1

    aget-byte v4, p2, v4

    if-lez v4, :cond_1

    iget-object v5, v0, Lcom/amap/api/col/l3s/ax;->d:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2, v2, v4, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v3

    add-int/2addr v2, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p2, v2}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result p1

    iput p1, v0, Lcom/amap/api/col/l3s/ax;->e:I

    add-int/lit8 v2, v2, 0x4

    if-lez p1, :cond_4

    new-array p1, p1, [I

    iput-object p1, v0, Lcom/amap/api/col/l3s/ax;->f:[I

    :goto_1
    iget p1, v0, Lcom/amap/api/col/l3s/ax;->e:I

    if-ge v1, p1, :cond_4

    iget-object p1, v0, Lcom/amap/api/col/l3s/ax;->f:[I

    invoke-static {p2, v2}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v3

    aput v3, p1, v1

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->bk:Lcom/amap/api/col/l3s/ax;

    new-instance p1, Lcom/amap/api/col/l3s/k$31;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/k$31;-><init>(Lcom/amap/api/col/l3s/k;)V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/k;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final onLongPress(ILandroid/view/MotionEvent;)V
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/k;->U:Z

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/k;->a(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ad;->a(Landroid/view/MotionEvent;)Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->T:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->isDraggable()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/amap/api/maps/model/Marker;

    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->T:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    check-cast p2, Lcom/amap/api/col/l3s/db;

    invoke-direct {p1, p2}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->S:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->T:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {p2}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRealPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v8

    iget-wide v3, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v5, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v2, p0

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/col/l3s/k;->getLatLng2Pixel(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget v2, v8, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, -0x3c

    iput v2, v8, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v2

    iget v3, v8, Landroid/graphics/Point;->x:I

    iget v4, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v3, v4, v2}, Lcom/amap/api/col/l3s/k;->getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, v2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    add-double/2addr v4, v6

    iget-wide v6, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    iget-wide v6, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v9, v2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double/2addr v6, v9

    iget-wide p1, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v6, p1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->S:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {p1, v3}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->T:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    check-cast p2, Lcom/amap/api/col/l3s/db;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ad;->a(Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    const-class p2, Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->S:Lcom/amap/api/maps/model/Marker;

    invoke-interface {p2, v3}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/amap/api/maps/model/Marker;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    const-string p2, "AMapDelegateImp"

    const-string v0, "onMarkerDragStart"

    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->R:Z

    invoke-virtual {v8}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :goto_2
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    goto :goto_4

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    const-class v2, Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, v3, p2, v2}, Lcom/amap/api/col/l3s/k;->getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V

    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_3
    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p2, v3}, Lcom/amap/api/maps/AMap$OnMapLongClickListener;->onMapLongClick(Lcom/amap/api/maps/model/LatLng;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->V:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0

    :cond_4
    :goto_4
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    const/16 p1, 0x1e

    invoke-virtual {p0, p1}, Lcom/autonavi/base/ae/gmap/GLMapRender;->resetTickCount(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    return-void

    :catchall_3
    move-exception p0

    const-string p1, "AMapDelegateImp"

    const-string p2, "onLongPress"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final onPause()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNewMapState(I)Lcom/autonavi/amap/api/mapcore/IGLMapState;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/ae/gmap/GLMapState;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->recalculate()V

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSX(D)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSY(D)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSZ(F)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->getCameraDegree()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSC(F)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapAngle()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSR(F)V

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->recycle()V

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapRender;->setRenderFps(F)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->setRenderMode(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ai;->e()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dc;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final onSingleTapConfirmed(ILandroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/k;->a(I)V

    invoke-direct {p0, p2}, Lcom/amap/api/col/l3s/k;->d(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/amap/api/col/l3s/k;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aL:Lcom/amap/api/col/l3s/be;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/amap/api/col/l3s/k;->getPixel2Geo(IILcom/autonavi/amap/mapcore/IPoint;)V

    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->aL:Lcom/amap/api/col/l3s/be;

    invoke-virtual {v1, p1}, Lcom/amap/api/col/l3s/be;->a(Lcom/autonavi/amap/mapcore/IPoint;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_4
    if-eqz v1, :cond_5

    return v0

    :cond_5
    invoke-direct {p0, p2}, Lcom/amap/api/col/l3s/k;->b(Landroid/view/MotionEvent;)Z

    new-instance p1, Lcom/amap/api/col/l3s/k$8;

    invoke-direct {p1, p0, p2}, Lcom/amap/api/col/l3s/k$8;-><init>(Lcom/amap/api/col/l3s/k;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p0

    const-string p1, "AMapDelegateImp"

    const-string p2, "onSingleTapUp"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->M:Z

    const/4 v1, 0x0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->ax:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->bi:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v2, 0x3

    iput v2, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/16 v2, 0x8

    iput v2, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v2, 0x2

    new-array v3, v2, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v3, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    iput-object v3, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->bi:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/autonavi/base/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v5, p0, Lcom/amap/api/col/l3s/k;->at:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->ay:Z

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->V:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->V:Z

    :cond_3
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->U:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->U:Z

    :cond_4
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->W:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->W:Z

    :cond_5
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/k;->R:Z

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    const-class v3, Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->S:Lcom/amap/api/maps/model/Marker;

    if-eqz v3, :cond_8

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v4, p0, Lcom/amap/api/col/l3s/k;->S:Lcom/amap/api/maps/model/Marker;

    invoke-interface {v3, v4}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/amap/api/maps/model/Marker;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->S:Lcom/amap/api/maps/model/Marker;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v3, "OnMarkerDragListener.onMarkerDragEnd"

    invoke-static {v0, v1, v3}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/amap/api/col/l3s/k;->g()V

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->as:Lcom/amap/api/col/l3s/x;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/x;->a()V

    iput-boolean v5, p0, Lcom/amap/api/col/l3s/k;->at:Z

    iput-boolean v5, p0, Lcom/amap/api/col/l3s/k;->ay:Z

    :try_start_5
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->stopAnimation()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_8
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_9

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->R:Z

    if-eqz v0, :cond_9

    :try_start_6
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/k;->a(Landroid/view/MotionEvent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    const-string p1, "AMapDelegateImp"

    const-string v0, "onDragMarker"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return v5

    :cond_9
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->at:Z

    if-eqz v0, :cond_a

    :try_start_7
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->as:Lcom/amap/api/col/l3s/x;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/x;->a(Landroid/view/MotionEvent;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_3
    :try_start_8
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    const-class v1, Lcom/amap/api/maps/AMap$OnMapTouchListener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    iput v1, p0, Landroid/os/Message;->what:I

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    :cond_b
    return v5

    :cond_c
    :goto_4
    return v1
.end method

.method public final pixel2Map(IILandroid/graphics/PointF;)V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->M:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/col/l3s/k;->getPixel2Geo(IILcom/autonavi/amap/mapcore/IPoint;)V

    iget p1, v0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v1

    double-to-float p2, v1

    sub-float/2addr p1, p2

    iput p1, p3, Landroid/graphics/PointF;->x:F

    iget p1, v0, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v1

    double-to-float p0, v1

    sub-float/2addr p1, p0

    iput p1, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_0
    return-void
.end method

.method public final post(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final queueEvent(Ljava/lang/Runnable;)V
    .locals 6

    const-string v0, "queueEvent"

    const-string v1, "AMapdelegateImp"

    const-wide/16 v2, -0x1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    invoke-static {v4}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    invoke-static {v4, v1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    :goto_0
    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/amap/api/col/l3s/k;->aq:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    return-void

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    invoke-static {p0, v1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final redrawInfoWindow()V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final refreshLogo()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fo;->c()V

    :cond_0
    return-void
.end method

.method public final reloadMap()V
    .locals 0

    return-void
.end method

.method public final reloadMapCustomStyle()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aM:Lcom/amap/api/col/l3s/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/j;->b()V

    :cond_0
    return-void
.end method

.method public final removeEngineGLOverlay(Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/k$35;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/k$35;-><init>(Lcom/amap/api/col/l3s/k;Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final removeGLModel(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->L:Lcom/amap/api/col/l3s/w;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/w;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "AMapDelegateImp"

    const-string v0, "removeGLModel"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeGLOverlay(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->H:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0, p1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->removeOverlay(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final removeMarker(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/ad;->a(Ljava/lang/String;)Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->b:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ad;->a(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string p1, "AMapDelegateImp"

    const-string v0, "removeMarker"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->b(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->b(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->b(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMapClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->b(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->b(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->b(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMapTouchListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->b(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->b(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->b(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->b(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnPOIClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->b(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->b(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeTextureItem(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->an:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->an:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/amap/api/col/l3s/k;->an:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/col/l3s/af;

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/af;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v2, :cond_2

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->an:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removecache()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->removecache(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V

    return-void
.end method

.method public final removecache(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/k$d;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/amap/api/col/l3s/k$d;-><init>(Lcom/amap/api/col/l3s/k;Landroid/content/Context;Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AMapDelegateImp"

    const-string v0, "removecache"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final renderSurface(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/k;->drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public final requestRender()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->isRenderPause()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {p0}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->requestRender()V

    :cond_0
    return-void
.end method

.method public final resetMinMaxZoomPreference()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->resetMinMaxZoomPreference()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/aj;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    const-class v1, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v3

    invoke-interface {v2, v3}, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;->invalidateZoomController(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    return-void

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final resetRenderTime()V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method public final resetRenderTimeLongLong()V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->ar:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz p0, :cond_0

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method public final set3DBuildingEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/k;->b(I)V

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/k;->a(IZ)V

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/k;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setAMapGestureListener(Lcom/amap/api/maps/model/AMapGestureListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->as:Lcom/amap/api/col/l3s/x;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->w:Lcom/amap/api/maps/model/AMapGestureListener;

    iput-object p1, v0, Lcom/amap/api/col/l3s/x;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    :cond_0
    return-void
.end method

.method public final setCenterToPixel(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/k;->N:Z

    iput p1, p0, Lcom/amap/api/col/l3s/k;->aG:I

    iput p2, p0, Lcom/amap/api/col/l3s/k;->aH:I

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/k;->aB:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorX()I

    move-result p1

    iget p2, p0, Lcom/amap/api/col/l3s/k;->aG:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorY()I

    move-result p1

    iget p2, p0, Lcom/amap/api/col/l3s/k;->aH:I

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget p2, p0, Lcom/amap/api/col/l3s/k;->aG:I

    invoke-virtual {p1, p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAnchorX(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget p2, p0, Lcom/amap/api/col/l3s/k;->aH:I

    invoke-virtual {p1, p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAnchorY(I)V

    new-instance p1, Lcom/amap/api/col/l3s/k$28;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/k$28;-><init>(Lcom/amap/api/col/l3s/k;)V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final setConstructingRoadEnable(Z)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aB:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    new-instance v0, Lcom/amap/api/col/l3s/k$26;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/k$26;-><init>(Lcom/amap/api/col/l3s/k;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->aW:Lcom/amap/api/col/l3s/k$a;

    iput-boolean p1, v0, Lcom/amap/api/col/l3s/k$a;->c:Z

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aW:Lcom/amap/api/col/l3s/k$a;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/amap/api/col/l3s/k$a;->b:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aW:Lcom/amap/api/col/l3s/k$a;

    iput v0, p0, Lcom/amap/api/col/l3s/k$a;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setCustomMapStyle(Lcom/amap/api/maps/model/CustomMapStyleOptions;)V
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/amap/api/col/l3s/k;->a(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTexturePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTextureData()[B

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3s/k;->h()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->aM:Lcom/amap/api/col/l3s/j;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/j;->c()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->aM:Lcom/amap/api/col/l3s/j;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/j;->a(Lcom/amap/api/maps/model/CustomMapStyleOptions;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/pf;->i()V

    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setCustomMapStyle(Z[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/col/l3s/k;->a(Z[BZ)V

    return-void
.end method

.method public final setCustomMapStyleID(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCustomStyleID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setCustomStyleID(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/k;->C:Z

    :cond_0
    return-void
.end method

.method public final setCustomMapStylePath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setCustomStylePath(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/k;->C:Z

    :cond_0
    return-void
.end method

.method public final setCustomRenderer(Lcom/amap/api/maps/CustomRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->aj:Lcom/amap/api/maps/CustomRenderer;

    return-void
.end method

.method public final setCustomTextureResourcePath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setCustomTextureResourcePath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setGestureStatus(II)V
    .locals 0

    iget p1, p0, Lcom/amap/api/col/l3s/k;->aF:I

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/amap/api/col/l3s/k;->aF:I

    return-void
.end method

.method public final setHideLogoEnble(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setHideLogoEnble(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/aj;->setLogoEnable(Z)V

    :cond_0
    return-void
.end method

.method public final setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/amap/api/col/l3s/ax;

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->d:Lcom/amap/api/col/l3s/ax;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    new-instance p1, Lcom/amap/api/col/l3s/k$29;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/k$29;-><init>(Lcom/amap/api/col/l3s/k;)V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setIndoorEnabled(Z)V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setIndoorEnable(Z)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v1, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setIndoorEnable(IZ)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setIndoorEnable(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v1

    goto :goto_0

    :cond_2
    const/high16 v1, 0x41a00000    # 20.0f

    :goto_0
    iput v1, v0, Lcom/autonavi/base/amap/mapcore/MapConfig;->maxZoomLevel:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/aj;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    const-class v1, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v3

    invoke-interface {v1, v3}, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;->invalidateZoomController(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :cond_4
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/amap/api/col/l3s/ev;->c(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/aj;->isIndoorSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/col/l3s/k$20;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/k$20;-><init>(Lcom/amap/api/col/l3s/k;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->aZ:Lcom/amap/api/col/l3s/k$a;

    iput-boolean p1, v0, Lcom/amap/api/col/l3s/k$a;->c:Z

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aZ:Lcom/amap/api/col/l3s/k$a;

    iput-boolean v1, p1, Lcom/amap/api/col/l3s/k$a;->b:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aZ:Lcom/amap/api/col/l3s/k$a;

    iput v1, p0, Lcom/amap/api/col/l3s/k$a;->g:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_6
    return-void

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setInfoWindowAdapter(Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->x:Lcom/amap/api/col/l3s/ay;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ay;->a(Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;)V

    :cond_1
    return-void
.end method

.method public final setInfoWindowAdapter(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->x:Lcom/amap/api/col/l3s/ay;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ay;->a(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V

    :cond_1
    return-void
.end method

.method public final setLoadOfflineData(Z)V
    .locals 1

    new-instance v0, Lcom/amap/api/col/l3s/k$22;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/k$22;-><init>(Lcom/amap/api/col/l3s/k;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setLocationSource(Lcom/amap/api/maps/LocationSource;)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    instance-of v0, v0, Lcom/amap/api/col/l3s/az;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V

    :cond_1
    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fo;->h(Ljava/lang/Boolean;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fo;->h(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AMapDelegateImp"

    const-string v0, "setLocationSource"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setLogoBottomMargin(I)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fo;->c(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public final setLogoLeftMargin(I)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fo;->d(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public final setLogoMarginRate(IF)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/col/l3s/fo;->a(Ljava/lang/Integer;Ljava/lang/Float;)V

    :cond_0
    return-void
.end method

.method public final setLogoPosition(I)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fo;->b(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public final setMapCustomEnable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/k;->h()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/col/l3s/k;->setMapCustomEnable(ZZ)V

    return-void
.end method

.method public final setMapCustomEnable(ZZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-nez v0, :cond_5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCustomStyleID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isProFunctionAuthEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCustomStyleID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->ao:Lcom/amap/api/col/l3s/dn;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->ao:Lcom/amap/api/col/l3s/dn;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCustomStyleID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/col/l3s/dn;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/k;->ao:Lcom/amap/api/col/l3s/dn;

    invoke-static {}, Lcom/amap/api/col/l3s/ew;->a()Lcom/amap/api/col/l3s/ew;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amap/api/col/l3s/ew;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/amap/api/col/l3s/k;->C:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result p2

    xor-int/2addr p2, p1

    if-eqz p2, :cond_4

    :cond_3
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/amap/api/col/l3s/k;->a(Z[BZ)V

    :cond_4
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/k;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_5
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aR:Lcom/amap/api/col/l3s/k$a;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/k$a;->b:Z

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/k$a;->c:Z

    return-void
.end method

.method public final setMapEnable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapEnable(Z)V

    :cond_0
    return-void
.end method

.method public final setMapLanguage(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    const-string v0, "zh_cn"

    invoke-virtual {p1, v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapLanguage(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/amap/api/col/l3s/k;->ai:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/amap/api/col/l3s/k;->ab:I

    if-eq p1, v0, :cond_4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->setMapType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    const-string v0, "en"

    invoke-virtual {p1, v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapLanguage(Ljava/lang/String;)V

    const/16 p1, -0x2710

    goto :goto_0

    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/maps/model/CameraPosition;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->G:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    if-nez v0, :cond_5

    new-instance v0, Lcom/amap/api/col/l3s/ai;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3s/ai;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    :cond_5
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->F:Lcom/amap/api/col/l3s/ai;

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    if-eqz v0, :cond_6

    iget-object p1, p1, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/dj;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_6
    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_3
    return-void
.end method

.method public final setMapStatusLimits(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setLimitLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getLimitLatLngBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    new-instance v2, Lcom/autonavi/base/ae/gmap/GLMapState;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v3}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNativeInstance()J

    move-result-wide v3

    invoke-direct {v2, v1, v3, v4}, Lcom/autonavi/base/ae/gmap/GLMapState;-><init>(IJ)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    iget-object v4, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v6, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    iget-object v5, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v5, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object p1, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v7, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6, v7, v8, v4}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/autonavi/amap/mapcore/IPoint;

    aput-object v3, p1, v0

    aput-object v4, p1, v1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/GLMapState;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setMapTextEnable(Z)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aB:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    new-instance v0, Lcom/amap/api/col/l3s/k$23;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/k$23;-><init>(Lcom/amap/api/col/l3s/k;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->aT:Lcom/amap/api/col/l3s/k$a;

    iput-boolean p1, v0, Lcom/amap/api/col/l3s/k$a;->c:Z

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aT:Lcom/amap/api/col/l3s/k$a;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/amap/api/col/l3s/k$a;->b:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aT:Lcom/amap/api/col/l3s/k$a;

    iput v0, p0, Lcom/amap/api/col/l3s/k$a;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setMapTextZIndex(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/k;->ai:I

    return-void
.end method

.method public final setMapType(I)V
    .locals 14

    iget v0, p0, Lcom/amap/api/col/l3s/k;->ab:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/amap/api/col/l3s/k;->ab:I

    iput p1, p0, Lcom/amap/api/col/l3s/k;->ab:I

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_2

    :goto_0
    move v8, v4

    move v9, v8

    :goto_1
    move v10, v9

    goto :goto_2

    :cond_2
    if-ne p1, v1, :cond_3

    move v8, v3

    move v9, v4

    goto :goto_1

    :cond_3
    const/4 v5, 0x3

    if-ne p1, v5, :cond_4

    move v10, v2

    move v9, v3

    move v8, v4

    goto :goto_2

    :cond_4
    if-ne p1, v2, :cond_5

    move v10, v2

    move v8, v4

    move v9, v8

    goto :goto_2

    :cond_5
    if-ne p1, v0, :cond_6

    move v10, v0

    move v8, v1

    move v9, v4

    goto :goto_2

    :cond_6
    :try_start_0
    iput v3, p0, Lcom/amap/api/col/l3s/k;->ab:I

    goto :goto_0

    :goto_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1, v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapStyleMode(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1, v9}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapStyleTime(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1, v10}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapStyleState(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aM:Lcom/amap/api/col/l3s/j;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aM:Lcom/amap/api/col/l3s/j;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/j;->d()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aM:Lcom/amap/api/col/l3s/j;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/j;->e()V

    goto :goto_3

    :cond_7
    const/4 v7, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lcom/amap/api/col/l3s/k;->a(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1, v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setCustomStyleEnable(Z)V

    :goto_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    invoke-virtual {p1, v3}, Lcom/amap/api/col/l3s/aj;->setLogoEnable(Z)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "zh_cn"

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/k;->setMapLanguage(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0, v3, v8, v9, v10}, Lcom/amap/api/col/l3s/k;->a(IIII)V

    :goto_4
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AMapDelegateImp"

    const-string v0, "setMaptype"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setMapWidgetListener(Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    const-class v0, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final setMaskLayerParams(IIIIIJ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->ak:Lcom/amap/api/col/l3s/ae;

    if-eqz v0, :cond_3

    int-to-float v0, p4

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p5, v1, :cond_0

    new-instance v1, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    invoke-direct {v1, v0, v2}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;-><init>(FF)V

    new-instance v0, Lcom/amap/api/col/l3s/k$30;

    invoke-direct {v0, p0, p5}, Lcom/amap/api/col/l3s/k$30;-><init>(Lcom/amap/api/col/l3s/k;I)V

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    goto :goto_1

    :cond_0
    iput p5, p0, Lcom/amap/api/col/l3s/k;->al:I

    new-instance v1, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    invoke-direct {v1, v2, v0}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;-><init>(FF)V

    const p5, 0x3e4ccccd    # 0.2f

    cmpl-float p5, v0, p5

    if-lez p5, :cond_1

    iget-object p5, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz p5, :cond_2

    iget-object p5, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p5, v0}, Lcom/amap/api/col/l3s/fo;->j(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_1
    iget-object p5, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz p5, :cond_2

    iget-object p5, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    :goto_1
    new-instance p5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, p5}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, p6, p7}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setDuration(J)V

    iget-object p5, p0, Lcom/amap/api/col/l3s/k;->ak:Lcom/amap/api/col/l3s/ae;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/amap/api/col/l3s/ae;->a(IIII)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->ak:Lcom/amap/api/col/l3s/ae;

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/ae;->a(Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setMaxZoomLevel(F)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMaxZoomLevel(F)V

    return-void
.end method

.method public final setMinZoomLevel(F)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMinZoomLevel(F)V

    return-void
.end method

.method public final setMyLocationEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->u:Lcom/amap/api/col/l3s/o;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/LocationSource;->activate(Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/fo;->h(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    if-nez v0, :cond_4

    new-instance v0, Lcom/amap/api/col/l3s/dc;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3s/dc;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/dc;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/fo;->h(Ljava/lang/Boolean;)V

    :cond_4
    :goto_0
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->B:Lcom/amap/api/col/l3s/aj;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/aj;->setMyLocationButtonEnabled(Z)V

    :cond_5
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/k;->I:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AMapDelegateImp"

    const-string v0, "setMyLocationEnabled"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setMyLocationRotateAngle(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dc;->a(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V
    .locals 4

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/col/l3s/dc;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3s/dc;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    invoke-virtual {p1, v2, v3}, Lcom/amap/api/maps/model/MyLocationStyle;->interval(J)Lcom/amap/api/maps/model/MyLocationStyle;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    instance-of v0, v0, Lcom/amap/api/col/l3s/az;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    check-cast v0, Lcom/amap/api/col/l3s/az;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3s/az;->a(J)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    check-cast v0, Lcom/amap/api/col/l3s/az;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/az;->a(I)V

    :cond_3
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dc;->a(Lcom/amap/api/maps/model/MyLocationStyle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setMyLocationType(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/dc;->a()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/dc;->a()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationType(I)Lcom/amap/api/maps/model/MyLocationStyle;

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/dc;->a()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/k;->setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setNaviLabelEnable(ZII)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aB:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    new-instance v0, Lcom/amap/api/col/l3s/k$25;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amap/api/col/l3s/k$25;-><init>(Lcom/amap/api/col/l3s/k;ZII)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->aV:Lcom/amap/api/col/l3s/k$a;

    iput-boolean p1, v0, Lcom/amap/api/col/l3s/k$a;->c:Z

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aV:Lcom/amap/api/col/l3s/k$a;

    iput p2, p1, Lcom/amap/api/col/l3s/k$a;->h:I

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aV:Lcom/amap/api/col/l3s/k$a;

    iput p3, p1, Lcom/amap/api/col/l3s/k$a;->i:I

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aV:Lcom/amap/api/col/l3s/k$a;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/amap/api/col/l3s/k$a;->b:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aV:Lcom/amap/api/col/l3s/k$a;

    iput p2, p0, Lcom/amap/api/col/l3s/k$a;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMapClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMapTouchListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setOnMaploadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setOnMultiPointClickListener(Lcom/amap/api/maps/AMap$OnMultiPointClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aL:Lcom/amap/api/col/l3s/be;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/be;->a(Lcom/amap/api/maps/AMap$OnMultiPointClickListener;)V

    :cond_0
    return-void
.end method

.method public final setOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnPOIClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    if-eqz p0, :cond_0

    const-class v0, Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/p;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setRenderFps(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    :try_start_0
    iput p1, p0, Lcom/amap/api/col/l3s/k;->am:I

    goto :goto_1

    :cond_0
    const/16 v0, 0xa

    const/16 v1, 0x28

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ev;->f(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setRenderMode(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->setRenderMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final setRoadArrowEnable(Z)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aB:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    new-instance v0, Lcom/amap/api/col/l3s/k$24;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/k$24;-><init>(Lcom/amap/api/col/l3s/k;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->aU:Lcom/amap/api/col/l3s/k$a;

    iput-boolean p1, v0, Lcom/amap/api/col/l3s/k$a;->c:Z

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aU:Lcom/amap/api/col/l3s/k$a;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/amap/api/col/l3s/k$a;->b:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aU:Lcom/amap/api/col/l3s/k$a;

    iput v0, p0, Lcom/amap/api/col/l3s/k$a;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setRunLowFrame(Z)V
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    iget p1, p0, Lcom/amap/api/col/l3s/k;->am:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/k;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final setTouchPoiEnable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setTouchPoiEnable(Z)V

    :cond_0
    return-void
.end method

.method public final setTrafficEnabled(Z)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/k$19;

    invoke-direct {v0, p0, p1, p1}, Lcom/amap/api/col/l3s/k$19;-><init>(Lcom/amap/api/col/l3s/k;ZZ)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->aO:Lcom/amap/api/col/l3s/k$a;

    iput-boolean p1, v0, Lcom/amap/api/col/l3s/k$a;->c:Z

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aO:Lcom/amap/api/col/l3s/k$a;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/amap/api/col/l3s/k$a;->b:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aO:Lcom/amap/api/col/l3s/k$a;

    iput v0, p0, Lcom/amap/api/col/l3s/k$a;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setTrafficStyleWithTextureData([B)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aB:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    new-instance v0, Lcom/amap/api/col/l3s/k$27;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/k$27;-><init>(Lcom/amap/api/col/l3s/k;[B)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/k;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->aX:Lcom/amap/api/col/l3s/k$a;

    iput-object p1, v0, Lcom/amap/api/col/l3s/k$a;->j:[B

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->aX:Lcom/amap/api/col/l3s/k$a;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/amap/api/col/l3s/k$a;->b:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->aX:Lcom/amap/api/col/l3s/k$a;

    iput v0, p0, Lcom/amap/api/col/l3s/k$a;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setVisibilityEx(I)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->D:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final setWorldVectorMapStyle(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amap/api/col/l3s/k;->a(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->be:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->be:Ljava/lang/String;

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->bc:Lcom/amap/api/col/l3s/pf;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/pf;->i()V

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setZOrderOnTop(Z)V
    .locals 0

    return-void
.end method

.method public final setZoomPosition(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fo;->a(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public final setZoomScaleParam(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/k;->av:F

    return-void
.end method

.method public final showCompassEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fo;->d(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final showIndoorSwitchControlsEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fo;->a(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final showInfoWindow(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->x:Lcom/amap/api/col/l3s/ay;

    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ay;->c()Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;->showInfoWindow(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public final showLogoEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fo;->f(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final showMyLocationButtonEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fo;->c(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final showMyLocationOverlay(Landroid/location/Location;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->I:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->Q:Lcom/amap/api/maps/LocationSource;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/col/l3s/dc;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3s/dc;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/dc;->a(Landroid/location/Location;)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->v:Lcom/amap/api/col/l3s/p;

    const-class v1, Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    invoke-interface {v2, p1}, Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    return-void

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/dc;->c()V

    :cond_7
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k;->P:Lcom/amap/api/col/l3s/dc;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    const-string p1, "AMapDelegateImp"

    const-string v0, "showMyLocationOverlay"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final showScaleEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fo;->e(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final showZoomControlsEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->K:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->E:Lcom/amap/api/col/l3s/fo;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fo;->b(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final stopAnimation()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->interruptAnimation()V

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toMapLenWithWin(I)F
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k;->M:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getGLUnitWithWin(I)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zoomOut(I)V
    .locals 2

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/k;->aA:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/k;->c()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/ao;->b()Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/k;->animateCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "onDoubleTap"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V

    :cond_1
    return-void
.end method
