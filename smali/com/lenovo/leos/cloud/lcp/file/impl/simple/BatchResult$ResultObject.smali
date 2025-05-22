.class public Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultObject"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;->c:J

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;->c:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;->b:Ljava/lang/String;

    return-object p0
.end method
