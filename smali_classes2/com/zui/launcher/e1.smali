.class public final synthetic Lcom/zui/launcher/e1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/Launcher$u0;

.field public final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/Launcher$u0;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/e1;->a:Lcom/zui/launcher/Launcher$u0;

    iput-object p2, p0, Lcom/zui/launcher/e1;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/e1;->a:Lcom/zui/launcher/Launcher$u0;

    iget-object p0, p0, Lcom/zui/launcher/e1;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/Launcher$u0;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
