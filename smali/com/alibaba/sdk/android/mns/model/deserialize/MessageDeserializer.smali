.class public Lcom/alibaba/sdk/android/mns/model/deserialize/MessageDeserializer;
.super Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer<",
        "Lcom/alibaba/sdk/android/mns/model/Message;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lokhttp3/Response;)Lcom/alibaba/sdk/android/mns/model/Message;
    .locals 6

    new-instance v0, Lcom/alibaba/sdk/android/mns/model/Message;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/mns/model/Message;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/model/serialize/BaseXMLSerializer;->getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "MessageId"

    invoke-virtual {p0, p1, v2, v1}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/mns/model/Message;->setMessageId(Ljava/lang/String;)V

    :cond_0
    const-string v2, "MessageBodyMD5"

    invoke-virtual {p0, p1, v2, v1}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/mns/model/Message;->setMessageBodyMd5(Ljava/lang/String;)V

    :cond_1
    const-string v2, "ReceiptHandle"

    invoke-virtual {p0, p1, v2, v1}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/mns/model/Message;->setReceiptHandle(Ljava/lang/String;)V

    :cond_2
    const-string v2, "MessageBody"

    invoke-virtual {p0, p1, v2, v1}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/mns/model/Message;->setMessageBody(Ljava/lang/String;)V

    :cond_3
    const-string v2, "EnqueueTime"

    invoke-virtual {p0, p1, v2, v1}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Ljava/util/Date;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/mns/model/Message;->setEnqueueTime(Ljava/util/Date;)V

    :cond_4
    const-string v2, "NextVisibleTime"

    invoke-virtual {p0, p1, v2, v1}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v3, Ljava/util/Date;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/mns/model/Message;->setNextVisibleTime(Ljava/util/Date;)V

    :cond_5
    const-string v2, "FirstDequeueTime"

    invoke-virtual {p0, p1, v2, v1}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v3, Ljava/util/Date;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/mns/model/Message;->setFirstDequeueTime(Ljava/util/Date;)V

    :cond_6
    const-string v2, "DequeueCount"

    invoke-virtual {p0, p1, v2, v1}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/mns/model/Message;->setDequeueCount(I)V

    :cond_7
    const-string v2, "Priority"

    invoke-virtual {p0, p1, v2, v1}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/mns/model/Message;->setPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    return-object v1
.end method

.method public bridge synthetic deserialize(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/mns/model/deserialize/MessageDeserializer;->deserialize(Lokhttp3/Response;)Lcom/alibaba/sdk/android/mns/model/Message;

    move-result-object p0

    return-object p0
.end method
