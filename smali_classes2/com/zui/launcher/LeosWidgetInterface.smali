.class public interface abstract Lcom/zui/launcher/LeosWidgetInterface;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract analyzeWidgetWeatherData(Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public canShowConfigureRect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getConfigure()Landroid/content/Intent;
.end method

.method public abstract getScaleToFit()F
.end method

.method public abstract getTranslationForCentering()Landroid/graphics/PointF;
.end method

.method public abstract handleConfigureResult(ZLandroid/content/Intent;)V
.end method

.method public isReconfigurable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setConfigureRect(Z)V
    .locals 0

    return-void
.end method

.method public abstract setConfiguring(Z)V
.end method

.method public abstract setScaleToFit(F)V
.end method

.method public abstract setTimeTextColor(ZZ)V
.end method

.method public abstract setTranslationForCentering(FF)V
.end method

.method public abstract startConfigActivity()V
.end method
