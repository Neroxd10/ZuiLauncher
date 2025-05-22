.class public Lcom/zui/timelaweather/util/City;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BUNDLE_KEY_CITY_ID:Ljava/lang/String; = "city_id"

.field public static final BUNDLE_KEY_CITY_NAME:Ljava/lang/String; = "city_name"

.field public static final BUNDLE_KEY_CITY_TIME_ZONE:Ljava/lang/String; = "city_timezone"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/timelaweather/util/City;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/zui/timelaweather/util/City;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/timelaweather/util/City;->c:Ljava/lang/String;

    return-void
.end method

.method public static parseFromBundle(Landroid/os/Bundle;)Lcom/zui/timelaweather/util/City;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "city_id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "city_name"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "city_timezone"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/zui/timelaweather/util/City;

    invoke-direct {v0, v1, v2, p0}, Lcom/zui/timelaweather/util/City;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getCityId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/util/City;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/util/City;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/util/City;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/util/City;->a:Ljava/lang/String;

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/util/City;->b:Ljava/lang/String;

    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/util/City;->c:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cityId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/timelaweather/util/City;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  cityName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/timelaweather/util/City;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timezone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/timelaweather/util/City;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
