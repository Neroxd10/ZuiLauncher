.class public final Lcom/amap/api/col/l3s/bi;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/bi;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/bi;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/bi;->a:Z

    return p0
.end method
