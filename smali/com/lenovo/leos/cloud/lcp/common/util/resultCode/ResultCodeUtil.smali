.class public Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAuthError(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isResultBizErr(I)Z
    .locals 1

    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isResultNetErr(I)Z
    .locals 1

    const/16 v0, 0x2bb

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x259

    if-lt p0, v0, :cond_0

    const/16 v0, 0x25e

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static onNoneSpaceIOException(Ljava/lang/Exception;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "enough space"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "No space left on device"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static parseResultCode(Ljava/lang/Exception;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, p0, Ljava/util/concurrent/CancellationException;

    const/4 v2, 0x1

    if-nez v1, :cond_2f

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_0

    goto/16 :goto_13

    :cond_0
    instance-of v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;

    if-nez v1, :cond_2f

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;

    if-eqz v1, :cond_1

    goto/16 :goto_13

    :cond_1
    instance-of v1, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    if-nez v1, :cond_2f

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    if-eqz v1, :cond_2

    goto/16 :goto_13

    :cond_2
    instance-of v1, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    const/4 v2, 0x4

    if-nez v1, :cond_2f

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    if-eqz v1, :cond_3

    goto/16 :goto_13

    :cond_3
    instance-of v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception;

    if-nez v1, :cond_2f

    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception;

    if-eqz v1, :cond_4

    goto/16 :goto_13

    :cond_4
    instance-of v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception;

    if-nez v1, :cond_2e

    if-eqz v0, :cond_5

    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception;

    if-eqz v1, :cond_5

    goto/16 :goto_12

    :cond_5
    instance-of v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;

    if-eqz v1, :cond_6

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;->getStatusCode()I

    move-result p0

    return p0

    :cond_6
    if-eqz v0, :cond_7

    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;->getStatusCode()I

    move-result p0

    return p0

    :cond_7
    instance-of v1, p0, Ljava/io/FileNotFoundException;

    if-nez v1, :cond_2d

    if-eqz v0, :cond_8

    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_8

    goto/16 :goto_11

    :cond_8
    instance-of v1, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/NoneEnoughSpaceException;

    const/4 v2, 0x7

    if-nez v1, :cond_2c

    if-eqz v0, :cond_9

    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/common/exception/NoneEnoughSpaceException;

    if-eqz v1, :cond_9

    goto/16 :goto_10

    :cond_9
    instance-of v1, p0, Ljava/net/UnknownHostException;

    if-nez v1, :cond_2b

    if-eqz v0, :cond_a

    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_a

    goto/16 :goto_f

    :cond_a
    instance-of v1, p0, Lorg/apache/http/conn/HttpHostConnectException;

    if-nez v1, :cond_2a

    if-eqz v0, :cond_b

    instance-of v1, v0, Lorg/apache/http/conn/HttpHostConnectException;

    if-eqz v1, :cond_b

    goto/16 :goto_e

    :cond_b
    instance-of v1, p0, Ljava/net/SocketException;

    if-nez v1, :cond_29

    if-eqz v0, :cond_c

    instance-of v1, v0, Ljava/net/SocketException;

    if-eqz v1, :cond_c

    goto/16 :goto_d

    :cond_c
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_28

    if-eqz v0, :cond_d

    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_d

    goto/16 :goto_c

    :cond_d
    instance-of v1, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v1, :cond_27

    if-eqz v0, :cond_e

    instance-of v1, v0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v1, :cond_e

    goto/16 :goto_b

    :cond_e
    instance-of v1, p0, Lorg/apache/http/NoHttpResponseException;

    if-nez v1, :cond_26

    if-eqz v0, :cond_f

    instance-of v1, v0, Lorg/apache/http/NoHttpResponseException;

    if-eqz v1, :cond_f

    goto/16 :goto_a

    :cond_f
    instance-of v1, p0, Ljava/net/ConnectException;

    if-nez v1, :cond_25

    if-eqz v0, :cond_10

    instance-of v1, v0, Ljava/net/ConnectException;

    if-eqz v1, :cond_10

    goto/16 :goto_9

    :cond_10
    instance-of v1, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/CompressException;

    if-nez v1, :cond_24

    if-eqz v0, :cond_11

    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/common/exception/CompressException;

    if-eqz v1, :cond_11

    goto/16 :goto_8

    :cond_11
    instance-of v1, p0, Ljava/io/IOException;

    if-nez v1, :cond_22

    if-eqz v0, :cond_12

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_12

    goto/16 :goto_7

    :cond_12
    instance-of v1, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/NoneDataRuntimrException;

    if-nez v1, :cond_21

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/common/exception/NoneDataRuntimrException;

    if-eqz v1, :cond_13

    goto :goto_6

    :cond_13
    instance-of v1, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    if-nez v1, :cond_20

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    if-eqz v1, :cond_14

    goto :goto_5

    :cond_14
    instance-of v1, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    const/4 v2, -0x2

    if-nez v1, :cond_1c

    if-eqz v0, :cond_15

    instance-of v3, v0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    if-eqz v3, :cond_15

    goto :goto_3

    :cond_15
    instance-of v1, p0, Lorg/json/JSONException;

    if-nez v1, :cond_1b

    if-eqz v0, :cond_16

    instance-of v1, v0, Lorg/json/JSONException;

    if-eqz v1, :cond_16

    goto :goto_2

    :cond_16
    instance-of v1, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ClientDbException;

    if-nez v1, :cond_1a

    if-eqz v0, :cond_17

    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/common/exception/ClientDbException;

    if-eqz v1, :cond_17

    goto :goto_1

    :cond_17
    instance-of p0, p0, Ljava/lang/NullPointerException;

    if-nez p0, :cond_19

    if-eqz v0, :cond_18

    instance-of p0, v0, Ljava/lang/NullPointerException;

    if-eqz p0, :cond_18

    goto :goto_0

    :cond_18
    return v2

    :cond_19
    :goto_0
    const/4 p0, 0x2

    return p0

    :cond_1a
    :goto_1
    const/16 p0, 0xc9

    return p0

    :cond_1b
    :goto_2
    return v2

    :cond_1c
    :goto_3
    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    move-object v3, p0

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    goto :goto_4

    :cond_1d
    if-eqz v0, :cond_1e

    instance-of p0, v0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    if-eqz p0, :cond_1e

    move-object v3, v0

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    :cond_1e
    :goto_4
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;->getResultCode()I

    move-result p0

    return p0

    :cond_1f
    return v2

    :cond_20
    :goto_5
    const/4 p0, 0x5

    return p0

    :cond_21
    :goto_6
    const/16 p0, 0x11

    return p0

    :cond_22
    :goto_7
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->onNoneSpaceIOException(Ljava/lang/Exception;)Z

    move-result p0

    if-eqz p0, :cond_23

    return v2

    :cond_23
    const/16 p0, 0x2bb

    return p0

    :cond_24
    :goto_8
    const/16 p0, 0xe

    return p0

    :cond_25
    :goto_9
    const/16 p0, 0x25e

    return p0

    :cond_26
    :goto_a
    const/16 p0, 0x25d

    return p0

    :cond_27
    :goto_b
    const/16 p0, 0x25c

    return p0

    :cond_28
    :goto_c
    const/16 p0, 0x25b

    return p0

    :cond_29
    :goto_d
    const/16 p0, 0x25a

    return p0

    :cond_2a
    :goto_e
    const/16 p0, 0x259

    return p0

    :cond_2b
    :goto_f
    const/4 p0, 0x6

    return p0

    :cond_2c
    :goto_10
    return v2

    :cond_2d
    :goto_11
    const/16 p0, 0x8

    return p0

    :cond_2e
    :goto_12
    const/16 p0, 0xb

    return p0

    :cond_2f
    :goto_13
    return v2
.end method
