.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source ""


# static fields
.field public static final STATUS_ONGOING:I = 0x64

.field public static final STATUS_ONGOING_BACKUP_DB:I = 0x67

.field public static final STATUS_ONGOING_BACKUP_NET:I = 0x68

.field public static final STATUS_ONGOING_DIFF_DB:I = 0x65

.field public static final STATUS_ONGOING_DIFF_NET:I = 0x66


# instance fields
.field protected cost:J

.field protected progressStatus:I

.field protected start:J


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    return-void
.end method


# virtual methods
.method protected abstract notifySubProgress(F)V
.end method

.method protected setProgressStatus(I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->notifySubProgress(F)V

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->progressStatus:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->notifySubProgress(F)V

    return-void
.end method
