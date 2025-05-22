.class public abstract Lcom/alibaba/sdk/android/mns/model/deserialize/AbstractQueueMetaDeserializer;
.super Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseQueueMeta(Lorg/w3c/dom/Element;)Lcom/alibaba/sdk/android/mns/model/QueueMeta;
    .locals 9

    new-instance v0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/mns/model/QueueMeta;-><init>()V

    const-string v1, "QueueName"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->setQueueName(Ljava/lang/String;)V

    const-string v1, "DelaySeconds"

    const-string v3, "0"

    invoke-virtual {p0, p1, v1, v3}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->setDelaySeconds(Ljava/lang/Long;)V

    const-string v1, "MaximumMessageSize"

    invoke-virtual {p0, p1, v1, v3}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->setMaxMessageSize(Ljava/lang/Long;)V

    const-string v1, "MessageRetentionPeriod"

    invoke-virtual {p0, p1, v1, v3}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->setMessageRetentionPeriod(Ljava/lang/Long;)V

    const-string v1, "VisibilityTimeout"

    invoke-virtual {p0, p1, v1, v3}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->setVisibilityTimeout(Ljava/lang/Long;)V

    const-string v1, "CreateTime"

    invoke-virtual {p0, p1, v1, v3}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->setCreateTime(Ljava/util/Date;)V

    const-string v1, "LastModifyTime"

    invoke-virtual {p0, p1, v1, v3}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->setLastModifyTime(Ljava/util/Date;)V

    const-string v1, "PollingWaitSeconds"

    invoke-virtual {p0, p1, v1, v3}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->setPollingWaitSeconds(Ljava/lang/Integer;)V

    const-string v1, "ActiveMessages"

    invoke-virtual {p0, p1, v1, v3}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->setActiveMessages(Ljava/lang/Long;)V

    const-string v1, "InactiveMessages"

    invoke-virtual {p0, p1, v1, v3}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->setInactiveMessages(Ljava/lang/Long;)V

    const-string v1, "DelayMessages"

    invoke-virtual {p0, p1, v1, v3}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->setDelayMessages(Ljava/lang/Long;)V

    const-string v1, "QueueURL"

    invoke-virtual {p0, p1, v1, v2}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->setQueueURL(Ljava/lang/String;)V

    const-string v1, "LoggingEnabled"

    const-string v2, "false"

    invoke-virtual {p0, p1, v1, v2}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->setLoggingEnabled(Z)V

    return-object v0
.end method
