.class public final synthetic Lcom/zui/launcher/anim/s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/anim/SpringObjectAnimator;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/anim/SpringObjectAnimator;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/anim/s;->a:Lcom/zui/launcher/anim/SpringObjectAnimator;

    iput p2, p0, Lcom/zui/launcher/anim/s;->b:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/anim/s;->a:Lcom/zui/launcher/anim/SpringObjectAnimator;

    iget p0, p0, Lcom/zui/launcher/anim/s;->b:F

    invoke-virtual {v0, p0}, Lcom/zui/launcher/anim/SpringObjectAnimator;->h(F)V

    return-void
.end method
