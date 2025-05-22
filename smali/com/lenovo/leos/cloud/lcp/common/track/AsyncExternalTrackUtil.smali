.class public Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil;
.super Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;-><init>()V

    return-void
.end method

.method private static h(Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil$a;-><init>(Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;Ljava/lang/String;)V

    return-object v0
.end method

.method public static track(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;->getInstance()Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;

    move-result-object v0

    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, p5}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncExternalTrackUtil;->h(Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
