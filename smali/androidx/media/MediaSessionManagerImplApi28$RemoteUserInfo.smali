.class final Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaSessionManagerImplApi28;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RemoteUserInfo"
.end annotation


# instance fields
.field mObject:Landroid/media/session/MediaSessionManager$RemoteUserInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfo;->mObject:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfo;->mObject:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPid()I
    .locals 0

    iget-object p0, p0, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfo;->mObject:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPid()I

    move-result p0

    return p0
.end method

.method public getUid()I
    .locals 0

    iget-object p0, p0, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfo;->mObject:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result p0

    return p0
.end method
