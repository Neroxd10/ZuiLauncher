.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;
.super Landroidx/core/app/ComponentActivity$ExtraData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaControllerExtraData"
.end annotation


# instance fields
.field private final mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/app/ComponentActivity$ExtraData;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-void
.end method


# virtual methods
.method getMediaController()Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 0

    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object p0
.end method
