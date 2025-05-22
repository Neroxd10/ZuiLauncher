.class public Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/icons/cache/BaseIconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheEntry"
.end annotation


# instance fields
.field public bitmap:Lcom/zui/launcher/icons/BitmapInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public contentDescription:Ljava/lang/CharSequence;

.field public originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_INFO:Lcom/zui/launcher/icons/BitmapInfo;

    iput-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    const-string v1, ""

    iput-object v1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    return-void
.end method
