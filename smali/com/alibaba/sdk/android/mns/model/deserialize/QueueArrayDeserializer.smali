.class public Lcom/alibaba/sdk/android/mns/model/deserialize/QueueArrayDeserializer;
.super Lcom/alibaba/sdk/android/mns/model/deserialize/AbstractQueueMetaDeserializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/mns/model/deserialize/AbstractQueueMetaDeserializer<",
        "Lcom/alibaba/sdk/android/mns/model/PagingListResult<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/model/deserialize/AbstractQueueMetaDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lokhttp3/Response;)Lcom/alibaba/sdk/android/mns/model/PagingListResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Lcom/alibaba/sdk/android/mns/model/PagingListResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/model/serialize/BaseXMLSerializer;->getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/mns/model/deserialize/QueueArrayDeserializer;->parseQueueList(Lorg/w3c/dom/Document;)Lcom/alibaba/sdk/android/mns/model/PagingListResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic deserialize(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/mns/model/deserialize/QueueArrayDeserializer;->deserialize(Lokhttp3/Response;)Lcom/alibaba/sdk/android/mns/model/PagingListResult;

    move-result-object p0

    return-object p0
.end method

.method public parseQueueList(Lorg/w3c/dom/Document;)Lcom/alibaba/sdk/android/mns/model/PagingListResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Lcom/alibaba/sdk/android/mns/model/PagingListResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Queue"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    const-string v6, "QueueURL"

    invoke-virtual {p0, v4, v6, v5}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    new-instance v5, Lcom/alibaba/sdk/android/mns/model/PagingListResult;

    invoke-direct {v5}, Lcom/alibaba/sdk/android/mns/model/PagingListResult;-><init>()V

    const-string p0, "NextMarker"

    invoke-interface {p1, p0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    if-lez p1, :cond_2

    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/alibaba/sdk/android/mns/model/PagingListResult;->setMarker(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v5, v1}, Lcom/alibaba/sdk/android/mns/model/PagingListResult;->setResult(Ljava/util/List;)V

    :cond_3
    return-object v5
.end method
