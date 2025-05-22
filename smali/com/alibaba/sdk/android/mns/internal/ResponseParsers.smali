.class public Lcom/alibaba/sdk/android/mns/internal/ResponseParsers;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$PeekMessageParser;,
        Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$ChangeMessageVisibilityParser;,
        Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$DeleteMessageParser;,
        Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$ReceiveMessageParser;,
        Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$SendMessageResponseParser;,
        Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$ListQueueResponseParser;,
        Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$GetQueueAttributesResponseParser;,
        Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$SetQueueAttributesResponseParser;,
        Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$DeleteQueueResponseParser;,
        Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$CreateQueueResponseParser;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseResponseErrorXML(Lokhttp3/Response;)Lcom/alibaba/sdk/android/common/ServiceException;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/alibaba/sdk/android/mns/model/deserialize/ErrorMessageListDeserializer;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/mns/model/deserialize/ErrorMessageListDeserializer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/mns/model/deserialize/ErrorMessageListDeserializer;->deserialize(Lokhttp3/Response;)Lcom/alibaba/sdk/android/common/ServiceException;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers;->safeCloseResponse(Lokhttp3/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p0}, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers;->safeCloseResponse(Lokhttp3/Response;)V

    throw v0
.end method

.method public static parseResponseHeader(Lokhttp3/Response;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static safeCloseResponse(Lokhttp3/Response;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
