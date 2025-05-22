.class public Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;
.super Lcom/alibaba/sdk/android/mns/model/MNSRequest;
.source ""


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/model/MNSRequest;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;->c:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMarker()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getRetNum()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;->c:Ljava/lang/Integer;

    return-object p0
.end method
