.class Lcom/zui/launcher/networksdk/OKHttpUtils$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/networksdk/OKHttpUtils;->downloadAsync(Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/networksdk/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/Request;

.field final synthetic b:Lcom/zui/launcher/networksdk/ResultCallback;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/zui/launcher/networksdk/OKHttpUtils;


# direct methods
.method constructor <init>(Lcom/zui/launcher/networksdk/OKHttpUtils;Lokhttp3/Request;Lcom/zui/launcher/networksdk/ResultCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$d;->e:Lcom/zui/launcher/networksdk/OKHttpUtils;

    iput-object p2, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$d;->a:Lokhttp3/Request;

    iput-object p3, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$d;->b:Lcom/zui/launcher/networksdk/ResultCallback;

    iput-object p4, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$d;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$d;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$d;->e:Lcom/zui/launcher/networksdk/OKHttpUtils;

    iget-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$d;->a:Lokhttp3/Request;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$d;->b:Lcom/zui/launcher/networksdk/ResultCallback;

    invoke-static {p1, v0, p2, p0}, Lcom/zui/launcher/networksdk/OKHttpUtils;->a(Lcom/zui/launcher/networksdk/OKHttpUtils;Lokhttp3/Request;Ljava/lang/Exception;Lcom/zui/launcher/networksdk/ResultCallback;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$d;->e:Lcom/zui/launcher/networksdk/OKHttpUtils;

    iget-object v3, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$d;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/zui/launcher/networksdk/OKHttpUtils;->d(Lcom/zui/launcher/networksdk/OKHttpUtils;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p1, 0x800

    :try_start_2
    new-array p1, p1, [B

    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    iget-object p1, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$d;->e:Lcom/zui/launcher/networksdk/OKHttpUtils;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$d;->b:Lcom/zui/launcher/networksdk/ResultCallback;

    invoke-static {p1, v0, v2}, Lcom/zui/launcher/networksdk/OKHttpUtils;->b(Lcom/zui/launcher/networksdk/OKHttpUtils;Ljava/lang/Object;Lcom/zui/launcher/networksdk/ResultCallback;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, p1

    goto :goto_4

    :catch_2
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    move-object p2, v1

    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$d;->e:Lcom/zui/launcher/networksdk/OKHttpUtils;

    iget-object v2, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$d;->a:Lokhttp3/Request;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$d;->b:Lcom/zui/launcher/networksdk/ResultCallback;

    invoke-static {v0, v2, p1, p0}, Lcom/zui/launcher/networksdk/OKHttpUtils;->a(Lcom/zui/launcher/networksdk/OKHttpUtils;Lokhttp3/Request;Ljava/lang/Exception;Lcom/zui/launcher/networksdk/ResultCallback;)V

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v1, :cond_3

    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    return-void

    :catchall_2
    move-exception p0

    :goto_3
    move-object p1, p2

    :goto_4
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_5
    throw p0
.end method
