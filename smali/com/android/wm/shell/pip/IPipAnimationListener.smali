.class public interface abstract Lcom/android/wm/shell/pip/IPipAnimationListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;,
        Lcom/android/wm/shell/pip/IPipAnimationListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.wm.shell.pip.IPipAnimationListener"


# virtual methods
.method public abstract onPipAnimationStarted()V
.end method

.method public abstract onPipCornerRadiusChanged(I)V
.end method
