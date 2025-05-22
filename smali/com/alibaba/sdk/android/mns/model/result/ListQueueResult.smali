.class public Lcom/alibaba/sdk/android/mns/model/result/ListQueueResult;
.super Lcom/alibaba/sdk/android/mns/model/MNSResult;
.source ""


# instance fields
.field private d:Lcom/alibaba/sdk/android/mns/model/PagingListResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/mns/model/PagingListResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/model/MNSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getQueueLists()Lcom/alibaba/sdk/android/mns/model/PagingListResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/sdk/android/mns/model/PagingListResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/result/ListQueueResult;->d:Lcom/alibaba/sdk/android/mns/model/PagingListResult;

    return-object p0
.end method

.method public setQueueLists(Lcom/alibaba/sdk/android/mns/model/PagingListResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/PagingListResult<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/result/ListQueueResult;->d:Lcom/alibaba/sdk/android/mns/model/PagingListResult;

    return-void
.end method
