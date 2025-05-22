.class Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard$TimeoutCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->e(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;J)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl$a;->b:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl$a;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public warning(Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;)V
    .locals 2

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl$a;->b:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl$a;->a:J

    invoke-static {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->b(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;J)V

    return-void
.end method
