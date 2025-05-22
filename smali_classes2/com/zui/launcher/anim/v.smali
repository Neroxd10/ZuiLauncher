.class public final synthetic Lcom/zui/launcher/anim/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/anim/SpringAnimationBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/anim/SpringAnimationBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/anim/v;->a:Lcom/zui/launcher/anim/SpringAnimationBuilder;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/v;->a:Lcom/zui/launcher/anim/SpringAnimationBuilder;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->getInterpolatedValue(F)F

    move-result p0

    return p0
.end method
