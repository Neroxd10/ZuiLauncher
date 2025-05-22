.class public final synthetic Lcom/zui/launcher/anim/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$d;


# instance fields
.field public final synthetic b:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/anim/d;->b:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    iput p2, p0, Lcom/zui/launcher/anim/d;->c:F

    return-void
.end method


# virtual methods
.method public final b(FF)F
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/anim/d;->b:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    iget p0, p0, Lcom/zui/launcher/anim/d;->c:F

    invoke-virtual {v0, p0, p1, p2}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->i(FFF)F

    move-result p0

    return p0
.end method
