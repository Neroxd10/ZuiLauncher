.class final Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UserSpaceUtil$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UserSpaceUtil;->refreshUserSpace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UserSpaceUtil;->queryCloudUserSpace()Ljava/lang/String;

    return-void
.end method
