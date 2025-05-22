.class public interface abstract Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/ActivityControlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityInitListener"
.end annotation


# virtual methods
.method public abstract register()V
.end method

.method public abstract registerAndStartActivity(Landroid/content/Intent;Lcom/zui/quickstep/util/RemoteAnimationProvider;Landroid/content/Context;Landroid/os/Handler;J)V
.end method

.method public abstract unregister()V
.end method
