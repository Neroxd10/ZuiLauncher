.class public final synthetic Lcom/zui/launcher/graphics/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/graphics/BitmapCreationCheck$b;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/graphics/BitmapCreationCheck$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/graphics/b;->a:Lcom/zui/launcher/graphics/BitmapCreationCheck$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/graphics/b;->a:Lcom/zui/launcher/graphics/BitmapCreationCheck$b;

    invoke-static {p0}, Lcom/zui/launcher/graphics/BitmapCreationCheck;->a(Lcom/zui/launcher/graphics/BitmapCreationCheck$b;)V

    return-void
.end method
