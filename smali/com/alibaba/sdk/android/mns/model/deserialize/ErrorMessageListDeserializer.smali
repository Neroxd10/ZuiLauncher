.class public Lcom/alibaba/sdk/android/mns/model/deserialize/ErrorMessageListDeserializer;
.super Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer<",
        "Lcom/alibaba/sdk/android/common/ServiceException;",
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
.method public deserialize(Lokhttp3/Response;)Lcom/alibaba/sdk/android/common/ServiceException;
    .locals 12

    const-string v0, ""

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v8

    const-string v1, "x-mns-request-id"

    invoke-virtual {p1, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/model/serialize/BaseXMLSerializer;->getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    new-instance v4, Lorg/xml/sax/InputSource;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Code"

    invoke-virtual {p0, v3, v4, v0}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    const-string v4, "Message"

    invoke-virtual {p0, v3, v4, v0}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    const-string v4, "RequestId"

    invoke-virtual {p0, v3, v4, v0}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    const-string v1, "HostId"

    invoke-virtual {p0, v3, v1, v0}, Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;->safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    new-instance v0, Lcom/alibaba/sdk/android/common/ServiceException;

    move-object v1, v0

    move v2, v8

    move-object v3, v10

    move-object v4, v9

    move-object v5, v11

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/sdk/android/common/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p0, v2

    :goto_0
    move-object v2, v9

    move-object v1, v11

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p0, v2

    goto :goto_1

    :catch_3
    move-exception v0

    move-object p0, v2

    move-object v10, p0

    :goto_1
    move-object v2, v9

    goto :goto_2

    :cond_0
    move-object v7, p1

    move-object v5, v1

    move-object v3, v2

    move-object v4, v3

    move-object v6, v4

    goto :goto_3

    :catch_4
    move-exception v0

    move-object p0, v2

    move-object v10, p0

    goto :goto_2

    :catch_5
    move-exception v0

    move-object p0, v2

    move-object p1, p0

    move-object v10, p1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, p0

    move-object v7, p1

    move-object v5, v1

    move-object v4, v2

    move-object v3, v10

    :goto_3
    new-instance p0, Lcom/alibaba/sdk/android/common/ServiceException;

    move-object v1, p0

    move v2, v8

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/sdk/android/common/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic deserialize(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/mns/model/deserialize/ErrorMessageListDeserializer;->deserialize(Lokhttp3/Response;)Lcom/alibaba/sdk/android/common/ServiceException;

    move-result-object p0

    return-object p0
.end method
