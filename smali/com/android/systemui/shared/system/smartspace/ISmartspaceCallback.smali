.class public interface abstract Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback$Stub;,
        Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract getSmartspaceState()Lcom/android/systemui/shared/system/smartspace/SmartspaceState;
.end method

.method public abstract setSelectedPage(I)V
.end method

.method public abstract setVisibility(I)V
.end method
