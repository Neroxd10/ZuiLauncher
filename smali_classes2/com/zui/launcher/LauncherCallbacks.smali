.class public interface abstract Lcom/zui/launcher/LauncherCallbacks;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract handleBackPressed()Z
.end method

.method public hide(ZI)V
    .locals 0

    return-void
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onAttachedToWindow()V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDetachedFromWindow()V
.end method

.method public abstract onHomeIntent(Z)V
.end method

.method public abstract onLauncherProviderChange()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onStart()V
.end method

.method public onStateChanged()V
    .locals 0

    return-void
.end method

.method public abstract onStop()V
.end method

.method public abstract onTrimMemory(I)V
.end method

.method public abstract startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)Z
.end method
