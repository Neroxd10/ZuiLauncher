.class public final synthetic Lcom/zui/quickstep/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/fallback/FallbackRecentsView;

.field public final synthetic b:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/fallback/FallbackRecentsView;Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/l;->a:Lcom/zui/quickstep/fallback/FallbackRecentsView;

    iput-object p2, p0, Lcom/zui/quickstep/l;->b:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    iput-boolean p3, p0, Lcom/zui/quickstep/l;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/l;->a:Lcom/zui/quickstep/fallback/FallbackRecentsView;

    iget-object v1, p0, Lcom/zui/quickstep/l;->b:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    iget-boolean p0, p0, Lcom/zui/quickstep/l;->c:Z

    invoke-static {v0, v1, p0}, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;->a(Lcom/zui/quickstep/fallback/FallbackRecentsView;Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;Z)V

    return-void
.end method
