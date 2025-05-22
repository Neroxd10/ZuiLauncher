.class public final synthetic Lcom/zui/launcher/icons/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/icons/ShadowGenerator$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/icons/ShadowGenerator$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/w;->a:Lcom/zui/launcher/icons/ShadowGenerator$Builder;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/w;->a:Lcom/zui/launcher/icons/ShadowGenerator$Builder;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->drawShadow(Landroid/graphics/Canvas;)V

    return-void
.end method
