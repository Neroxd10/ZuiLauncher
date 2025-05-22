.class public final Lcom/amap/api/col/l3s/hl;
.super Lcom/amap/api/col/l3s/gf;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3s/gf<",
        "Lcom/amap/api/services/geocoder/RegeocodeQuery;",
        "Lcom/amap/api/services/geocoder/RegeocodeAddress;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/geocoder/RegeocodeQuery;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/gf;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "output=json&location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/gm;->a(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/gm;->a(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getPoiType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "&poitype="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getPoiType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getMode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "&mode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getExtensions()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "&extensions="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getExtensions()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "&extensions=base"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&radius="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getRadius()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&coordsys="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getLatLonType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&key="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ge;->h:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Lcom/amap/api/services/geocoder/RegeocodeAddress;
    .locals 3

    new-instance v0, Lcom/amap/api/services/geocoder/RegeocodeAddress;

    invoke-direct {v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "regeocode"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "formatted_address"

    invoke-static {p0, v1}, Lcom/amap/api/col/l3s/gt;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setFormatAddress(Ljava/lang/String;)V

    const-string v1, "addressComponent"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Lcom/amap/api/col/l3s/gt;->a(Lorg/json/JSONObject;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V

    :cond_1
    invoke-static {p0}, Lcom/amap/api/col/l3s/gt;->c(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setPois(Ljava/util/List;)V

    const-string v1, "roads"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1, v0}, Lcom/amap/api/col/l3s/gt;->b(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V

    :cond_2
    const-string v1, "roadinters"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1, v0}, Lcom/amap/api/col/l3s/gt;->a(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V

    :cond_3
    const-string v1, "aois"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0, v0}, Lcom/amap/api/col/l3s/gt;->c(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "ReverseGeocodingHandler"

    const-string v2, "paseJSON"

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/amap/api/col/l3s/hl;->c(Ljava/lang/String;)Lcom/amap/api/services/geocoder/RegeocodeAddress;

    move-result-object p0

    return-object p0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/hl;->a(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected final f()Lcom/amap/api/col/l3s/hh$b;
    .locals 10

    invoke-static {}, Lcom/amap/api/col/l3s/hh;->a()Lcom/amap/api/col/l3s/hh;

    move-result-object v0

    const-string v1, "regeo"

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hh;->a(Ljava/lang/String;)Lcom/amap/api/col/l3s/hi;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/amap/api/col/l3s/hj;

    :goto_0
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/hj;->a()D

    move-result-wide v1

    :cond_1
    move-wide v8, v1

    new-instance v0, Lcom/amap/api/col/l3s/hh$b;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/hh$b;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/hl;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3s/hl;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/core/ServiceSettings;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/l3s/hh$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast v1, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/amap/api/col/l3s/hj$a;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    iget-object p0, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {p0}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v6

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/amap/api/col/l3s/hj$a;-><init>(DDD)V

    iput-object v1, v0, Lcom/amap/api/col/l3s/hh$b;->b:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/col/l3s/gl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/geocode/regeo?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
