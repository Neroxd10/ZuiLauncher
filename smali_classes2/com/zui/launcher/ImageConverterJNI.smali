.class public Lcom/zui/launcher/ImageConverterJNI;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static isEnableImageConvert:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "imageconverter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zui/launcher/ImageConverterJNI;->isEnableImageConvert:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zui/launcher/ImageConverterJNI;->isEnableImageConvert:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native argb88882rgb888(II[I[B)I
.end method

.method public final native argb88882yuv420p(II[I[B)I
.end method

.method public final native rgb8882argb8888(II[B[I)I
.end method

.method public final native rgb8882yuv420p(II[B[B)I
.end method

.method public final native yuv420p2argb8888(II[B[I)I
.end method

.method public final native yuv420p2rgb888(II[B[B)I
.end method

.method public final native yuv420sp2argb8888(II[B[I)I
.end method

.method public final native yuv420sp2rgb565(II[B[S)I
.end method

.method public final native yvu420sp2argb8888(II[B[I)I
.end method

.method public final native yvu420sp2rgb565(II[B[S)I
.end method
