.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ID:Ljava/lang/String; = "ID"

.field public static final PATH_FIELD:Ljava/lang/String; = "\u8def\u5f84"

.field public static final TYPE_FIELD:Ljava/lang/String; = "\u7c7b\u578b"

.field private static final serialVersionUID:J = -0x2034c14e360c0476L


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->a:J

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->a:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->a:J

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;->c:Ljava/lang/String;

    return-void
.end method
