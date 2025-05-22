.class public Lcom/zui/launcher/dot/DotInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final MAX_COUNT:I = 0x3e7


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/notification/NotificationKeyData;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Z

.field protected mZuiDotCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/dot/DotInfo;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/dot/DotInfo;->c:Z

    iput v0, p0, Lcom/zui/launcher/dot/DotInfo;->mZuiDotCount:I

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/dot/DotInfo;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/dot/DotInfo;->c:Z

    iput v0, p0, Lcom/zui/launcher/dot/DotInfo;->mZuiDotCount:I

    iput-boolean p1, p0, Lcom/zui/launcher/dot/DotInfo;->c:Z

    iput p2, p0, Lcom/zui/launcher/dot/DotInfo;->mZuiDotCount:I

    return-void
.end method


# virtual methods
.method public addOrUpdateNotificationKey(Lcom/zui/launcher/notification/NotificationKeyData;)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/dot/DotInfo;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/dot/DotInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/notification/NotificationKeyData;

    :goto_0
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/zui/launcher/notification/NotificationKeyData;->count:I

    iget p1, p1, Lcom/zui/launcher/notification/NotificationKeyData;->count:I

    if-ne v1, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget v2, p0, Lcom/zui/launcher/dot/DotInfo;->b:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/zui/launcher/dot/DotInfo;->b:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/zui/launcher/dot/DotInfo;->b:I

    iput p1, v0, Lcom/zui/launcher/notification/NotificationKeyData;->count:I

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/dot/DotInfo;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/zui/launcher/dot/DotInfo;->b:I

    iget p1, p1, Lcom/zui/launcher/notification/NotificationKeyData;->count:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/zui/launcher/dot/DotInfo;->b:I

    :cond_3
    return v0
.end method

.method public getNotificationCount()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/dot/DotInfo;->b:I

    return p0
.end method

.method public getNotificationKeys()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/notification/NotificationKeyData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/dot/DotInfo;->a:Ljava/util/List;

    return-object p0
.end method

.method public getShorcutBageInfoString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/zui/launcher/dot/DotInfo;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/launcher/dot/DotInfo;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/dot/DotInfo;->mZuiDotCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getZuiDotCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/dot/DotInfo;->c:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/zui/launcher/dot/DotInfo;->mZuiDotCount:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isZuiDotShow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/dot/DotInfo;->c:Z

    return p0
.end method

.method public removeNotificationKey(Lcom/zui/launcher/notification/NotificationKeyData;)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dot/DotInfo;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/zui/launcher/dot/DotInfo;->b:I

    iget p1, p1, Lcom/zui/launcher/notification/NotificationKeyData;->count:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/zui/launcher/dot/DotInfo;->b:I

    :cond_0
    return v0
.end method

.method public setZuiDotCount(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/dot/DotInfo;->mZuiDotCount:I

    return-void
.end method

.method public setZuiDotShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/dot/DotInfo;->c:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget p0, p0, Lcom/zui/launcher/dot/DotInfo;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
