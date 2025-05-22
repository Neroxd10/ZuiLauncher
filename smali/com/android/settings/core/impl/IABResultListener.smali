.class public interface abstract Lcom/android/settings/core/impl/IABResultListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/core/impl/IABResultListener$Stub;,
        Lcom/android/settings/core/impl/IABResultListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onCompleted(I)V
.end method

.method public abstract onProgress(II)V
.end method
