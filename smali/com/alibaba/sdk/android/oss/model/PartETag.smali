.class public Lcom/alibaba/sdk/android/oss/model/PartETag;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alibaba/sdk/android/oss/model/PartETag;->a:I

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/model/PartETag;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/PartETag;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getPartNumber()I
    .locals 0

    iget p0, p0, Lcom/alibaba/sdk/android/oss/model/PartETag;->a:I

    return p0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PartETag;->b:Ljava/lang/String;

    return-void
.end method

.method public setPartNumber(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/oss/model/PartETag;->a:I

    return-void
.end method
