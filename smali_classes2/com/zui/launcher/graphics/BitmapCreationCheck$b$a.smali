.class Lcom/zui/launcher/graphics/BitmapCreationCheck$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/graphics/BitmapCreationCheck$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field final synthetic b:Lcom/zui/launcher/graphics/BitmapCreationCheck$b;


# direct methods
.method constructor <init>(Lcom/zui/launcher/graphics/BitmapCreationCheck$b;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/graphics/BitmapCreationCheck$b$a;->b:Lcom/zui/launcher/graphics/BitmapCreationCheck$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/graphics/BitmapCreationCheck$b$a;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/graphics/BitmapCreationCheck$b$a;->b:Lcom/zui/launcher/graphics/BitmapCreationCheck$b;

    invoke-static {v0}, Lcom/zui/launcher/graphics/BitmapCreationCheck$b;->a(Lcom/zui/launcher/graphics/BitmapCreationCheck$b;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/launcher/graphics/BitmapCreationCheck$b$a;->a:Landroid/os/Handler;

    invoke-static {v0, p0}, Lcom/zui/launcher/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/graphics/BitmapCreationCheck$b$a;->b:Lcom/zui/launcher/graphics/BitmapCreationCheck$b;

    invoke-static {p0}, Lcom/zui/launcher/graphics/BitmapCreationCheck$b;->a(Lcom/zui/launcher/graphics/BitmapCreationCheck$b;)Ljava/lang/ThreadLocal;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
