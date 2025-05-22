.class public Lcom/lenovo/cdnsdk/bean/ContenBean$DataBean;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/cdnsdk/bean/ContenBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/cdnsdk/bean/ContenBean$DataBean$FeedbacksBean;,
        Lcom/lenovo/cdnsdk/bean/ContenBean$DataBean$DefaultFeedbackBean;
    }
.end annotation


# instance fields
.field public clickUrl:Ljava/lang/String;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "click_url"
    .end annotation
.end field

.field public commentCount:I
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "comment_count"
    .end annotation
.end field

.field public contentId:Ljava/lang/String;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "content_id"
    .end annotation
.end field

.field public contentType:Ljava/lang/String;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "content_type"
    .end annotation
.end field

.field public deeplink:Ljava/lang/String;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "deeplink"
    .end annotation
.end field

.field public defaultFeedback:Lcom/lenovo/cdnsdk/bean/ContenBean$DataBean$DefaultFeedbackBean;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "defaultFeedback"
    .end annotation
.end field

.field public duration:I
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "duration"
    .end annotation
.end field

.field public feedbackUrl:Ljava/lang/String;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "feedback_url"
    .end annotation
.end field

.field public feedbacks:Ljava/util/List;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "feedbacks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/cdnsdk/bean/ContenBean$DataBean$FeedbacksBean;",
            ">;"
        }
    .end annotation
.end field

.field public imageCount:I
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "image_count"
    .end annotation
.end field

.field public imageType:I
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "image_type"
    .end annotation
.end field

.field public images:Ljava/util/List;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "images"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public impressionUrl:Ljava/lang/String;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "impression_url"
    .end annotation
.end field

.field public publishTime:Ljava/lang/String;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "publish_time"
    .end annotation
.end field

.field public publishTimestamp:I
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "publish_timestamp"
    .end annotation
.end field

.field public recId:Ljava/lang/String;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "rec_id"
    .end annotation
.end field

.field public site:Ljava/lang/String;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "site"
    .end annotation
.end field

.field public source:Ljava/lang/String;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "source"
    .end annotation
.end field

.field public summary:Ljava/lang/String;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "summary"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "title"
    .end annotation
.end field

.field public top:I
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "top"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "type"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageModel()I
    .locals 4

    iget v0, p0, Lcom/lenovo/cdnsdk/bean/ContenBean$DataBean;->imageCount:I

    const/16 v1, 0x7d3

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/lenovo/cdnsdk/bean/ContenBean$DataBean;->imageType:I

    if-ne v0, v2, :cond_1

    const/16 p0, 0x7d1

    return p0

    :cond_1
    iget v0, p0, Lcom/lenovo/cdnsdk/bean/ContenBean$DataBean;->imageCount:I

    const/4 v3, 0x2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/lenovo/cdnsdk/bean/ContenBean$DataBean;->imageType:I

    if-ne v0, v3, :cond_2

    const/16 p0, 0x7d2

    return p0

    :cond_2
    iget v0, p0, Lcom/lenovo/cdnsdk/bean/ContenBean$DataBean;->imageCount:I

    if-lt v0, v3, :cond_3

    iget p0, p0, Lcom/lenovo/cdnsdk/bean/ContenBean$DataBean;->imageType:I

    if-ne p0, v2, :cond_3

    const/16 p0, 0x7d0

    return p0

    :cond_3
    return v1
.end method
