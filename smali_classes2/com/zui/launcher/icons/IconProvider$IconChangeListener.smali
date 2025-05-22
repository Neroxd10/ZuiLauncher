.class public interface abstract Lcom/zui/launcher/icons/IconProvider$IconChangeListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/icons/IconProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IconChangeListener"
.end annotation


# virtual methods
.method public abstract onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract onSystemIconStateChanged(Ljava/lang/String;)V
.end method
