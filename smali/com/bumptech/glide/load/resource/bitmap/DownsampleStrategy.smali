.class public abstract Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;,
        Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$c;,
        Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$f;,
        Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$b;,
        Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$a;,
        Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$d;,
        Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$e;
    }
.end annotation


# static fields
.field public static final AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

.field public static final AT_MOST:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

.field public static final CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

.field public static final CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

.field public static final DEFAULT:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

.field public static final FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

.field public static final NONE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

.field public static final OPTION:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$e;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$d;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->AT_MOST:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$c;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$f;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->NONE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->DEFAULT:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    invoke-static {v1, v0}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/bumptech/glide/load/Option;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSampleSizeRounding(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
.end method

.method public abstract getScaleFactor(IIII)F
.end method
