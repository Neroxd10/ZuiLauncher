.class public final Lcom/amap/api/col/l3s/ef$a;
.super Lcom/amap/api/col/l3s/ed;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/ef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static g:I = 0x4


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field private h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ed;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/col/l3s/ef$a;->h:[I

    const/4 v0, 0x5

    iput v0, p0, Lcom/amap/api/col/l3s/ef$a;->a:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/amap/api/col/l3s/ef$a;->b:I

    iput v0, p0, Lcom/amap/api/col/l3s/ef$a;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/ef$a;->d:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/amap/api/col/l3s/ef$a;->e:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/amap/api/col/l3s/ef$a;->f:I

    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ef$a;->h:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ef$a;->h:[I

    aget p0, p0, p2

    return p0

    :cond_0
    return p2
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Lcom/amap/api/col/l3s/ef$c;
    .locals 9

    new-instance v0, Lcom/amap/api/col/l3s/ef$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/ef$c;-><init>(B)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3s/ef$a;->a(Z)[I

    move-result-object v5

    iput-object v5, v0, Lcom/amap/api/col/l3s/ef$c;->a:[I

    iget-object v8, v0, Lcom/amap/api/col/l3s/ef$c;->b:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    iget-object v2, v0, Lcom/amap/api/col/l3s/ef$c;->b:[I

    aget v2, v2, v1

    if-gtz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/ef$a;->a(Z)[I

    move-result-object v5

    iput-object v5, v0, Lcom/amap/api/col/l3s/ef$c;->a:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/amap/api/col/l3s/ef$c;->b:[I

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    iget-object p0, v0, Lcom/amap/api/col/l3s/ef$c;->b:[I

    aget p0, p0, v1

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    const/16 v3, 0x3025

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/amap/api/col/l3s/ef$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v4, 0x3026

    invoke-direct {p0, p1, p2, v2, v4}, Lcom/amap/api/col/l3s/ef$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    iget v5, p0, Lcom/amap/api/col/l3s/ef$a;->e:I

    if-lt v3, v5, :cond_0

    iget v3, p0, Lcom/amap/api/col/l3s/ef$a;->f:I

    if-lt v4, v3, :cond_0

    const/16 v3, 0x3024

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/amap/api/col/l3s/ef$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v4, 0x3023

    invoke-direct {p0, p1, p2, v2, v4}, Lcom/amap/api/col/l3s/ef$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    const/16 v5, 0x3022

    invoke-direct {p0, p1, p2, v2, v5}, Lcom/amap/api/col/l3s/ef$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v5

    const/16 v6, 0x3021

    invoke-direct {p0, p1, p2, v2, v6}, Lcom/amap/api/col/l3s/ef$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v6

    iget v7, p0, Lcom/amap/api/col/l3s/ef$a;->a:I

    if-ne v3, v7, :cond_0

    iget v3, p0, Lcom/amap/api/col/l3s/ef$a;->b:I

    if-ne v4, v3, :cond_0

    iget v3, p0, Lcom/amap/api/col/l3s/ef$a;->c:I

    if-ne v5, v3, :cond_0

    iget v3, p0, Lcom/amap/api/col/l3s/ef$a;->d:I

    if-ne v6, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Z)[I
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    iget v1, p0, Lcom/amap/api/col/l3s/ef$a;->a:I

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    iget v1, p0, Lcom/amap/api/col/l3s/ef$a;->b:I

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v0, v1

    iget v1, p0, Lcom/amap/api/col/l3s/ef$a;->c:I

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    iget v1, p0, Lcom/amap/api/col/l3s/ef$a;->d:I

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    iget v1, p0, Lcom/amap/api/col/l3s/ef$a;->e:I

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    iget p0, p0, Lcom/amap/api/col/l3s/ef$a;->f:I

    const/16 v1, 0xb

    aput p0, v0, v1

    const/16 p0, 0xc

    const/16 v1, 0x3032

    aput v1, v0, p0

    const/16 p0, 0xd

    aput p1, v0, p0

    const/16 p0, 0xe

    const/16 p1, 0x3040

    aput p1, v0, p0

    const/16 p0, 0xf

    sget p1, Lcom/amap/api/col/l3s/ef$a;->g:I

    aput p1, v0, p0

    const/16 p0, 0x10

    const/16 p1, 0x3038

    aput p1, v0, p0

    return-object v0
.end method


# virtual methods
.method public final chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/ef$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Lcom/amap/api/col/l3s/ef$c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/amap/api/col/l3s/ef$c;->a:[I

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/amap/api/col/l3s/ef$c;->b:[I

    const/4 v0, 0x0

    aget v1, v6, v0

    new-array v7, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    aget v5, v6, v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-direct {p0, p1, p2, v7}, Lcom/amap/api/col/l3s/ef$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v2, 0x8

    iput v2, p0, Lcom/amap/api/col/l3s/ef$a;->a:I

    iput v2, p0, Lcom/amap/api/col/l3s/ef$a;->b:I

    iput v2, p0, Lcom/amap/api/col/l3s/ef$a;->c:I

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/ef$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Lcom/amap/api/col/l3s/ef$c;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/amap/api/col/l3s/ef$c;->a:[I

    if-eqz v5, :cond_1

    iget-object v8, v2, Lcom/amap/api/col/l3s/ef$c;->b:[I

    aget v1, v8, v0

    new-array v1, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    aget v7, v8, v0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v1

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-direct {p0, p1, p2, v1}, Lcom/amap/api/col/l3s/ef$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
