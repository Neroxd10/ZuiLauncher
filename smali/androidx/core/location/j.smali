.class public final synthetic Landroidx/core/location/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/j;->a:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iput p2, p0, Landroidx/core/location/j;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/core/location/j;->a:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iget p0, p0, Landroidx/core/location/j;->b:I

    invoke-virtual {v0, p0}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a(I)V

    return-void
.end method
