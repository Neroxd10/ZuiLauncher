.class interface abstract Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "d"
.end annotation


# static fields
.field public static final a:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/anim/c;->b:Lcom/zui/launcher/anim/c;

    sput-object v0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$d;->a:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$d;

    return-void
.end method

.method public static synthetic a(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    div-float/2addr p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract b(FF)F
.end method
