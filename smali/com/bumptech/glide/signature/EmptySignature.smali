.class public final Lcom/bumptech/glide/signature/EmptySignature;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# static fields
.field private static final a:Lcom/bumptech/glide/signature/EmptySignature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/signature/EmptySignature;

    invoke-direct {v0}, Lcom/bumptech/glide/signature/EmptySignature;-><init>()V

    sput-object v0, Lcom/bumptech/glide/signature/EmptySignature;->a:Lcom/bumptech/glide/signature/EmptySignature;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Lcom/bumptech/glide/signature/EmptySignature;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/signature/EmptySignature;->a:Lcom/bumptech/glide/signature/EmptySignature;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EmptySignature"

    return-object p0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
