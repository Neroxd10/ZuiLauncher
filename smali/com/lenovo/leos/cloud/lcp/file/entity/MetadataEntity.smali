.class public Lcom/lenovo/leos/cloud/lcp/file/entity/MetadataEntity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/MetadataEntity;->b:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/MetadataEntity;->a:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getData([BJ)I
    .locals 0

    monitor-enter p0

    monitor-exit p0

    const/4 p0, 0x0

    return p0
.end method

.method public getFile()Ljava/io/File;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetaInfo()Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/MetadataEntity;->b:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    return-object p0
.end method

.method public length()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/MetadataEntity;->a:Ljava/lang/String;

    return-void
.end method

.method public setMetaInfo(Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/MetadataEntity;->b:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    return-void
.end method
