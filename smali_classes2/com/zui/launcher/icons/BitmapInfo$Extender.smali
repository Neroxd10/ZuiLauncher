.class public interface abstract Lcom/zui/launcher/icons/BitmapInfo$Extender;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/icons/BitmapInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Extender"
.end annotation


# virtual methods
.method public abstract drawForPersistence(Landroid/graphics/Canvas;)V
.end method

.method public abstract getExtendedInfo(Landroid/graphics/Bitmap;ILcom/zui/launcher/icons/BaseIconFactory;FLandroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;
.end method

.method public abstract getThemedDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method
