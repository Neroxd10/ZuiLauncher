.class Lkotlin/jvm/internal/CallableReference$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/jvm/internal/CallableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.2"
.end annotation


# static fields
.field private static final a:Lkotlin/jvm/internal/CallableReference$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/jvm/internal/CallableReference$a;

    invoke-direct {v0}, Lkotlin/jvm/internal/CallableReference$a;-><init>()V

    sput-object v0, Lkotlin/jvm/internal/CallableReference$a;->a:Lkotlin/jvm/internal/CallableReference$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lkotlin/jvm/internal/CallableReference$a;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/CallableReference$a;->a:Lkotlin/jvm/internal/CallableReference$a;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lkotlin/jvm/internal/CallableReference$a;->a:Lkotlin/jvm/internal/CallableReference$a;

    return-object p0
.end method
