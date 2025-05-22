.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TrackResolverUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildResolver(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TrackResolverUtil$a;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TrackResolverUtil$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
