.class public Lcom/alibaba/sdk/android/mns/model/serialize/MessageSerializer;
.super Lcom/alibaba/sdk/android/mns/model/serialize/XMLSerializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/mns/model/serialize/XMLSerializer<",
        "Lcom/alibaba/sdk/android/mns/model/Message;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/model/serialize/XMLSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/alibaba/sdk/android/mns/model/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/model/serialize/BaseXMLSerializer;->getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "http://mns.aliyuncs.com/doc/v1"

    const-string v2, "Message"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/Message;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MessageBody"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/alibaba/sdk/android/mns/model/serialize/XMLSerializer;->safeCreateContentElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/Message;->getDelaySeconds()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DelaySeconds"

    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/alibaba/sdk/android/mns/model/serialize/XMLSerializer;->safeCreateContentElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/Message;->getPriority()Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "Priority"

    invoke-virtual {p0, v0, v2, p1, v4}, Lcom/alibaba/sdk/android/mns/model/serialize/XMLSerializer;->safeCreateContentElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {v1, p0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    invoke-static {v0, p2}, Lcom/alibaba/sdk/android/mns/model/serialize/XmlUtil;->xmlNodeToString(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lcom/alibaba/sdk/android/mns/model/Message;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/mns/model/serialize/MessageSerializer;->serialize(Lcom/alibaba/sdk/android/mns/model/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
