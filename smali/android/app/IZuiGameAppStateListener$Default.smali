.class public Landroid/app/IZuiGameAppStateListener$Default;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/IZuiGameAppStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IZuiGameAppStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onGameAppExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onGameAppStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
