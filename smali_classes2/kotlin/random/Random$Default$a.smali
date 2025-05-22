.class final Lkotlin/random/Random$Default$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/random/Random$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/random/Random$Default$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/random/Random$Default$a;

    invoke-direct {v0}, Lkotlin/random/Random$Default$a;-><init>()V

    sput-object v0, Lkotlin/random/Random$Default$a;->INSTANCE:Lkotlin/random/Random$Default$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    return-object p0
.end method
