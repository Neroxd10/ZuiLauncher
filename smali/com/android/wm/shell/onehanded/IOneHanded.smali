.class public interface abstract Lcom/android/wm/shell/onehanded/IOneHanded;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/onehanded/IOneHanded$Stub;,
        Lcom/android/wm/shell/onehanded/IOneHanded$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.wm.shell.onehanded.IOneHanded"


# virtual methods
.method public abstract startOneHanded()V
.end method

.method public abstract stopOneHanded()V
.end method
