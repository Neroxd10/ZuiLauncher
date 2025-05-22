.class public Lcom/zui/launcher/networksdk/OKHttpUtils$FailResponse;
.super Ljava/lang/Exception;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networksdk/OKHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailResponse"
.end annotation


# instance fields
.field private a:Lokhttp3/Response;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lokhttp3/Response;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$FailResponse;->a:Lokhttp3/Response;

    return-object p0
.end method

.method public setResponse(Lokhttp3/Response;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$FailResponse;->a:Lokhttp3/Response;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$FailResponse;->a:Lokhttp3/Response;

    invoke-virtual {p0}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
