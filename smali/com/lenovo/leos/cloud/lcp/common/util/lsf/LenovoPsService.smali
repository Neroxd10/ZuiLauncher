.class public interface abstract Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$Callback;,
        Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;
    }
.end annotation


# static fields
.field public static final LENOVOUSER_OFFLINE:I = 0x1

.field public static final LENOVOUSER_ONLINE:I = 0x2


# virtual methods
.method public abstract asyncAutoRegisterLogin(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;ZLandroid/os/Bundle;)V
.end method

.method public abstract asyncGetST(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;ZLandroid/os/Bundle;)V
.end method

.method public abstract checkUserPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getLastErrorString()Ljava/lang/String;
.end method

.method public abstract getPhoneNumber()Ljava/lang/String;
.end method

.method public abstract getPhoneNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRegistLogcation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getST(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getServerAddresses(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getServerAddresses(Ljava/lang/String;Ljava/util/Locale;)[Ljava/lang/String;
.end method

.method public abstract getStData(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;Z)V
.end method

.method public abstract getStatus()I
.end method

.method public abstract getStatus(Landroid/content/Context;)I
.end method

.method public abstract getUkiInfo(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$Callback;)V
.end method

.method public abstract getUkiInfo(Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$Callback;)V
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getUserId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getUserId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUserName()Ljava/lang/String;
.end method

.method public abstract getUserName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract isOnline()Z
.end method

.method public abstract showAccountPage(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract showNewUserPasswordNotification(Landroid/content/Context;)V
.end method

.method public abstract showSettingPage(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
.end method
