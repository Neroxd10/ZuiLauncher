.class public Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networkbean/LocalNewsItemBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewsDetail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail$NewsImage;
    }
.end annotation


# instance fields
.field private adID:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad_id"
    .end annotation
.end field

.field private articleUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "article_url"
    .end annotation
.end field

.field private commentCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "comment_count"
    .end annotation
.end field

.field private groupID:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "group_id"
    .end annotation
.end field

.field private image_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail$NewsImage;",
            ">;"
        }
    .end annotation
.end field

.field private large_image_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail$NewsImage;",
            ">;"
        }
    .end annotation
.end field

.field private logExtra:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "log_extra"
    .end annotation
.end field

.field private middle_image:Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail$NewsImage;

.field final synthetic this$0:Lcom/zui/launcher/networkbean/LocalNewsItemBean;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/networkbean/LocalNewsItemBean;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->this$0:Lcom/zui/launcher/networkbean/LocalNewsItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdID()J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->adID:J

    return-wide v0
.end method

.method public getCommentCount()J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->commentCount:J

    return-wide v0
.end method

.method public getGroupID()J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->groupID:J

    return-wide v0
.end method

.method public getLogExtra()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->logExtra:Ljava/lang/String;

    return-object p0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->large_image_list:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->large_image_list:Ljava/util/List;

    :goto_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail$NewsImage;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->image_list:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->image_list:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->middle_image:Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail$NewsImage;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail$NewsImage;->access$000(Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail$NewsImage;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->articleUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setCommentCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->commentCount:J

    return-void
.end method

.method public setGroupiId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->groupID:J

    return-void
.end method

.method public setImage_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail$NewsImage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->image_list:Ljava/util/List;

    return-void
.end method

.method public setLarge_image_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail$NewsImage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->large_image_list:Ljava/util/List;

    return-void
.end method

.method public setMiddle_image(Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail$NewsImage;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->middle_image:Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail$NewsImage;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->articleUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ncommentCount -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->commentCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nurl -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->articleUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nphoto url ---  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nadID -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;->adID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
