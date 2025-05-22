.class public interface abstract Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networksdk/api/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageHandler"
.end annotation


# virtual methods
.method public abstract handlerImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end method

.method public abstract onFailue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onSucess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onUpdata(JJ)V
.end method
