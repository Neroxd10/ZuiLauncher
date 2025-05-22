.class Lcom/lenovo/lsf/lenovoid/userauth/m;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;

.field final synthetic d:Lcom/lenovo/lsf/lenovoid/userauth/p;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/lenovoid/userauth/p;Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->d:Lcom/lenovo/lsf/lenovoid/userauth/p;

    iput-object p2, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->c:Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->d:Lcom/lenovo/lsf/lenovoid/userauth/p;

    iget-object v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->d:Lcom/lenovo/lsf/lenovoid/userauth/p;

    iget-object v3, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->b:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/lenovo/lsf/lenovoid/UkiInfo;

    invoke-direct {v1}, Lcom/lenovo/lsf/lenovoid/UkiInfo;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "USS-0x1000"

    if-eqz v2, :cond_2

    :goto_0
    invoke-virtual {v1, v3}, Lcom/lenovo/lsf/lenovoid/UkiInfo;->setErrorCode(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->c:Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;

    invoke-interface {p0, v1}, Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;->onResult(Lcom/lenovo/lsf/lenovoid/UkiInfo;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->b:Ljava/lang/String;

    invoke-static {v2, v4, v0}, Lcom/lenovo/lsf/lenovoid/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/lenovoid/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lsf/lenovoid/b/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v0, "USS-0540"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->d:Lcom/lenovo/lsf/lenovoid/userauth/p;

    iget-object v6, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->a:Landroid/content/Context;

    iget-object v7, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->b:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/lenovo/lsf/lenovoid/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/lenovoid/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lsf/lenovoid/b/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v4}, Lcom/lenovo/lsf/lenovoid/UkiInfo;->setErrorCode(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/lsf/lenovoid/userauth/m;->b:Ljava/lang/String;

    new-instance v9, Lcom/lenovo/lsf/lenovoid/b/g;

    invoke-direct {v9}, Lcom/lenovo/lsf/lenovoid/b/g;-><init>()V

    invoke-static {v3}, Lcom/lenovo/lsf/lenovoid/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    const-string v0, "USS-0x0201"

    :goto_2
    invoke-virtual {v9, v0}, Lcom/lenovo/lsf/lenovoid/b/g;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    invoke-static {v3}, Lcom/lenovo/lsf/lenovoid/c/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "https://uss.zui.com/"

    const-string v8, "uki/1.0/getimageinfo"

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v11, "Content-Type"

    const-string v12, "application/x-www-form-urlencoded"

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "deviceidtype"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v6, v11, v12

    const/4 v6, 0x2

    const-string v12, "deviceid"

    aput-object v12, v11, v6

    const/4 v6, 0x3

    aput-object v5, v11, v6

    const/4 v5, 0x4

    const-string v6, "lpsust"

    aput-object v6, v11, v5

    const/4 v5, 0x5

    aput-object v0, v11, v5

    const/4 v0, 0x6

    const-string v5, "realm"

    aput-object v5, v11, v0

    const/4 v0, 0x7

    aput-object v4, v11, v0

    :try_start_0
    sget-object v4, Lcom/lenovo/lsf/lenovoid/b/d;->b:Lcom/lenovo/lsf/lenovoid/b/d;

    move-object v5, v7

    move-object v6, v8

    move-object v7, v11

    move-object v8, v10

    invoke-static/range {v3 .. v8}, Lcom/lenovo/lsf/lenovoid/b/b;->a(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/b/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Lcom/lenovo/lsf/lenovoid/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lsf/lenovoid/b/e;->a()I

    move-result v3
    :try_end_0
    .catch Lcom/lenovo/lsf/lenovoid/b/f; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v4, 0xc8

    const-string v5, "USS-0x0200"

    if-ne v3, v4, :cond_7

    :try_start_1
    invoke-virtual {v0}, Lcom/lenovo/lsf/lenovoid/b/e;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "INFO"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "versionkey"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "uri"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/lenovo/lsf/lenovoid/b/g;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/lenovo/lsf/lenovoid/b/f; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    :try_start_2
    invoke-virtual {v9, v5}, Lcom/lenovo/lsf/lenovoid/b/g;->a(Ljava/lang/String;)V

    const-string v0, "HttpJsonParser"

    const-string v3, "parsePortrait JSONException"

    invoke-static {v0, v3}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-static {v0}, Lcom/lenovo/lsf/lenovoid/b/b;->b(Lcom/lenovo/lsf/lenovoid/b/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v9, v5}, Lcom/lenovo/lsf/lenovoid/b/g;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v9, v0}, Lcom/lenovo/lsf/lenovoid/b/g;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/lenovo/lsf/lenovoid/b/f; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    const-string v0, "USS-0x0203"

    goto/16 :goto_2

    :goto_3
    invoke-virtual {v9}, Lcom/lenovo/lsf/lenovoid/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1, v0}, Lcom/lenovo/lsf/lenovoid/UkiInfo;->setErrorCode(Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-virtual {v2}, Lcom/lenovo/lsf/lenovoid/b/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lenovo/lsf/lenovoid/UkiInfo;->setAlias(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/lenovo/lsf/lenovoid/b/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lenovo/lsf/lenovoid/UkiInfo;->setGender(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/lenovo/lsf/lenovoid/b/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_a

    const-string v2, "HttpUtil"

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accessing image url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_a
    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Lcom/lenovo/lsf/lenovoid/UkiInfo;->setAvatar(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1
.end method
