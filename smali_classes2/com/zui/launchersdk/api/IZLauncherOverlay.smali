.class public interface abstract Lcom/zui/launchersdk/api/IZLauncherOverlay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launchersdk/api/IZLauncherOverlay$Stub;
    }
.end annotation


# virtual methods
.method public abstract closeOverlay(I)V
.end method

.method public abstract endScroll()V
.end method

.method public abstract getVoiceSearchLanguage()Ljava/lang/String;
.end method

.method public abstract isVoiceDetectionRunning()Z
.end method

.method public abstract onActivityStateChanged(I)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onScroll(F)V
.end method

.method public abstract openOverlay(I)V
.end method

.method public abstract reattachOverlay(I)V
.end method

.method public abstract requestVoiceDetection(Z)V
.end method

.method public abstract startScroll()V
.end method

.method public abstract windowAttached(Landroid/os/Bundle;Lcom/zui/launchersdk/api/IZLauncherOverlayCallback;)V
.end method

.method public abstract windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/zui/launchersdk/api/IZLauncherOverlayCallback;II)V
.end method

.method public abstract windowDetached(Z)V
.end method
