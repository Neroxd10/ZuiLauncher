.class public Lcom/alibaba/sdk/android/mns/model/deserialize/QueueMetaDeserializer;
.super Lcom/alibaba/sdk/android/mns/model/deserialize/AbstractQueueMetaDeserializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/mns/model/deserialize/AbstractQueueMetaDeserializer<",
        "Lcom/alibaba/sdk/android/mns/model/QueueMeta;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/model/deserialize/AbstractQueueMetaDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lokhttp3/Response;)Lcom/alibaba/sdk/android/mns/model/QueueMeta;
    .locals 3

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

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/mns/model/deserialize/AbstractQueueMetaDeserializer;->parseQueueMeta(Lorg/w3c/dom/Element;)Lcom/alibaba/sdk/android/mns/model/QueueMeta;

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

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/mns/model/deserialize/QueueMetaDeserializer;->deserialize(Lokhttp3/Response;)Lcom/alibaba/sdk/android/mns/model/QueueMeta;

    move-result-object p0

    return-object p0
.end method
