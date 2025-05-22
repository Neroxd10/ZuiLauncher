.class public final Lcom/amap/api/col/l3s/iv$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/iv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/iv$b$b;,
        Lcom/amap/api/col/l3s/iv$b$a;
    }
.end annotation


# instance fields
.field public a:Lorg/json/JSONObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Lorg/json/JSONObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:I

.field public e:J

.field public f:Lorg/json/JSONObject;

.field public g:Lcom/amap/api/col/l3s/iv$b$a;

.field public h:Lcom/amap/api/col/l3s/iv$b$b;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/col/l3s/iv$b;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/iv$b;->e:J

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/iv$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/iv$b;->i:Z

    return p1
.end method
