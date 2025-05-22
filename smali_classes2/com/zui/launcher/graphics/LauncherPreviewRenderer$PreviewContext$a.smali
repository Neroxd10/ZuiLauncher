.class final Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext$a;
.super Lcom/zui/launcher/icons/LauncherIcons;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic w:Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;


# direct methods
.method private constructor <init>(Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/content/Context;IIIZIZ)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext$a;->w:Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/icons/LauncherIcons;-><init>(Landroid/content/Context;IIIZIZ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/content/Context;IIIZIZLcom/zui/launcher/graphics/LauncherPreviewRenderer$a;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext$a;-><init>(Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/content/Context;IIIZIZ)V

    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext$a;->w:Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-static {v0}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;->a(Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
