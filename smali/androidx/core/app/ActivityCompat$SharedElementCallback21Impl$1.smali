.class Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

.field final synthetic val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# direct methods
.method constructor <init>(Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;->this$0:Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

    iput-object p2, p0, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .locals 0

    iget-object p0, p0, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-interface {p0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    return-void
.end method
