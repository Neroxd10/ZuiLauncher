.class Lcom/zui/launcher/dragndrop/DragLayer$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragLayer;->initOnePageWallpaper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/zui/launcher/dragndrop/DragLayer;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragLayer;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer$f;->b:Lcom/zui/launcher/dragndrop/DragLayer;

    iput-boolean p2, p0, Lcom/zui/launcher/dragndrop/DragLayer$f;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer$f;->b:Lcom/zui/launcher/dragndrop/DragLayer;

    iget-boolean p0, p0, Lcom/zui/launcher/dragndrop/DragLayer$f;->a:Z

    invoke-virtual {v0, p0}, Lcom/zui/launcher/dragndrop/DragLayer;->buildWallpaperCache(Z)V

    return-void
.end method
