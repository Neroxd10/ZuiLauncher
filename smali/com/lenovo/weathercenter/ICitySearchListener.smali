.class public interface abstract Lcom/lenovo/weathercenter/ICitySearchListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/weathercenter/ICitySearchListener$Stub;,
        Lcom/lenovo/weathercenter/ICitySearchListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onSearchResult(ILjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/CityDetail;",
            ">;)V"
        }
    .end annotation
.end method
